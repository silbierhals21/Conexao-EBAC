            #language:pt

            Funcionalidade: Tela de login
            Como cliente da Ebac-Shop
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a pagina de autenticação da Ebac-Shop

            Cenario: Autenticação valida
            Quando eu inserir meu email "maria.silva@gamil.com"
            E a senha "Maria-123"
            Então deve direcionar para a pagina de checkout e deve exibir a mensagem "Inserir seus dados"

            Cenario: Usuario inexistente
            Quando eu inserir o email "ana.silva@gmail.com"
            E a senha "Maria-123"
            Então deve exibir uma mensagem de alerta: "Usuario inexistente"

            Cenario: Usuario com senha inválida
            Quando eu inserir o email "maria.silva@gamil.com"
            E a senha "Ana-123"
            Então deve exibir uma mensagem de alerta: "Usuario ou senha inválidos"

            Esquema do Cenario: Autenticar multiplos usuarios
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a pagina de checkout e deve exibir a mensagem "Inserir seus dados"

            Exemplos:
            | usuario                   | senha        | mensagem             |
            | "maria.silva@gmail.com"   | "Maria-123"  | "Inserir seus dados" |
            | "felipe.costaa@gmail.com" | "Felipe-123" | "Inserir seus dados" |
            | "roberto.2000@gmail.com"  | "Rob-123"    | "Inserir seus dados" |
            
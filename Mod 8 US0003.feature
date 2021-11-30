            #language:pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da Ebac-Shop
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a pagina de checkout da Ebac-Shop para concluir minha compra

            Cenario: Dados Validos
            Quando inserir meus dados nos campos obrigatorios marcados com asterisco Nome: "Maria" Sobrenome: "Silva" País: "Brasil" Endereço: "Rua das Gaivotas, n.321" Cidade: "Florianópolis- SC" CEP "58000-000" Telefone: "048 99933 2211" E-mail: "Mmria.silva@gmail.com"
            E selecionar uma forma de pagamento "Pagamento na entrega"
            E clicar em Finalizar Compra
            Então deve exibir uma mensagem "Sua compra foi concluida com sucesso"

            Cenario: CEP com formato invalido
            Quando inserir os numeros no campo CEP fora dos padros numericos de 8 digitos "58.oooc-ooo"
            Então deve exibir a mensagem: "CEP invalido"

            Cenario: E-mail com formato invalido
            Quando inserir o e-mail com formato fora dos padrões "maria.silva.gmail.com"
            Então deve exibir a mesagem: "ERRO - E-mail inválido"

            Cenario: Um ou mais campos obrigatorios vazios
            Quando clicar em finalizar compra 
            E um ou mais campos obrigatórios estiverem vazios "Telefone:_______"
            Então deve ixibir a mensagem de alerta: "Campo Telefone é obrigatório"

            Cenario: Forma de pagamento não selecionada
            Quando eu preencher todos os dados corretamente em Detalhes do Faturamento
            E não selecionar a forma de pagamento
            Então deve exibir a mensagem de alerta: "Selecione uma forma de pagamento"

            Esquema do Cenario: Autenticar multiplos dados           
            Quando inserir meus dados nos campos obrigatorios marcados com asterisco <nome> <sobrenome> <pais> <endereco> <cidade> <cep> <telefone> <e-mail>
            E selecionar <pagamento>
            E clicar em finalizar compra
            Então deve exibir uma mensagem "Sua compra foi concluida com sucesso"

            Exemplos:
            | Nome     | Sobrenome   | Pais     | Endereco                   | Cidade          | CEP          | Telefone        | e-mail                    | Pagamento              |
            | "Maria"  | "Silva"     | "Brasil" | "Rua das Gaivotas, n. 321" | "Florianopolis" | "88.000-000" | "048 999884321" | "maria.silva@gmail.com"   | "Pagamento na entrega" |
            | "João"   | "Rodrigues" | "Brasil" | "Rua das Palmeiras, n. 21" | "Fortaleza"     | "33.000-000" | "055 998774321" | "joao.ceara@yahoo.com.br" | "Cheque"               |
            | "Marcos" | "Souza"     | "Brasil" | "Rua dos Papagaios, n. 21" | "São Paulo"     | "55.000-000" | "011 999884321" | "marcos2021@globo.com"    | "Pagamento na entrega" |


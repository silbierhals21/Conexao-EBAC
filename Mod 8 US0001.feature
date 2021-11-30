            #language: pt

            Funcionalidade: Configuraçao de produto
            Como cliente da Ebac-Shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho de compras

            Contexto:
            Dado que eu acesse o site da Ebac-Shop e selecione um produto para compra

            Cenario: Seleção de cor, tamanho e quantidade validos
            Quando eu selecionar a cor "Blue"
            E selecionar o tamanho "L"
            E selecionar a quantidade de "1" item
            E clicar no botão comprar
            Entao o item selecionado deve ir para o carrinho de compra e deve exibir uma mensagem: "Item inserido no carrinho de compra com sucesso"

            Cenario: Não selecionar a cor
            Quando eu selecionar o tamanho "M"
            E selecionar a quantidade de "2" itens
            E clicar no botão comprar
            Então deve exibir uma mensagem de alerta: "Selecione uma cor"

            Cenario: Selecionar duas cores
            Quando eu selecionar a cor "Blue"
            E selecionar a cor "Red"
            Então o sistema deve desabilitar a cor "Blue" e considerar a cor "Red"

            Cenario: Nao selecionar o tamanho
            Quando eu selecionar a cor "Orange"
            E selecionar a quantidade de "3" itens
            E clicar no botão comprar
            Então deve exibir uma mensagem de alerta: "Selecione um tamanho"

            Cenario: Selecionar dois tamanhos
            Quando eu selecionar o tamanho "L"
            E selecionar o tamanho "M"
            Então o sistema deve desabilitar o tamanho "L" e considerar o tamanho "M"

            Cenario: Selecionar quantidade inválida
            Quando eu selecionar a cor "Blue"
            E selecionar o tamanho "L"
            E selecionar a quantidade de "0" item
            E clicar no botão comprar
            Então deve exibir uma mensagem de alerta: "Selecione um numero entre 1 e 10"

            Cenario: Selecionar quantidade inválida
            Quando eu selecionar a cor "Blue"
            E selecionar o tamanho "L"
            E selecionar a quantidade de "-2" itens
            E clicar no botão comprar
            Então deve exibir uma mensagem de alerta: "Selecione um numero entre 1 e 10"

            Cenario: Selecionar quantidade inválida
            Quando eu selecionar a cor "Blue"
            E selecionar o tamanho "L"
            E selecionar a quantidade de "11" itens
            E clicar no botão comprar
            Então deve exibir uma mensagem de alerta: "Selecione um numero entre 1 e 10"

            Esquema do Cenário: Configurar produto para compra
            Quando eu selecionar uma <cor>
            E selecionar um <tamanho>
            E selecionar <quantidade> de itens
            E clicar no botão comprar
            Então o produto especificado deve ir para o carrinho de compras e deve exibir uma <mensagem> de sucesso

            Exemplos:
            | Cor      | Tamanho | Quantidade |
            | "Orange" | "L"     | "1"        |
            | "Blue"   | "M"     | "2"        |
            | "Red"    | "S"     | "3"        |

            
Cenario: Limpar seleções anteriores
Dado que eu tenha configurado meu produto e clicado no botão comprar
Quando eu clicar no botão "Limpar"
Entao o sistema deve limpar as seleções feitas anteriormente e restaurar as configuraçoes originais.


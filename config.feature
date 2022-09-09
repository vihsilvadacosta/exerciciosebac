            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produto da EBAC-SHOP

            Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando selecionar um produto
            E escolher a <cor>, <tamanho> e <quantidade> do produto
            Então deve permitir a finalização da compra

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "p"     | 1          |
            | "laranja"  | "m"     | 2          |
            | "vermelho" | "g"     | 3          |


            Cenário: Limitação de 10 produtos por venda
            Quando inserir 11 produtos no carrinho
            Então deve exibir uma mensagem de alerta "Quantia inválida, por favor retire algum item do carrinho"

            Cenário: Desfazer alterações
            Quando clicar no botão "Limpar"
            Então deve desfazer as alterações realizadas

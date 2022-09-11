            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que estou na tela de checkout da EBAC-SHOP

            Cenário: Cadastro válido
            Quando preencher os campos obrigatórios com dados válidos
            Então deve permitir a finalização da compra

            Esquema do Cenário: Multiplos usuários com e-mail inválido
            Quando preencher o campo e-mail com <email>
            E o campo senha com <senha>
            Então deve exibir a mensagem de alerta <mensagem>
            Exemplos:
            | email               | senha | mensagem                     |
            | vitoria.ebac.com.br | 1234@ | "Formato de e-mail inválido" |
            | julia.ebac.com.br   | 1234@ | "Formato de e-mail inválido" |
            | maria.ebac.com.br   | 1234@ | "Formato de e-mail invãlido" |

            Esquema do Cenário: Não preenchimento dos campos
            Quando nãO preencher os campos obrigatórios
            E tentar finalizar o cadastro
            Então deve exibir a mensagem de alerta "Opss, prencha todos os campos!"
            
            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que estou na tela de checkout da EBAC-SHOP

            Cenário: Cadastro vãlido
            Quando preencher os campos obrigatórios com dados válidos
            Então deve permitir a finalização da compra

            Cenário: E-mail inválido
            Quando preencher o campo e-mail com "vitoria.ebac.com.br"
            Então deve exibir a mensagem de alerta "Formato de e-mail inválido"

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
            Quando preencher o <campo> com <dado>
            E tentar finalizar o cadastro
            Então deve exibir a mensagem de alerta <mensagem>
            Exemplos:
            | campo           | dado | mensagem                    |
            | Nome            | ""   | "Preencha todos os campos!" |
            | Sobrenome       | ""   | "Preencha todos os campos!" |
            | Nome da Empresa | ""   | "Preencha todos os campos!" |
            | Sobrenome       | ""   | "Preencha todos os campos!" |
            | País            | ""   | "Preencha todos os campos!" |
            | Endereço        | ""   | "Preencha todos os campos!" |
            | Cidade          | ""   | "Preencha todos os campos!" |
            | CEP             | ""   | "Preencha todos os campos!" |
            | Telefone        | ""   | "Preencha todos os campos!" |
            | E-mail          | ""   | "Preencha todos os campos!" |



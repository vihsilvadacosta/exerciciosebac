            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que estou na tela de checkout da EBAC-SHOP

            Cenário: Cadastro válido
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
            | campo       | dado | mensagem                    |
            | "nome"      | ""   | "Preencha todos os campos!" |
            | "sobrenome" | ""   | "Preencha todos os campos!" |
            | "empresa"   | ""   | "Preencha todos os campos!" |
            | "pais"      | ""   | "Preencha todos os campos!" |
            | "endereco"  | ""   | "Preencha todos os campos!" |
            | "cidade"    | ""   | "Preencha todos os campos!" |
            | "cep"       | ""   | "Preencha todos os campos!" |
            | "telefone " | ""   | "Preencha todos os campos!" |
            | "email"     | ""   | "Preencha todos os campos!" |



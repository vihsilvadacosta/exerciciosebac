            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que estou na tela de checkout da EBAC-SHOP4

            Cenário: Campos obrigatórios
            Quando preencher os campos obrigatórios
            Então deve permitir a finalização da compra

            Esquema do Cenário: E-mail inválido
            Quando preencher o campo e-mail com <email>
            Então deve exibir a mensagem de alerta <mensagem>

            Esquema do Cenário: Não preenchimento do e-mail
            Quando preencher o campo com <email>
            Então deve exibir a mensagem de alerta <mensagem>
            Exemplos:
            | email            | mensagem                             |
            | "vitoria.com.br" | "Formato de e+mail incorreto!"       |
            | ""               | "Por favor, preencha o campo e-mail" |

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



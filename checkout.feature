            #language: pt

            Funcionalidade: Checkout
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
            Quando preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <tel> e <email>
            E tentar finalizar a compra
            Então deve exibir a mensagem de alerta <mensagem>
            Exemplos:
            | nome    | sobrenome | pais   | endereco           | cidade          | cep      | tel       | email               | mensagem                               |
            | """     | Silva     | Brasil | Rua do Girassol    | São Paulo       | 08531444 | 985470147 | vitoria@ebac.com.br | "Por favor, preencha todos os campos!" |
            | Júlia   | ""        | Brasil | Rua do Capim       | São Paulo       | 08531144 | 947847156 | julia@ebac.com.br   | "Por favor, preencha todos os campos!" |
            | Maria   | Costa     | ""     | Avenida Dom Bosco  | São Paulo       | 08524789 | 978451847 | maria@ebac.com.br   | "Por favor, preencha todos os campos!" |
            | Britney | Oliveira  | Brasil | ""                 | Atibaia         | 07430000 | 947865467 | britney@ebac.com.br | "Por favor, preencha todos os campos!" |
            | Lauren  | Camargo   | Brasil | Avenida Brasil     | ""              | 07434500 | 974866468 | lauren@ebac.com.br  | "Por favor, preencha todos os campos!" |
            | Oliver  | Simas     | Brasil | Rua das Oliveiras  | Atibaia         | ""       | 911470548 | oliver@ebac.com.br  | "Por favor, preencha todos os campos!" |
            | Berlin  | Ribeiro   | Brasil | Bairro Ribeirinhas | Atibaia         | 07498477 | ""        | berlin@ebac.com.br  | "Por favor, preencha todos os campos!" |
            | Mario   | Carlos    | Brasil | Avenida Pinheiros  | Mogi das Cruzes | 08710534 | 978645110 | ""                  | "Por favor, preencha todos os campos!" |

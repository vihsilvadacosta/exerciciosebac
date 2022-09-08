#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: Dado que estou na tela de login da EBAC-SHOP

Cenário: Dados válidos
Quando digitar o e-mail "vitoria@ebac.com.br"
E a senha "1234@"
Então deve redirecionar para a página de checkout

Cenário: Efetuar login com senha incoreta
Quando digitar o e-mail "vitoria@ebac.com.br"
E a senha "545484ff"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Efetuar login com e-mail incorreto
Quando digitar o e-mail "dhfhhfhdfkffi@ebac.com.br"
E a senha "1234@"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"



#language: pt

Funcionalidade: Tela de Login

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: Dado que estou na página de autenticação da EBAC-SHOP

Cenário: Autenticação válida
Quando insiro o e-mail "vitoria@ebac.com.br"
E a senha "1234@"
Então deve redirecionar para a tela de checkout

Cenário: Autenticação inválida
Quando insiro o e-mail "duhudhf@ebac.com.br"
E a senha "1234@"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
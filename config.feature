#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página de produto da EBAC-SHOP

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando selecionar um produto
Então deve permitir a escolha da cor, tamanho e quantidade do produto

Cenário: Limitação de 10 produtos por venda
Quando adicionar um produto ao carrinho
Então deve permitir até 10 produtos por compra 

Cenário: Desfazer alterações
Quando clicar no botão "limpar"
Então deve desfazer as alterações realizadas








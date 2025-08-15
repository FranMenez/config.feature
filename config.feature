#language:pt

Feature: Configurar produto
Como cliente da Ebac-Shop
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher quantidade
Para depois inserir no carrinho


Contexto:
Dado que eu esteja logado como cliente na Ebac-Shop

Cenário: Configurar produto tamanho, cor e quantidade
Quando eu selecionar tamanho e cor
E escolher a quantidade
Então devo conseguir inserir o produto no carrinho


Cenário: Configurar produto com tamanho e quantidade
Quando eu selecionar o tamanho 
E escolher a quantidade
Então deve exibir uma mensagem de alerta para selecionar a cor


Cenário: Configurar produto com cor e quantidade
Quando eu selecionar a cor 
E escolher a quantidade
Então deve exibir uma mensagem de alerta para selecionar o tamanho


Cenário: Configurar produto com tamanho e cor 
Quando eu selecionar o tamanho
E selecionar a cor 
Então deve aparecer uma mensagem de alerta para escolher a quantidade


Cenário: Efetivar a compra 
Quando eu escolher o máximo de 10 produtos 
E finalizar o carrinho 
Então deve ser possível efetivar a compra


Cenário: Não conseguir efetivar a compra
Quando eu escolher mais de 10 produtos 
E finalizar a compra
Então deve aparecer uma mensagem informando que o número máximo de produtos foi ultrapassado


Cenário: Página voltar ao estado inicial
Quando eu configurar um produto 
E clicar no botão limpar
Então devo visualizar a página no estado inicial


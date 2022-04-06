***Settings***
Documentation    Cadastro De Produtos



Library    ../../factories/Produto.py
Resource    ../../routes/Produto.robot

Suite Setup    Set Client Key

***Test Cases***
Cenário 1 - Cadastro de Produto com dados válidos
    
    
    ${produto}          Produto
    ${response}         Enviar Um Produto      ${produto} 


    Status Should Be    201

Cenário 2 - Cadastro de Produto com dados Invalidos

    ${produto_invalido}           Produto
    ${response}        Enviar Um Produto    ${produto_invalido}

    Status Should be  400

Cenário 3 - Cadastro de Produto com email já cadastrado

    ${produto}        Produto
    ${response}       Enviar Um Produto    ${produto}

    Status Should be     400
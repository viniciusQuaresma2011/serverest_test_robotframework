***Settings***
Documentation    Cadastro De Carrinho



Library    ../../factories/Carrinho.py
Resource    ../../routes/Carrinho.robot

Suite Setup    Set Client Key

***Test Cases***
Cenário 1 - Cadastro de carrinho com dados validos
    
    
    ${carrinho}          Carrinho
    ${response}         Enviar Um Carrinho       ${carrinho} 


    Status Should Be    201


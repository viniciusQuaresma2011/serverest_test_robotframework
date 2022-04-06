***Settings***
Documentation    Remocao De Carrinho

Library    ../../factories/Carrinho.py
Resource    ../../routes/Carrinho.robot



Suite Setup    Set Client Key



***Test Cases***
Cenário 1 - Remocao de carrinho 
    
    ${carrinho}          Carrinho
    ${response}         Enviar Um Carrinho           ${carrinho}


    Status Should Be    201
    
    ${response}         Remover Um Carrinho      

    Status Should Be    200


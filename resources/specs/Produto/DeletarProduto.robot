***Settings***
Documentation    Remoção De Produtos



Library    ../../factories/Produto.py
Resource    ../../routes/Produto.robot

Suite Setup    Set Client Key


*** Variables ***
${id_produto}            CkvTRS0ZWuooYgyF


***Test Cases***
Cenário 1 - Remocao de Produto 
    
   
    ${response}         Remover Um Produto      ${id_produto} 


    Status Should Be    200


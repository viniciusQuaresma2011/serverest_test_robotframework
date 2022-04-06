*** Settings ***
Documentation        Consulta Carrinho

Resource    ../../routes/Carrinho.robot
Library    ../../factories/Carrinho.py

Library       ../../factories/Produto.py
Resource    ../../routes/Produto.robot

Suite Setup    Set Client Key    

*** Variables ***

${quantidade}        1

${produto_1_id}        K6leHdftCeOJj8BJ
${quantidade_produto_1}    2
${preco_unitario_1}        470

${produto_2_id}        DED3TTJYXpRuQsTC
${quantidade_produto_2}    1
${preco_unitario_2}        5240

${preco_total}        6180
${quantidade_total}    3

${id_carrinho}     qbMqntef4iTOwWfg
${id_usuario}      oUb7aGkMtSEPf6BZ



*** Test Cases ***
Cenario 1 - Buscar Carrinho pelo Id 
    
    

    ${produto}          Produto

    ${response}         Remover Um Produto        ${produto_1_id}  
    #${response}         Enviar Um Produto       ${produto} 
    
    Status Should Be    201

    ${carrinho}          Carrinho
    ${response}         Enviar Um Carrinho       ${carrinho} 


    Status Should Be    201
    


    
    ${response}            Retornar Carrinho Pelo Id     ${response.json()['_id']}   



    Status Should Be       200
    
    #Vericação do produto 1
    Should Be Equal As Strings    ${produto_1_id}        ${response.json()['produtos'][0]['idProduto']}
    Should Be Equal As Integers    ${quantidade_produto_1}        ${response.json()['produtos'][0]['quantidade']}
    Should Be Equal As Integers    ${preco_unitario_1}        ${response.json()['produtos'][0]['precoUnitario']}
    

    #Vericação do produto 2
    Should Be Equal As Strings    ${produto_2_id}        ${response.json()['produtos'][1]['idProduto']}
    Should Be Equal As Integers    ${quantidade_produto_2}        ${response.json()['produtos'][1]['quantidade']}
    Should Be Equal As Integers    ${preco_unitario_2}        ${response.json()['produtos'][1]['precoUnitario']}


    Should Be Equal As Integers    ${preco_total}    ${response.json()['precoTotal']}
    Should Be Equal As Integers    ${quantidade_total}    ${response.json()['quantidadeTotal']}
    
    Should Be Equal As Strings    ${id_usuario}    ${response.json()['idUsuario']}

    Should Be Equal As Strings    ${id_carrinho}    ${response.json()['_id']}

   
  







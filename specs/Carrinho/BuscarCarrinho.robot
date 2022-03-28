*** Settings ***
Documentation        Consulta Carrinho

Resource    ../../routes/Carrinho.robot
Library    ../../factories/Carrinho.py

*** Variables ***
${base_url}    https://serverest.dev


${quantidade}        1

${produto_1_id}        BeeJh5lz3k6kSIzA
${quantidade_produto_1}    2
${preco_unitario_1}        470

${produto_2_id}        K6leHdftCeOJj8BJ
${quantidade_produto_2}    1
${preco_unitario_2}        5240

${preco_total}        6180
${quantidade_total}    3

${id_carrinho}     qbMqntef4iTOwWfg
${id_usuario}      oUb7aGkMtSEPf6BZ



*** Test Cases ***
Cenario 1 - Buscar Carrinho pelo Id 
    
    ${response}            Retornar Carrinho Pelo Id     ${id_carrinho}   



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

   
  







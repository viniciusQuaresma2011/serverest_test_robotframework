*** Settings ***
Documentation        Consulta produto

Resource    ../../routes/Produto.robot
Library    ../../factories/Produto.py

*** Variables ***
${base_url}    https://serverest.dev
${id_produto}     BeeJh5lz3k6kSIzA      

*** Test Cases ***
Cenario 1 - Buscar Produto pelo Id 
    
    ${response}            Retornar Produto Pelo Id     ${id_produto}   
    Status Should Be       200







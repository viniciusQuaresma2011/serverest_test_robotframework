*** Settings ***
Documentation        Consulta usuario

Resource    ../../routes/Usuario.robot
Library    ../../factories/Usuario.py

*** Variables ***
${id_usuario}     Y94Rq18QsfeCzusk      

*** Test Cases ***
Cenario 1 - Buscar Usuario pelo Id 
    
    ${response}            Retornar Usuario Pelo Id     ${id_usuario}   
    Status Should Be       200

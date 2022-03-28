*** Settings ***
Documentation        Consulta usuario

Resource    ../../routes/Usuario.robot
Library    ../../factories/Usuario.py

*** Variables ***
${base_url}    https://serverest.dev
${id_usuario}     0uxuPY0cbmQhpEz1      

*** Test Cases ***
Cenario 1 - Buscar Usuario pelo Id 
    
    ${response}            Retornar Usuario Pelo Id     ${id_usuario}   
    Status Should Be       200

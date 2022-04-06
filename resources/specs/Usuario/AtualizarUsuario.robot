*Settings*
Documentation    Atualizar  Usuario


Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot


Suite Setup    Set Client Key    



*Test Cases*
Cenario 1 - Deve Atualizar Um Usuario Com Dados Válidos
    
    
    ${usuario_atualizacao}            Usuario
    ${response}             Atualizar Um Usuario       ${usuario_atualizacao}          


    Status Should Be    200

Cenario 2 - Deve Atualizar Um Usuario Com Dados InVálidos

    ${usuario_atualizacao_invalido}               Usuario
    ${response}         Atualizar Um Usuario    ${usuario_atualizacao_invalido} 


    Status Should Be    400

Cenario 3 - Deve Atualizar Um Usuario Com Dados Já Registrados

    ${usuario}          Usuario
    ${response}         Atualizar Um Usuario   ${usuario} 


    Status Should Be    400



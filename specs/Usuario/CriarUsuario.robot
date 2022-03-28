***Settings***
Documentation    Cadastro De Usuarios



Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot



***Test Cases***
Cenário 1 - Cadastro de Usuario realizado com sucesso
    
    
    ${usuario}          Usuario
    ${response}         Enviar Um Usuario       ${usuario} 


    Status Should Be    201

Cenário 2 - Cadastro de Usuario com dados Invalidos

    ${usuario_invalido}           Usuario
    ${response}        Enviar Um Usuario    ${usuario_invalido}

    Status Should be  400

Cenário 3 - Cadastro de Usuario com email já cadastrado

    ${usuario}        Usuario
    ${response}       Enviar Um Usuario    ${usuario}

    Status Should be     400
***Settings***
Documentation    Remoção De Usuário



Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot

Suite Setup    Set Client Key


*** Variables ***
${id_usuario}            0uxuPY0cbmQhpEz1


***Test Cases***
Cenário 1 - Remocao de Usuário 
    
   
    ${response}         Remover Um Usuario      ${id_usuario} 


    Status Should Be    200


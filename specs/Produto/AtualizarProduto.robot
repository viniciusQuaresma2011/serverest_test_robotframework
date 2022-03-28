*Settings*
Documentation    Atualizar  Produto


Library     ../../factories/Produto.py
Resource    ../../routes/Produto.robot


Suite Setup    Set Client Key    

***Variables***
${teste}    ysmxmA7vaLFU0p1Q

*Test Cases*
Cenario 1 - Deve Atualizar Um Produto Com Dados Válidos
    
    
                     
    ${produto_atualizacao}            Produto
    ${response}             Atualizar Um Produto       ${produto_atualizacao}     ${teste}      


    Status Should Be    200

Cenario 2 - Deve Atualizar Um Produto Com Dados InVálidos

    ${produto_invalido}               Produto
    ${response}         Atualizar Um Produto    ${produto_invalido}     ${teste}


    Status Should Be    409

Cenario 3 - Deve Atualizar Um Produto Com Dados Já Registrados

    ${produto}          Produto
    ${response}         Atualizar Um Produto   ${produto}         ${teste}


    Status Should Be    409



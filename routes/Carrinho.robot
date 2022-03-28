*Settings*
Documentation           Operacoes com Carrinho

Resource         ../base/Base.robot


**Variables**
${API_URL}          https://serverest.dev


***Keywords***
Enviar Um Carrinho
    [Arguments]     ${payload}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/carrinhos
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any


    [return]        ${response}


Retornar Carrinho Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/carrinhos/${payload}
    [return]       ${response}
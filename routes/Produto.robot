*Settings*
Documentation           Operacoes com Produto

Resource         ../base/Base.robot


**Variables**
${API_URL}          https://serverest.dev



***Keywords***


Autenticar Um Usuario
    [Arguments]     ${payload}


    ${response}    POST 
        ...            ${API_URL}/login
        ...            json=${payload}
        ...            expected_status=any


    [return]        ${response}


Retornar Produto Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/produtos/${payload}
    [return]       ${response}

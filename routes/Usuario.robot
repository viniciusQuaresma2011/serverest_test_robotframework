*Settings*
Documentation           Operacoes com Usuarios

Resource         ../base/Base.robot


**Variables**
${API_URL}          https://serverest.dev



***Keywords***
Enviar Um Usuario
    [Arguments]     ${payload}


    ${response}        POST 
        ...            ${API_URL}/usuarios
        ...            json=${payload}
        ...            expected_status=any


    [return]        ${response}


Retornar Usuario Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/usuarios/${payload}
    [return]       ${response}    
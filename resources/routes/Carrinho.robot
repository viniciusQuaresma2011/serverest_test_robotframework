*Settings*
Documentation           Operacoes com Carrinho

Resource         ../base/Base.robot


**Variables**
${API_URL}          https://serverest.dev/


***Keywords***
Retornar Carrinho Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/carrinhos/${payload}
    [return]       ${response}

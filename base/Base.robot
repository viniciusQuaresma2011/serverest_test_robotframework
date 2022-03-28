*Settings*
Documentation           inicio

Library         RequestsLibrary


Library        JSONLibrary
Library        Collections




*Variables*
${API_URL}          https://serverest.dev
${bearerToken}      Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0ZTFAZ21haWwuY29tIiwiaXNzIjoibG9jYWxob3N0OjgwODAiLCJpYXQiOjE2NDY4NDM1MzQsImV4cCI6MTY0Njg0NTMzNH0.H03ABmn70GvzV7f9fL7Ba7DVR0w96xXNC7rOyNfZiblHVnFLljS9z6QQWipN9B6KAS79ZuWh0eKEZZo4kq9tvQ

     

*Keywords*
Set Client Key
    
    &{teste}        Create Dictionary        email=fulano@qa.com     password=teste

    ${response}     POST
    ...             ${API_URL}/login 
    ...             json=${teste}

    ${token}    Set Variable     ${response.json()["authorization"]}
    
    Set Suite Variable          ${token}




  
Enviar Um Produto
    [Arguments]     ${payload}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/produtos
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}


Atualizar Um Produto
    [Arguments]     ${payload}     ${teste}       

   
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}


    ${response}        PUT 
        ...            ${API_URL}/produtos/${teste}
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}


Atualizar Um Usuario
    [Arguments]     ${payload}    
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        PUT 
        ...            ${API_URL}/usuarios/MKS1u6phdhBA1NgY
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}






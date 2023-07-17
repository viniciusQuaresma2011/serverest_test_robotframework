*Settings*
Documentation           inicio

Library         RequestsLibrary


Library        JSONLibrary
Library        Collections




*Variables*
${API_URL}          https://serverest.dev/

     

*Keywords*
Set Client Key
    
    &{teste}        Create Dictionary        email=larai1@qa.com.br     password=teste

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


Remover Um Produto
    [Arguments]     ${payload}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        DELETE 
        ...            ${API_URL}/produtos/${payload}
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



Enviar Um Carrinho
    [Arguments]     ${payload}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/carrinhos
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any


    [return]        ${response}




Remover Um Carrinho
    [Arguments]     
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        DELETE 
        ...            ${API_URL}/carrinhos/cancelar-compra
        ...            headers=${tokenzinho}
        ...            expected_status=any


    [return]        ${response}




Deletar Um Produto
    [Arguments]         ${payload}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/carrinhos
        ...            json=${payload}
        ...            headers=${tokenzinho}
        ...            expected_status=any


    [return]        ${response}



Remover Um Usuario
    [Arguments]     ${id_usuario}
    
    &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        DELETE 
        ...            ${API_URL}/usuarios/${id_usuario}
        ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}

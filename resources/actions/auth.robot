*** Settings ***
Documentation           Ações de autorização

*** Keywords ***
Go To Login Page
    Go To       https://bodytest-web-gus.herokuapp.com/

Login With
    [Arguments]         ${email}        ${senha}
    Fill Text       css=input[name=email]       ${email} 
    Fill Text       css=input[name=password]    ${senha}
    Click           text=Entrar    
    


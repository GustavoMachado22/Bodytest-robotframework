***Settings***
Documentation       Suite de testes de Login do Administrador

Resource           ${EXECDIR}/resources/base.robot

Suite Setup        Start Browser Session

***Test Cases***
Login Administrador
    [tags]      admin 
    Go To Login Page
    Login With                      admin@bodytest.com    pwd123
    User Should Be Logged In        Administrador
    [Teardown]  LocalStorage Clear 

Senha inválida
    Go To Login Page
    Login With                      admin@bodytest.com    abc123
    Toaster Text Should Be          Usuário e/ou senha inválidos.

Email não registrado
    Go To Login Page
    Login With                      ze@bodytest.com    abc123
    Toaster Text Should Be          Usuário e/ou senha inválidos.    

Email inválido
    Go To Login Page
    Login With                      admin*bodytest.com    pwd123
    Alert Text Should Be            Informe um e-mail válido

Senha não informada
    Go To Login Page
    Login With                      admin@bodytest.com    ${EMPTY}
    Alert Text Should Be            A senha é obrigatória  

Email não informado
    Go To Login Page
    Login With                      ${EMPTY}   pwd123
    Alert Text Should Be            O e-mail é obrigatório     

Email e senha obrigatório
    Go To Login Page
    Login With                      ${EMPTY}   ${EMPTY} 
    Alert Text Should Be            O e-mail é obrigatório   
    Alert Text Should Be            A senha é obrigatória  
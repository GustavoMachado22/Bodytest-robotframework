*** Settings ***
Documentation    Cadastro de alunos

Resource       ${EXECDIR}/resources/base.robot
Suite Setup    Start Admin Session      ${TYPE}    ${BROWSER}   

*** Test Cases ***
Novo Aluno
    &{student}    Create Dictionary    name=Gabi Gol    email=gabigol@flamengo.com    age=25    weight=75    feet_tall=1.78    

    Remove Student            ${student.email} 
    Go To Students
    Go To Form Students
    New Student               ${student} 
    Toaster Text Should Be    Aluno cadastrado com sucesso.

Email não pode ser duplicado
    &{student}    Create Dictionary    name=Bruno Henrique    email=bh@flamengo.com    age=31    weight=74    feet_tall=1.84    

    Insert Student            ${student} 
    Go To Students
    Go To Form Students
    New Student               ${student} 
    Toaster Text Should Be    Email já existe no sistema.

Todos os campos são obrigatórios
    @{expected_alerts}    Set Variable    Nome é obrigatório    O e-mail é obrigatório    idade é obrigatória    o peso é obrigatório    a Altura é obrigatória 
    @{got_alerts}         Create List     

    Go To Students
    Go To Form Students
    Submit Student Form

    FOR               ${index}               IN RANGE    1    6
    ${span}           Get Required Alerts    ${index}    
    Append To List    ${got_alerts}          ${span} 
    END

    Log     ${expected_alerts}
    Log     ${got_alerts}

    Lists Should Be Equal    ${expected_alerts}    ${got_alerts}

Validar tipo numérico 
    [Template]      Check Type Field On Student Form
    ${AGE_FIELD}              number
    ${WEIGHT_FIELD}           number
    ${FEET_TALL_FIELD}        number

Validar tipo email
    [Template]      Check Type Field On Student Form
    ${EMAIL_FIELD}            email

Menor de 14 anos não pode fazer cadastrado
    &{student}    Create Dictionary    name=Lazaro    email=lazaro@flamengo.com    age=13    weight=50    feet_tall=1.65    

    Go To Students
    Go To Form Students
    New Student                 ${student}
    Alert Text Should Be        A idade deve ser maior ou igual 14 anos      

*** Keywords ***
Check Type Field On Student Form
    [Arguments]     ${element}      ${type}

    Go To Students
    Go To Form Students
    Field Should Be Type         ${element}      ${type}
*** Settings ***
Documentation    Buscar alunos

Resource       ${EXECDIR}/resources/base.robot
Suite Setup    Start Admin Session      ${TYPE}    ${BROWSER}   

*** Test Cases ***
Busca exata
    &{student}    Create Dictionary    name=Pedro    email=pedro@flamengo.com    age=24    weight=80    feet_tall=1.85    

    Insert Student                      ${student} 
    Go To Students
    Search Student By Name              ${student.name}
    Student Name Should Be Visible      ${student.name} 
    Total Itens Should Be               1

Registro não encontrado
    ${name}         Set Variable        Jorge Jesus
    Remove Student By Name              ${name} 
    Go To Students
    Search Student By Name              ${name}
    Registre Should Not Be Found

Busca alunos por um único termo
    ${fixture}      Get JSON            students_search.json
    ${students}     Set Variable        ${fixture['students']}
    ${name}         Set Variable        ${fixture['word']}
    ${total}        Set Variable        ${fixture['total']}

    Remove Student By Name              ${name} 
    FOR     ${item}     IN      @{students}
        Insert Student          ${item}
    END  

    Go To Students
    Search Student By Name      ${name}

    FOR     ${item}     IN      @{students}
        Student Name Should Be Visible      ${item['name']}
    END  
    Total Itens Should Be               ${total}



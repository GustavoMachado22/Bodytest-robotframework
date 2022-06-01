*** Settings ***
Documentation    Atualizar Alunos

Resource       ${EXECDIR}/resources/base.robot
Suite Setup    Start Admin Session


*** Test Cases ***
Atualizar um aluno já cadastrado

    ${fixture}    Get JSON    students_update.json

    ${gustavohenrique}    Set Variable    ${fixture['before']}
    ${rodrigocaio}        Set Variable    ${fixture['after']}

    Remove Student By Name            ${gustavohenrique['name']}
    Remove Student By Name            ${rodrigocaio['name']} 
    Insert Student                    ${gustavohenrique}               
    Go To Students
    Search Student By Name            ${gustavohenrique['name']}
    Go To Student Update Form         ${gustavohenrique['email']}      
    Update A Student                  ${rodrigocaio}
    Toaster Text Should Be            Aluno atualizado com sucesso.


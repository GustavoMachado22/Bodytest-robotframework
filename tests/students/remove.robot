*** Settings ***
Documentation    Remover Alunos

Resource       ${EXECDIR}/resources/base.robot
Suite Setup      Start Admin Session      ${TYPE}    ${BROWSER}  

*** Test Cases ***
Remover aluno cadastrado
    &{student}    Create Dictionary    name=Everton Ribeiro    email=e.ribeiro@flamengo.com    age=33    weight=69    feet_tall=1.74   

    Remove Student By Name          ${student.name}
    Insert Student                  ${student} 
    Go To Students
    Search Student By Name          ${student.name}
    Request Removal By Email        ${student.email}
    Confirm Removal
    Toaster Text Should Be          Aluno removido com sucesso.
    Student Should Not Visible      ${student.email}

Desistir da exclusão
    &{student}    Create Dictionary    name=David Luiz    email=david.luiz@flamengo.com    age=35    weight=86    feet_tall=1.89   

    Remove Student By Name          ${student.name}
    Insert Student                  ${student} 
    Go To Students
    Search Student By Name          ${student.name}
    Request Removal By Email        ${student.email}
    Cancel Removal
    Student Should Be Visible       ${student.email}


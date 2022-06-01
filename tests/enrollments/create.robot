*** Settings ***
Documentation    Gestão de Matrículas

Resource       ${EXECDIR}/resources/base.robot
Suite Setup    Start Admin Session


*** Test Cases ***
Deve exibir data inicial e final conforme o plano escolhido
    ${fixture}      Get JSON            enroll_dates.json
    ${arrasca}      Set Variable        ${fixture['student']}
    ${black}        Set Variable        ${fixture['plan']}

    Insert Student              ${arrasca}
    Insert Plan                 ${black} 
    Go To Enrolls
    Go To Form Enrolls
    Select Student              ${arrasca['name']}  
    Select Plan                 ${black['title']} 
    Start Date Should Today
    End Date Should Be          ${fixture['days']}

Deve matricular um aluno em um plano
    ${fixture}          Get JSON            enroll_dates.json
    ${filipe_luis}      Set Variable        ${fixture['student']}
    ${fit}              Set Variable        ${fixture['plan']}

    Insert Student          ${filipe_luis} 
    Insert Plan             ${fit}  
    Go To Enrolls
    Go To Form Enrolls
    Select Student          ${filipe_luis['name']}  
    Select Plan             ${fit['title']} 
    Submit Enrolls Form
    Toaster Text Should Be      Matrícula cadastrada com sucesso

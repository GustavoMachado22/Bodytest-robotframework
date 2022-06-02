*** Settings ***
Documentation    Cadastro de planos

Resource       ${EXECDIR}/resources/base.robot
Suite Setup    Start Admin Session      ${TYPE}    ${BROWSER}   

*** Test Cases ***
Calcular preço total do plano
    &{plan}     Create Dictionary      title=Pacote Anual      duration=12     price=19,99     total=R$ 239,88

    Go To Plans
    Go To Form Plan
    Fill Plan Form      ${plan}
    Total Plan Should Be        ${plan.total}
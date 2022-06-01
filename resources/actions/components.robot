*** Settings ***
Documentation       Ações de componentes genéricos

*** Keywords ***
## Validations
Toaster Text Should Be
    [Arguments]         ${expect_text}
    Wait For Elements State      css=.Toastify__toast-body >> text=${expect_text}   visible     5

Alert Text Should Be
    [Arguments]         ${expect_text}
    Wait For Elements State     css=form span >> text=${expect_text}  visible     5  

Field Should Be Type
    [Arguments]         ${element}      ${type}
    ${attr}     Get Attribute           ${element}     type
    Should Be Equal     ${attr}     ${type}

Registre Should Not Be Found
    Wait For Elements State             css=div >> text=Nenhum registro encontrado.
    Wait For Elements State             css=table       detached        5

Total Itens Should Be
    [Arguments]     ${number}
    ${element}      Set Variable       css=#pagination .total
    Wait For Elements State         ${element}      visible     5      
    
## Return Elements & Texts
Get Required Alerts
    [Arguments]         ${index}
    ${span}     Get Text    xpath=(//form//span)[${index}]
    [Return]        ${span}


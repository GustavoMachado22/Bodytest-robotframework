*** Settings ***
Documentation          Ações da funcionalidade de gestão de matrículas 

*** Keywords ***
## Forms
Select Student
    [Arguments]         ${name}

    Fill Text           css=input[aria-label=student_id]        ${name}
    Click               css=div[id*=option] >> text=${name}

Select Plan
    [Arguments]         ${title}

    Fill Text           css=input[aria-label=plan_id]        ${title}
    Click               css=div[id*=option] >> text=${title}    

Submit Enrolls Form
    Click               css=button[form=formEnrollment]

## Links & Buttons
Go To Form Enrolls
    Click                      css=a[href$="matriculas/new"]
    Wait For Elements State    css=h1 >> text=Nova matrícula    visible    5


## Validations
Start Date Should Today
    ${start_date}         Get Current Date        result_format=%d/%m/%Y
    Get Attribute         css=input[name=start_date]      value       equal     ${start_date}

End Date Should Be
    [Arguments]     ${days}
    ${current_date}       Get Current Date    
    ${end_date}           Add Time To Date     ${current_date}        ${days} days     result_format=%d/%m/%Y
    Get Attribute         css=input[name=end_date]        value       equal     ${end_date} 

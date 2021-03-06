*** Settings ***
Library     Browser
Library     libs/DeloreanLibrary.py
Library     Collections
Library     OperatingSystem
Library     DateTime

Resource    actions/auth.robot
Resource    actions/components.robot
Resource    actions/enrolls.robot
Resource    actions/nav.robot
Resource    actions/plans.robot
Resource    actions/students.robot

*** Variables ***
${TYPE}         %{TYPE}
${BROWSER}      %{BROWSER}

*** Keywords ***
Start Browser Session
    [Arguments]     ${env}=headless     ${browser}=chromium
    run keyword if  '${env}'=='headless'  New Browser     ${BROWSER}      true
    ...  ELSE IF    '${env}'=='local'     New Browser     ${BROWSER}      false
    New Page        about:blank

Start Admin Session
    [Arguments]     ${TYPE}     ${BROWSER}
    Start Browser Session       ${TYPE}     ${BROWSER}       
    Go To Login Page
    Login With                  admin@bodytest.com    pwd456
    User Should Be Logged In    Administrador

### Helpers
Get JSON 
    [Arguments]     ${file_name}
    ${file}=            Get File        ${EXECDIR}/resources/fixtures/${file_name}
    ${json_object}      Evaluate        json.loads($file)       json
    [Return]        ${json_object} 

  Start Browser Session   
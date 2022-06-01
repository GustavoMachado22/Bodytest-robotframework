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


*** Keywords ***
Start Browser Session
    New Browser     chromium    true
    New Page        about:blank

Start Admin Session
    Start Browser Session
    Go To Login Page
    Login With                  admin@bodytest.com    pwd123
    User Should Be Logged In    Administrador

### Helpers

Get JSON 
    [Arguments]     ${file_name}
    ${file}=            Get File        ${EXECDIR}/resources/fixtures/${file_name}
    ${json_object}      Evaluate        json.loads($file)       json
    [Return]        ${json_object} 

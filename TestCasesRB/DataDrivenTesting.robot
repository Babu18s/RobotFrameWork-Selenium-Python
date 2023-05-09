*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/DataDrivenResources.robot
Suite Setup  open my browser
Suite Teardown   Close browsers
Test Template  Invalid Login
*** Test Cases ***              username         password
valid user Empty password       tomsmith        ${EMPTY}
valid user invalid password     tomsmith        abbccd
invalid user Empty password     raja            ${EMPTY}
invalid user invalid password   rajakiller      raniqueen
invalid user valid password     theking         SuperSecretPassword!
*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    open Log in Page
    Input UserName     ${username}
    Input Password     ${password}
    Login Button
    Error message should be present

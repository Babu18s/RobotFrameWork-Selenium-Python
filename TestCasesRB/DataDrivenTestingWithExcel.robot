*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/DataDrivenResources.robot
Library     DataDriver   ../TestData/Book 1.xlsx   sheet_name=Sheet1
Suite Setup  open my browser
Suite Teardown   Close browsers
Test Template  Invalid Login
*** Test Cases ***
loginwithexcel using ${username}    and   ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    open Log in Page
    Input UserName     ${username}
    Input Password     ${password}
    Login Button
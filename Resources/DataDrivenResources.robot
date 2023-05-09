*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/
${BROWSER}        Chrome


*** Keywords ***
open my browser
    open browser    ${LOGIN URL}     ${BROWSER}
    maximize browser window
Close browsers
    close all browsers
open Log in Page
    go to    ${LOGIN URL}
    click link     Form Authentication

Input UserName
    [Arguments]    ${Username}
    input text    id:username      ${Username}
Input Password
    [Arguments]    ${password}
    input text    id:password      ${password}
Login Button
    click button      Login
Logout Button
    click Link    Logout
Error message should be present
    page should contain     invalid!
SecureArea should be displayed
    page should contain     Secure Area


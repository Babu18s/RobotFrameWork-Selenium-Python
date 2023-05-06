*** Settings ***
Library    SeleniumLibrary
Documentation      RobotFrameWork by RaviBabu.
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating InputsLink
    Open Browser To Validate
    InputsLink
    Input Username  20
    Input TextField    RajaRavi
    Input Password    RaniDevi
    Input DateField    20/04/2023
    displaybutton





*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing       #Page Title Validation


Input Username
    [Arguments]    ${username}
    Input Text    input-number    ${username}

Input TextField
    [Arguments]    ${testtext}
    Input Text    input-text    ${testtext}

Input Password
    [Arguments]    ${password}
    Input Text    input-password    ${password}

Input DateField
    [Arguments]    ${date}
    Input Text    input-date    ${date}

InputsLink
    Click Link    Inputs
DisplayButton
    Click Button    Display Inputs
    sleep    5
    Click Button    Clear Inputs


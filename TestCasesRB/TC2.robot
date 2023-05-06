*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating InputsLink
    Open Browser To Validate
    Submit Credentials
    Input Username  20
    Input TextField    RajaRavi
    Input Password    RaniDevi
    Input DateField    20/04/2023

Validating RadioButtons
    open browser to validate
    click on radiobuttonlinks

Validating CheckBoxes
    open browser to validate
    Scrolling using JsExecutor
    click on checkbox
Validating DropDown
    open browser to validate
    scrolling using jsexecutor
    click on dropdown
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing


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

Submit Credentials
    Click Link    Inputs

Click On RadioButtonLinks
    Click Link  Radio Buttons
    Select radio button    color    black
Click On CheckBox
#    sleep   2
##    scroll element into view    xpath://input[@id='checkbox1']
#    execute javascript    window.scrollTo(0,1500)
##    wait until page contains    Check Boxes
#    sleep   2
    Click Link    Check Boxes
    Select check box    checkbox1
    Unselect check box    checkbox2
Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,1690)
    sleep   2
Click on DropDown
#    sleep   2
#    execute javascript    window.scrollTo(0,1690)
#    sleep   2
    Click Link    Dropdown List
    Select from list by label   dropdown    Option 2
    sleep   2
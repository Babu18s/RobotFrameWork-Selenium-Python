*** Settings ***
Documentation     RobotFrameWork by RaviBabu.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating AlertsPopUP
    Open Browser To Validate
    Scrolling using JsExecutor
    AlertsPop-Up
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

AlertsPop-Up
    Click Link     JavaScript Dialogs

    Click Button    Js Alert
#    ${messageofJSalert}=    Handle alert
    ${messageofJSalert}=    Handle Alert    accept
    Sleep    2
    ${Js alert}=      Get text     xpath://label[text()='Dialog Response:']/following-sibling::p
    log to console      ${messageofJSalert}     #It will print the text inside the
    log to console    the alert message Responce is: ${Js alert}

    Click button    Js Confirm
    ${messageJsComfirm}=    Handle Alert    dismiss
    Sleep    2
    ${Js Confirm}=    Get text     xpath://label[text()='Dialog Response:']/following-sibling::p
    log to console    ${messageJsComfirm}
    log to console    the alert message Responce is: ${Js Confirm}

    Click button    Js Prompt

    ${messageofJsPromt}=    input text into alert    HI HELLO HOW ARE YOU
    Sleep    2
    ${Js Prompt}=     Get text     xpath://label[text()='Dialog Response:']/following-sibling::p
     log to console    the alert message Responce is: ${Js Prompt}

Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,1300)
    sleep   2
*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Click on NotificationMessage
    click Link     Notification Message
    ${nmessage}=    get text    id:flash-message
    log to console     ${nmessage}
    click Link    Click here
    ${Tnmessage}=    get text    id:flash-message
    [Return]    ${Tnmessage}
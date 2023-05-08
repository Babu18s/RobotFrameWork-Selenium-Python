*** Settings ***
#Library    SeleniumLibrary
Documentation      RobotFrameWork by RaviBabu.
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/
${BROWSER}        Chrome
*** Test Cases ***
Validating MultipleBrowsers
    open browser to validate

    sleep    3
    open another browser
    sleep    3
    switch browser    2
    ${edgebrowsertitle}=    Get Title
    log to console    ${edgebrowsertitle}
    sleep    3
    switch browser    1
    ${chromebrowsertitle}=    Get Title
    log to console    ${chromebrowsertitle}
    sleep    4

Validating MultipleWindows
    open browser to validate
    Scrolling using JsExecutor
    opening new tabbed window

*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Open another browser
    Open Browser    https://www.google.com    edge
    maximize browser window
Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,1890)
    sleep   2
Opening new Tabbed window
    Click Link    Multiple Windows
    ${TitleOf1stWindow}=    Get Title
    Log to console    The title of First window is : ${TitleOf1stWindow}
    Click Link    Click Here
    sleep    4
    Switch window    New Window
    ${Titleof2ndWindow}=    Get Title
    log to console    The title of Second Window is : ${Titleof2ndWindow}
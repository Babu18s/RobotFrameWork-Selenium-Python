*** Settings ***
Documentation      RobotFrameWork by RaviBabu.
Library     SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating CheckBoxes
    open browser to validate
    Scrolling using JsExecutor
    click on checkbox
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing       #Page Title Validation
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

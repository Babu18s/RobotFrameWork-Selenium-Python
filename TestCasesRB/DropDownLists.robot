*** Settings ***
Documentation      RobotFrameWork by RaviBabu.
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating DropDown
    open browser to validate
    scrolling using jsexecutor
    click on dropdown
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing
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
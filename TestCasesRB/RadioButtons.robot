*** Settings ***
Documentation      RobotFrameWork by Ravibabu.
Library           SeleniumLibrary
Documentation      RobotFrameWork by RaviBabu.
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome
*** Test Cases ***
Validating RadioButtons
    open browser to validate
    click on radiobuttonlinks

*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing   #Page Title Validation

Click On RadioButtonLinks
    Click Link  Radio Buttons
    Select radio button    color    black


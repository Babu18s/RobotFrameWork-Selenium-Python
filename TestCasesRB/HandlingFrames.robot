*** Settings ***
Library    SeleniumLibrary
Documentation      RobotFrameWork by RaviBabu.
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome
*** Test Cases ***
Validating Frames
    Open Browser To Validate
    Scrolling using JsExecutor
    HandlingFrames
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
#    Title Should Be    Practice WebApp | Practice Automation - UI and API Testing       #Page Title Validation
HandlingFrames
    Click Link    IFrame
    Select Frame     xpath://iframe[@class='tox-edit-area__iframe']
    Input text    xpath://body[@id='tinymce']       Hi this is me
    sleep    5
    unselect Frame
    sleep    3
    Select Frame    id:iframe-youtube
    click element     xpath://div[@id='player']    #youtube video player will be clicked
    sleep    6
    unselect frame
#    execute javascript      arguments[0].click()    ${element}
Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,1890)
    sleep   2
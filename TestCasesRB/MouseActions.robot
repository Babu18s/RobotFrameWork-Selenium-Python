*** Settings ***
Documentation    RobotFrameWork By Ravi Babu
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://practice.expandtesting.com
${BROWSER}    Chrome

*** Test Cases ***
Validating RightClick
    Open Browser To Validate
    Scrolling using JsExecutor
    rightclick
Validating DoubleClick
    Go to    https://testautomationpractice.blogspot.com/    #Chrome
    doubleclickingelement
validating dragandDrop
#    open browser to validate
    draganddropelement
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,1590)
    sleep   2
RightClick
    Click Link    Context Menu
    open context menu    id:hot-spot
    log to console     the right click has happened
    sleep    4
    handle alert    accept
    sleep    4
    capture page screenshot    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/MouseActionRightClick.png
DoubleClickingElement
    capture page screenshot    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/BeforeDoubleclick.png
    Double Click Element    xpath://button[text()='Copy Text']
    capture page screenshot    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/AfterDoubleclick.png
DragandDropELement
#    click link     Drag and Drop
#    go to   https://testautomationpractice.blogspot.com/
    Sleep   3
    Drag and Drop    xpath://div[@id='draggable']    xpath://div[@id='droppable']
    sleep   4
    capture page screenshot    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/afterdrag&drop.png
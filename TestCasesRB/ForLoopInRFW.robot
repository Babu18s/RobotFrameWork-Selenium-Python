*** Settings ***
Documentation    RobotFrameWork By Ravi Babu
Library    SeleniumLibrary
#Resource   ../Resources/resources.robot
*** Variables ***
${LOGIN URL}    https://practice.expandtesting.com
${BROWSER}    Chrome
*** Test Cases ***
Validating ForLoop in RobotFrameWork
    open browser to validate
    Clicking on Adding/Delete element buttons
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Clicking on Adding/Delete element buttons
    Click Link    Add/Remove Elements
#    ${x}=    click button    Add Element
    FOR  ${x}   IN RANGE    6
    click button    Add Element
    END
    sleep    4
    ${CountofDeleButtons}=    get element count    xpath://button[text()='Delete']
    log to console     The No.of Delete buttons Present in the page are : ${CountofDeleButtons}
    log to console    Starting of for loop //##//##//##
    FOR   ${y}   IN RANGE   ${CountofDeleButtons}
    click button    Delete
    END
    sleep    4
    ${nEWCountofDeleButtons}=    get element count    xpath://button[text()='Delete']
    Log to console   The count of delete buttons after deleting: ${nEWCountofDeleButtons}
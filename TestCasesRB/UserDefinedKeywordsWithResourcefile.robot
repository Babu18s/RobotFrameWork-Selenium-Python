*** Settings ***
Documentation    RobotFrameWork By Ravi Babu
Library    SeleniumLibrary
Resource   ../Resources/resources.robot
*** Variables ***
${LOGIN URL}    https://practice.expandtesting.com
${BROWSER}    Chrome

*** Test Cases ***
validating UserdefinedKeyWords with resourcefile
    Open Browser To Validate
    ${NotificationMesaage}    Click on NotificationMessage
    log to console    ${NotificationMesaage}
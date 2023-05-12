*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py
*** Keywords ***
open my browser
    [Arguments]    ${LOGIN URL}    ${BROWSER}
    open browser    ${LOGIN URL}     ${BROWSER}
    maximize browser window

Scrolling using JsExecutor
    sleep   2
    execute javascript    window.scrollTo(0,2690)
    sleep   2

Click on demo apps
    Scrolling using JsExecutor
    Click Link    ${webParkingLink}
SelectingPracking Slot
    Select from list by value    ${chooseParkinglot}    ${value1}
DateEntry
    [Arguments]    ${EDate}
    Input Text      ${entryDate}    ${EDate}
#    click element   ${entryDate}
#    click element    xpath://span[@aria-label='May 22, 2023']
TimeEntry
    [Arguments]     ${inTime}
    Input Text      ${entryTime}    ${inTime}
ExitDate
    [Arguments]     ${outDate}
    Input Text      ${exitdate}     ${outDate}
ExitTime
    [Arguments]     ${outTime}
    Input Text      ${exittime}     ${outTime}
Clicking on Calculate Button
    click button     ${calculateButton}


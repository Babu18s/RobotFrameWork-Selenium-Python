*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjectresources.robot
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Chrome
${IdataDate}      2023/05/22
${IdataTime}      16:20
${EdataDate}      2023/05/25
${EdataTime}      16:21
*** Test Cases ***
WebParking Test
    Set Selenium Speed    2
    open my browser     ${LOGIN URL}    ${BROWSER}
    Click on demo apps
    SelectingPracking Slot
#    sleep    5
    DateEntry   ${IdataDate}
    TimeEntry   ${IdataTime}
    ExitDate    ${EdataDate}
    ExitTime    ${EdataTime}
    Clicking on Calculate Button
    Capture Page screenshot    WebParking.png
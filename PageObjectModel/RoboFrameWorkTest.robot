*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjectresources.robot
Resource  ../Resources/ReserveOnlineResources.robot
*** Variables ***
${LOGIN URL}      https://practice.expandtesting.com/
${BROWSER}        Firefox
${IdataDate}      2023/05/22
${IdataTime}      16:20
${EdataDate}      2023/05/25
${EdataTime}      16:21
*** Test Cases ***
WebParking Test
    Set Selenium Speed    1
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
    ${fee}=  Get Text    xpath://div[@class='alert alert-success']
    Log to console   The parking fair for the corresponding slot and dates is : ${fee}
ReserveOnline Test
#    open my browser
    Click on ReserveOnline
    FormFilling
    click on booknow
    Capture Page screenshot    Formfilling.png
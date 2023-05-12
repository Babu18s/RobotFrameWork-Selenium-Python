*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py
*** Keywords ***
#open my browser
#    [Arguments]    ${LOGIN URL}    ${BROWSER}
#    open browser    ${LOGIN URL}     ${BROWSER}
#    maximize browser window
Click on ReserveOnline
    click button    ${reserveOnlineButton}
FormFilling
    #personal info
    input Text    ${fname}    RajaVikramarkha
    input Text    ${lName}    Sigha
    #contact info
    input Text    ${emailID}    rvs@d.com
    input Text    ${phonenumber}    120-3534369
    #vehicle info
    Select from list by value    ${choosevehicleSize}    ${sizeValue1}
    input Text    ${licensePlateNumber}    564687985
click on booknow
    click button   ${booknowButton}
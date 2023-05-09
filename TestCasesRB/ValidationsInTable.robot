*** Settings ***
Documentation     Validations related to the table    --by Ravi Babiu
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/
${BROWSER}        Chrome

*** Test Cases ***
Validating content of Table
    open browser to validate
    Example Table
*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Example Table
    Click link    Sortable Data Tables
    table column should contain     xpath://table[@id='table1']/thead/tr/th[2]     2      First Name     #validating Column values

    ${textvalue}=    get text    xpath://table[@id='table1']/thead/tr/th[2]
    log to console   ${textvalue}

    ${fonmd}=   get text   xpath://table[@id='table1']/tbody/tr[1]/td[1]
    log to console     ${fonmd}
    sleep    6
    table row should contain    xpath://table[@id='table1']/tbody/tr[1]/td[1]    1    Smith  #validating  Row  values in table
    table header should contain     xpath://table[@id='table1']     First Name       #validating the hearder value of the table
    table cell should contain     xpath://table[@id='table1']    4    2    Jason      #validating the entire table with cell values
*** Settings ***
Documentation    RobotFrameWork By Ravi Babu
Library    SeleniumLibrary
Library    Collections
#Resource   ../Resources/resources.robot
*** Variables ***
${LOGIN URL}    https://practice.expandtesting.com
${BROWSER}    Chrome
*** Test Cases ***
Validating Dynamic table
    open browser to validate
    dynamictable

*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
DynamicTable
    click link    Dynamic Table
    ${Headslist}=    get element count   xpath://table[@class='table table-striped']/thead/tr/th
    log to console   ${Headslist}
    @{listofNAames}=    Create List
    FOR  ${y}   IN RANGE       ${Headslist}
    ${listofNAame}=  get text     xpath://table[@class='table table-striped']/thead/tr/th[${y}+1]      ##Here the index value is added by 1 because the list itarates zero(0) so by this we can get exact value
    Append to List  ${listofNAames}     ${listofNAame}
#    log to console   ${listofNAames}
    END
    log to console   ${listofNAames}    #printing all header values of the table
    ${indexofcpu}=    get index from list     ${listofNAames}   CPU     #getting the index value of the CPU
    ${AddIndexby1}=    Set Variable    ${1}
    ${IndexvalueOfCPU}=    Set Variable    ${${indexofcpu} + ${AddIndexby1}}       #Here the index value is added by 1 because the list itarates zero(0) so by this we can get exact value
    log to console     the cpu value : ${IndexvalueOfCPU}
    ${ChromeCPU}=     get text    xpath://table[@class='table table-striped']//thead//tr//th[text()='Name']/../..//following-sibling::tbody//tr//td[text()='Chrome']//parent::tr//child::td[${IndexvalueOfCPU}]
    log to console     The chrome cpu value is : ${ChromeCPU}     #The CPU value of chrome

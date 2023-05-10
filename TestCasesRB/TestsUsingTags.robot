*** Settings ***
Documentation    Sample Testcases by using Tags(Grouping)
*** Test Cases ***
TC1 for Regestration
    [Tags]  Regression
    log to console    This is the starting of the Registration
    log to console    This is the end of registration
TC2 for Sumbission
    [Tags]   Sanity
    log to console    This is the submission section'
TC3 for LogIn Page
    [Tags]  Regression
    log to console    This is the Login Page section
    Log to console    Entering valid credentials for log in
TC4 for HomePage
    [Tags]  Regression
    log to console    You are landed in Home Page of the application
    log to console    Now you are surffing the sections of HomePage
TC5 for Logout
    [Tags]   Sanity
    log to console    Now you are about to logout from the application
    log to console    Click on Logout link
    log to console    you are now seeing login page


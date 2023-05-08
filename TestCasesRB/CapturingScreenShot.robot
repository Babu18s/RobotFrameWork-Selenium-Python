*** Settings ***
Documentation    RobotFrameWork By Ravi Babu
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.flipkart.com/
${BROWSER}    Chrome

*** Test Cases ***
Capturing Element ScrenShoot
    Open Browser To Validate
    CapturingElementScreenShot

*** Keywords ***
Open Browser To Validate
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
#    Title Should Be    Practice WebApp  Practice Automation - UI and API Testing       #Page Title Validation
CapturingElementScreenShot
    Click ELement    xpath://button[text()='✕']
#    click button    ✕
#   Any of these locators can be used to close the log-in pop in home page of flipkart
    Sleep    4
#    capture element screenshot    xpath://div[text()='Mobiles & Tablets']/../..    Mobiles.png
#    capture page screenshot    Flipkart.png
#   In these above lines of codesnippet
#   if we did not specify any path to store the screenshot, then it automatically stores into our project
    capture element screenshot    xpath://div[text()='Mobiles & Tablets']/../..    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/Mobiles.png
    capture page screenshot    C:/Users/Ravi Singavarapu/PycharmProjects/RobotFrameWorkProject/ScreenShots/FlipkartPage.png
#    Here the Screenshots are getting stored into the Screenshot folder.
*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://practice.expandtesting.com/
${browser}  chrome
*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="D:\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    click element   xpath://a[@href='Inputs']


*** Keywords ***

*** Settings ***
Library  Selenium2Library
*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
*** Test Cases ***
Alertsting Window
    Open Browser  ${url}  chrome
    Maximize Browser Window
    Click Element    xpath://button[contains(text(),'Click Me')]
    Sleep    2
#    Handle Alert  accept
    Handle Alert  dismiss
    Sleep    2
    Close Browser


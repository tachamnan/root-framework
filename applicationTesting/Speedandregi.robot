*** Settings ***
Library  Selenium2Library
*** Variables ***
${browser}   chrome
${url}   http://demowebshop.tricentis.com/register

*** Test Cases ***
Speed And Register Testing
    ${speed}=  Get Selenium Speed
    Log To Console    ${speed}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    2 seconds
    Select Radio Button    Gender    M
    Input Text    name=FirstName    chamnan
    Input Text    name=LastName    vy
    Input Text    name=Email    vychamnankh@gmail.com
    Input Text    name=Password    boy@123
    Input Text    name=ConfirmPassword    boy@123
    ${speed}=  Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***
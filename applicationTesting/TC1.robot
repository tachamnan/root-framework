*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
tescase1
    Open Browser   https://demo.nopcommerce.com/   Chrome
    Maximize Browser Window
#    Click Link    xpath://a[@class='ico-login']
    Click Element    //A[@href='/login?returnUrl=%2F'][text()='Log in']
    Sleep    4s
    Input Text     name=Email     pavanoltraining@gmail.com
    Input Password    name=Password    Test@123
    Click Button    //BUTTON[@type='submit'][text()='Log in']
    Sleep    4s
    Close Browser


*** Keywords ***
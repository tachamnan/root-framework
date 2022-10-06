*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  chrome
${Url}  https://demo.nopcommerce.com

*** Test Cases ***
Inputboxtestingbutton
    Open Browser  ${Url}  ${browser}
    Maximize Browser Window
    Title Should Be     nopCommerce demo store
    Click Link    xpath://a[contains(text(),'Log in')]
    ${"email_txt"}  Set Variable   id=Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    vychamnankh@gmail.com
    Sleep    4s
    Clear Element Text    ${"email_txt"}
    Sleep    3s
    Close Browser


*** Keywords ***
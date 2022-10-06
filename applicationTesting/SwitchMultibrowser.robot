*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  chrome
${Url1}   https://www.google.com/
${url2}   https://www.bing.com/

*** Test Cases ***
Inputboxtestingbutton
    Open Browser  ${Url1}   ${browser}
    Maximize Browser Window
    Sleep    2s

    Open Browser  ${url2}   ${browser}
    Maximize Browser Window

    Switch Browser    1
    ${title1}   Get Title
    Log To Console    ${title1}

    Switch Browser   2
    ${title2}   Get Title
    Log To Console    ${title2}

    Sleep    3s

    Close All Browsers




*** Keywords ***
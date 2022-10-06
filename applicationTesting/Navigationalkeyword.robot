*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Inputboxtestingbutton
    Open Browser   https://www.google.com/   chrome
    Maximize Browser Window
    ${log}  Get Location
    Log To Console    ${log}
    Sleep    2s

    Go To    https://www.bing.com/
    ${log}  Get Location
    Log To Console    ${log}
    Sleep    2s

    Go Back
    ${log}  Get Location
    Log To Console    ${log}
    Sleep    2s
    Close Browser
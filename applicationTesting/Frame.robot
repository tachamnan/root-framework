*** Settings ***
Library   Selenium2Library
*** Variables ***
${browser}   chrome
${url}   https://www.selenium.dev/selenium/docs/api/java/index.html?index-all.html

*** Test Cases ***
Alertstesting
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    3s
    
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    2s
    
    Select Frame    classFrame
    Click Link     Help
    Unselect Frame
    Sleep    2s
    Close Browser
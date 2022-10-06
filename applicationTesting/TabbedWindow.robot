*** Settings ***
Library   Selenium2Library

*** Variables ***
${browser}   chrome
${url}    http://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedTesingwindow
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://*[@id="Tabbed"]/a/button
    select  window  title=
    ////////////////////////////////////////////////error//////////////////////////////


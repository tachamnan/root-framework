*** Settings ***
Library   Selenium2Library

*** Test Cases ***
Scrollingpagetesting
    Open Browser   https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Maximize Browser Window
#    Execute Javascript   window.scrollTo(0,2500)
#    Scroll Element Into View    //td[contains(text(),'Brazil')]
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3s
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    3s
    Close Browser

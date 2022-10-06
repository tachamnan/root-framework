#*** Settings ***
#Library   Selenium2Library
#
#*** Test Cases ***
#Cupture Green Testing
#    Open Browser   https://opensource-demo.orangehrmlive.com/   chrome
#    Maximize Browser Window
#    Input Text    txtUsername    Admin
#    Input Text    txtPassword    admin123
#
##    Capture Element Screenshot    xpath://*[@id="divLogo"]/img   D:/myoldlesson/youtubelesson/Logo.png
##    Capture Page Screenshot    D:/myoldlesson/youtubelesson/Logotest.png
#
#    Capture Element Screenshot    xpath://*[@id="divLogo"]/img   Logo.png
#    Capture Page Screenshot    Logotest.png
#    Close Browser
*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}=  https://opensource-demo.orangehrmlive.com/
${base_url}=  https://training.rcvacademy.com/login

*** Test Cases ***
Cupture element test
    Open Browser  ${base_url}  chrome
    Maximize Browser Window
    Input Text    id:email    Admin
    Input Text    id:password    Admin123
    Sleep     3
    Capture Element Screenshot   xpath://body/div[@id='page']/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]   Logo.png
    Capture Page Screenshot     page.png
    Close Browser
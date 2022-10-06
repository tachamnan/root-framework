#*** Settings ***
#Library  Selenium2Library
#
#*** Variables ***
#${url}  https://web.facebook.com/?_rdc=1&_rdr
#${browser}  chrome
#
#*** Test Cases ***
#Login into facebook
#    Open Browser  ${url}  ${browser}
#    Maximize Browser Window
#    Sleep    2
#    Input Text    name=email    087966735
#    Input Password    name=pass    NanKD@83
#    Sleep    2
#    Click Element    xpath://button[@id='loginbutton']
#    Sleep    2
#    Close Browser
*** Settings ***
Library   Selenium2Library
*** Variables ***
${face_url}=   https://web.facebook.com/?_rdc=1&_rdr

*** Keywords ***
Login to facebook
    Open Browser   ${face_url}     chrome
    Maximize Browser Window
    Input Text    name=email    087966735
    Input Password    name=pass    NanKD@83
    Click Element    name=login
    Sleep    5s
    Close Browser
*** Test Cases ***
Facebook Login
    Login to facebook

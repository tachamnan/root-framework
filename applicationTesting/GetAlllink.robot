*** Settings ***
Library   Selenium2Library

*** Test Cases ***
GetAlllink Testing
    Open Browser  http://demo.guru99.com/test/newtours/  chrome
    Maximize Browser Window
    ${Getalllinkcount}   Get Element Count    xpath://a
    Log To Console    ${Getalllinkcount}

    @{LinkItem}   Create List

       : For   ${i}   IN RANGE   1   ${Getalllinkcount}
         /  ${linkText}=   Get text  xpath:(//a)[${i}]
         \  log to console  ${linkText}

         end


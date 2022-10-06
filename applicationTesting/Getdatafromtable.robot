*** Settings ***
Library    Selenium2Library

*** Test Cases ***
Test Data frome table
    Open Browser    http://testautomationpractice.blogspot.com/   chrome
    Maximize Browser Window
    Scroll Element Into View    //h2[contains(text(),'Tooltips')]
    Sleep    4s
    ${rows}=   Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=   Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}
    ${data}=   Get Text     xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    Log To Console    ${data}
    ${Tcols}=  Table Column Should Contain    xpath://*[@id="HTML1"]/div[1]/table    2    Author
    Table Row Should Contain    xpath://*[@id="HTML1"]/div[1]/table    4    Learn JS
    Table Cell Should Contain    xpath://*[@id="HTML1"]/div[1]/table    5    2    Mukesh
    Table Header Should Contain    xpath://*[@id="HTML1"]/div[1]/table    BookName
    Log To Console    ${Tcols}
#    Log To Console    ${data}
#    Log To Console    ${data}
#    Log To Console    ${data}
    Close Browser


    
    
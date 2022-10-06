*** Settings ***
Library   Selenium2Library

*** Test Cases ***
Mouseactionstesting
    Open Browser   https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    Maximize Browser Window
    Open Context Menu    xpath://span[contains(text(),'right click me')]
    Sleep    3s
    
    Go To    http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep    3s
    
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box7    id:box106
    Sleep    3s
    Close Browser


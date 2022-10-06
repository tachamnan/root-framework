*** Settings ***
Library   Selenium2Library
Resource  ../Resources/Login_resources.robot
Suite Setup    Open my browser
Suite Teardown   Close browser window
Test Template   Invalid Login

*** Test Cases ***       username                password
Right user empty pass    admin@yourstore.com     ${EMPTY}
Right user wrong pass    admin@yourstore.com      xyz
wrong user Right pass    admin@yourstore.com      admin
wrong user empty pass    admin@yourstore.com      ${EMPTY}
wrong user wrong pass    admin@yourstore.com      xyz



*** Keywords ***
Invalid Login
    [Arguments]    ${username}     ${password}
    Input username     ${username}
    Input password     ${password}
    click login button
    Error message should be visible
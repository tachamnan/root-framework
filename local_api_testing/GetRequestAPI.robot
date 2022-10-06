*** Settings ***
Library  JSONLibrary
Library    RequestsLibrary

*** Variables ***
${base_url}  http://localhost:3000/
${path}  staff

*** Test Cases ***
Test Get API
    Create Session  MyGetAPI  ${base_url}
    ${respone}  Get On Session  MyGetAPI  ${path}/3

    Log To Console    ${respone.status_code}
    Log To Console    ${respone.content}



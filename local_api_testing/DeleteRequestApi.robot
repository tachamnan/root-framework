*** Settings ***
Library  RequestsLibrary
*** Variables ***
${base_url}=  http://localhost:3000/
${path}=  staff
*** Test Cases ***
Test Delete API Request
    Create Session    MyDelete    ${base_url}
    ${response}  Delete On Session  MyDelete  ${path}/3
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
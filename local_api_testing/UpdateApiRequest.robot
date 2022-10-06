*** Settings ***
Library  RequestsLibrary

*** Variables ***
${base_url}=  http://localhost:3000/
${path}=  staff

*** Test Cases ***
Test Update API Request
    Create Session    MyUpdate    ${base_url}
    ${body}=  Create Dictionary  name=chanUpdated  phone=098 909 000
    ${header}=  Create Dictionary  Content-Type=application/json
    ${response}=  Put On Session  MyUpdate  ${path}/12  data=${body}  expected_status=anything
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

*** Settings ***
Library  RequestsLibrary

*** Variables ***
${base_url}=  http://localhost:3000/
${path}=  staff

*** Test Cases ***
Test Post Request API
    Create Session    MyPost    ${base_url}
    ${body}=  Create Dictionary  name=chan  phone=090 890 098
    ${header}=  Create Dictionary  Content-Type=application/json
    ${response}=  Post On Session   MyPost  ${path}  json=${body}   expected_status=anything
    Log to console  ${response.status_code}
    Log to console  ${response.content}
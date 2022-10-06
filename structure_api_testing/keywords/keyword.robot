*** Settings ***
Resource  ../resources/path_url.robot
Resource  ../resources/base_url.robot
Resource  ../commands/command.robot

*** Keywords ***
GET API Request

    ${headers}  Create Dictionary
    ...  accept=application/json
    ...  Content-Type=application/json
    ${response}=  Get Request  ${base_url}  ${staff}  ${headers}

POST API Request
    [Arguments]  ${name}  ${phone}
    ${headers}=  Create Dictionary
    ...  accept=application/json
    ...  Content-Type=application/json
    ${body}  Catenate
#    ...  {
#    ...   "name":"soka",
#    ...   "phone":"098 765 567"
#    ...  }
    ...  {
    ...  "name":"${name}",
    ...  "phone":"${phone}"
    ...  }
    ${response}  Post Request  ${base_url}   ${staff}   ${body}   ${headers}
    Log To Console    ${response.content}

DELETE API Request
    [Arguments]  ${id}
    ${headers}  Create Dictionary
    ...  accept=application/json
    ...  Content-Type=application/json
    ${response}  Delete Request  ${base_url}  ${staff}/${id}  ${headers}
    Log To Console    ${response.content}

UPDATE API Request
    [Arguments]  ${id}  ${name}  ${phone}
    ${headers}  Create Dictionary  Content-Type=application/json
    ${body}  Catenate
    ...  {
    ...  "name":"${name}",
    ...  "phone":"${phone}"
    ...  }
    ${response}  Update Request  ${base_url}  ${staff}/${id}  ${body}  ${headers}
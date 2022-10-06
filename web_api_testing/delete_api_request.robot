*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections


*** Variables ***
${base_url}  https://thetestingworldapi.com/

*** Test Cases ***
TC001_Delete_Request_API
    Create Session    myDelete    ${base_url}
    ${Response}  Delete On Session  myDelete  api/studentsDetails/524611
    ${code}  Convert To String    ${Response.status_code}
    Should Be Equal    ${code}    200
    ${jsonresponse}=  To json    ${Response.content}
    @{status_list}=  Get Value From Json    ${jsonresponse}    status
    ${status}=  Get From List    ${status_list}    0
    Should Be Equal    ${status}    true
#    erro

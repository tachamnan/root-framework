*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

*** Variables ***
${base_url}=  http://thetestingworldapi.com/

*** Test Cases ***
Post API Request
    Create Session    MyAddData   ${base_url}
    ${body}=  Create Dictionary  id=1818  first_name=LL  middle_name=SS  last_name=Ha  date_of_birth=9/22/2000
    ${header}=  Create Dictionary  Content-Type=application/json
    ${response}=  Post On Session  MyAddData  api/studentsDetails  data=${body}   headers=${header}
#    Log To Console    ${response.status_code}
#    Log To Console    ${response.content}
#    ${code}=  Convert To String    ${response.status_code}
#    Should Be Equal    ${code}    200

    Create Session    MyGet  ${base_url}
    ${response1}=  Get On Session  MyGet  api/studentsDetails/1818
    ${code}=  Convert To String    ${response1.status_code}
    Should Be Equal    ${code}    200


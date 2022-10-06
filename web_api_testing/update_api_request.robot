*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections
*** Variables ***
${base_url}   http://thetestingworldapi.com/

*** Test Cases ***
Test API Request
    Create Session    MyUpdate    ${base_url}
    &{body}=   Create Dictionary   id=3846317  first_name=hiupdate  middle_name=kaka  last_name=de  date_of_birth=12/12/2021
    &{header}=   Create Dictionary  Content-Type=application/json
    ${response}=   Put On Session  MyUpdate   api/studentsDetails/3846317   data=${body}   headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

#    can not update



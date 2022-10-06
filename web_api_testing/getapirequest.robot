*** Settings ***
Library  RequestsLibrary

*** Variables ***
${base_url}=  http://thetestingworldapi.com/
#${id}=   3845753  3846086  3846317


*** Test Cases ***
TC001 Get Data API
    Create Session    MyFetchData    ${base_url}
    ${response}=  Get On Session  MyFetchData   api/studentsDetails
   Log To Console    ${response.status_code}
   Log To Console    ${response.content}


*** Settings ***
Resource  ../resources/import.robot
Resource  ../resources/base_url.robot
Resource  ../resources/path_url.robot

*** Keywords ***
Get Request
    [Arguments]  ${url}  ${path}  ${headers}
    Create Session    myget    ${url}
    ${response}=  Get On Session  myget  ${path}  headers=${headers}   expected_status=anything
    [Return]  ${response}
#    Log To Console    ${response.status_code}
#    Log To Console    ${response.content}
Post Request
    [Arguments]  ${url}  ${path}  ${body}  ${headers}
    Create Session    mypost    ${url}
    ${response}  Post On Session  mypost  ${path}  data=${body}  headers=${headers}  expected_status=anything
    [Return]  ${response}

Delete Request
    [Arguments]  ${url}  ${path}  ${headers}
    Create Session    mydelete    ${url}
    ${response}  Delete On Session  mydelete  ${path}  headers=${headers}  expected_status=anything
    [Return]  ${response}

Update Request
    [Arguments]  ${url}  ${path}  ${body}  ${headers}
    Create Session    myupdate    ${url}
    ${response}  Put On Session  myupdate  ${path}  data=${body}  headers=${headers}
    [Return]  ${response}
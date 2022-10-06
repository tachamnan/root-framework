*** Settings ***
Resource  ../keywords/keyword.robot
Resource  ../resources/base_url.robot
Resource  ../resources/path_url.robot

*** Test Cases ***
TC003 Delete API Request
    DELETE API Request  13
*** Settings ***
Resource  ../keywords/keyword.robot
Resource  ../resources/base_url.robot
Resource  ../resources/path_url.robot

*** Test Cases ***
TC002 POST API Request
    POST API Request  kana  090 789 657

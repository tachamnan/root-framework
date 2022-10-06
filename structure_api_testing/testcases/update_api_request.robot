*** Settings ***
Resource  ../keywords/keyword.robot
Resource  ../resources/base_url.robot
Resource  ../resources/path_url.robot

*** Test Cases ***
TC004 Update data api
    UPDATE API Request   13   kanan  090 989 098

#{
#      "name": "kana",
#      "phone": "090 789 657",
#      "id": 13
#    }
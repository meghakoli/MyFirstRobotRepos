*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
verify the PUT request response
    PUT request testcase

*** Keywords ***
PUT request testcase
    Create Session    mysession    https://jsonplaceholder.typicode.com
    ${res_jsn}=  Create Dictionary    userId=1  id=1  title=delectus aut autem  completed=false
    ${put_res}=  PUT On Session     mysession  /todos/1  json=${res_jsn}  expected_status=200
    Should Be Equal    ${put_res.status_code}  ${200}
    Dictionary Should Contain Key    ${put_res.json()}  id
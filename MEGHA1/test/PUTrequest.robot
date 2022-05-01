*** Settings ***
Library    Collections
Library    RequestsLibrary
Library    BuiltIn 
   
*** Test Cases ***

       
PUT request testing
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    &{data}=    Create dictionary  title=PUT request   body= this is put test!  
    ${resp}=    PUT On Session    jsonplaceholder  /posts/1  json=${data}  expected_status=200 
    Should Be Equal As Strings   ${resp.status_code}    200
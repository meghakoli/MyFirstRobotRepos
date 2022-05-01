*** Settings ***
Library    Collections
Library    RequestsLibrary
Library    BuiltIn 
   


*** Test Cases ***
Testing GET Request
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${json_res}=  GET On Session    jsonplaceholder   /  posts/1  
    Should Be Equal As Strings    ${json_res.reason}    OK
    Should Be Equal As Strings   ${json_res.status_code}    200
     
    log to console   ${json_res.status_code}
       
   
    
PUT request testing
    &{data}=    Create dictionary  title=PUT request   body= this is put test!  
    ${resp}=    PUT On Session    jsonplaceholder  /posts/1  json=${data}  expected_status=200 
    



    


*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    BuiltIn
*** Test Cases ***
Print the current date
    print current date

to get date of 5 days back
    ${days}  Subtract Time From Date   2022-04-27   5 days
    Log To Console  the date 5 days before current date is ${days}
     #${nextDate}   Get Current Date  increment=5 day   
     #Log To Console   the next day date is /n${nextDate}
    
*** Keywords ***
   
current time and date
    
    ${date_time}  Get Current Date  %y-%m-%d 
    
print current date
    ${date_time}  Get Current Date 
    Log To Console  The current date and time is \n${date_time}          
    
      
    
      
*** Variables ***

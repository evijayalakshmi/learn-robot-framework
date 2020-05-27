*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Registartion Test
    ${speed}=   get selenium speed
    log to console  ${speed}

    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    set selenium speed  1 seconds
    select radio button  Gender     F

    input text  name:FirstName  Vijju
    input text  name:LastName   E
    input text  name:Email  abc@gmail.com
    input text  name:Password   Vinne
    input text  name:ConfirmPassword    Vinee

    ${speed}=   get selenium speed
    log to console  ${speed}
    close browser

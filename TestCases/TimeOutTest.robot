*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Registartion Test
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window

    ${time}=    get selenium timeout
    log to console  ${time}

    set selenium timeout  10 seconds
    wait until page contains  Register      # Default waiting time is 5 seconds

    select radio button  Gender     F
    input text  name:FirstName  Vijju
    input text  name:LastName   E
    input text  name:Email  abc@gmail.com
    input text  name:Password   Vinne
    input text  name:ConfirmPassword    Vinee

    close browser

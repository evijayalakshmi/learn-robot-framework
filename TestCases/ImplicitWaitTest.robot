*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ImplicitWaitTest
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    select radio button  Gender     F
    input text  name:FirstName1  Vijju
    input text  name:LastName   E
    input text  name:Email  abc@gmail.com
    input text  name:Password   Vinne
    input text  name:ConfirmPassword    Vinee

    close browser

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationkeywordsTest

#Go TO
#Go Back
#Get Location

    open browser  https://www.google.com/       chrome
    ${location}=    get location
    log to console  ${location}

    go to   https://www.bing.com/
    ${location}=    get location
    log to console  ${location}

    go back
    ${location}=    get location
    log to console  ${location}


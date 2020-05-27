*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser  http://newtours.demoaut.com/      chrome
    maximize browser window
    ${allLinksCount}=   get element count  xpath://a
    log to console  ${allLinksCount}

    @{linkNames}    create list
    : FOR   ${i}   IN RANGE    1    ${allLinksCount}+1
    \   ${linkText}=    get text  xpath:(//a)[${i}]
    \   log to console  ${linkText}

    close browser
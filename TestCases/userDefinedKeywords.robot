*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${url}      http://newtours.demoaut.com/
${browser}      chrome

*** Test Cases ***
Userdefinedkeyword Test
    ${title}=   launchBrowser   ${url}  ${browser}
    log to console  ${title}   #this statement will display the result in console window
    log     ${title}    #the only log will store the value in relative report.html in the project.
    input text  name:userName   mercury
    input text  name:password   mercury
    close browser
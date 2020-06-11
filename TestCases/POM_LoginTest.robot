*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${browserName}      headlesschrome
${websiteUrl}      http://newtours.demoaut.com/mercuryreservation.php
${username}     tutorial
${password}     tutorial


*** Test Cases ***
LoginTest
    Open the browser  ${websiteUrl}     ${browserName}
    Enter the credentials  ${username}    ${password}
    Click SignIn
    sleep  3
    verify login status
    Close the browser
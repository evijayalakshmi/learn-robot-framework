*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegisterPageKeywords.robot

*** Variables ***
${browserName}  headlesschrome
${websiteUrl}   http://newtours.demoaut.com/



*** Test Cases ***
Registation Test

    open the browser    ${websiteUrl}   ${browserName}
    click on register link
    Enter the details  David    John    0123456789  davidjohn@gmail.com     Toronto     Toronto     Brampton    L3S 1E7     CANADA
    Enter the credentials  john     johnxyz     johnxyz
    Click Register Button
    verify registration status
    Close the browser

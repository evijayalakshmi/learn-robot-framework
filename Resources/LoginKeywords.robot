*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open the browser
    [Arguments]  ${websiteUrl}      ${browserName}
    open browser  ${websiteUrl}     ${browserName}
    maximize browser window

Enter the credentials
    [Arguments]  ${username}    ${password}
    input text  ${txt_loginUserName}    ${username}
    input password  ${txt_loginPassword}    ${password}

Click SignIn
    click button  ${btn_signIn}

Verify login status
    title should be  Find a Flight: Mercury Tours:

Close the browser
    close all browsers

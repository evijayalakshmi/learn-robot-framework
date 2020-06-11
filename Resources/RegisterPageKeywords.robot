*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open the browser
    [Arguments]  ${websiteUrl}      ${browserName}
    open browser  ${websiteUrl}     ${browserName}
    maximize browser window

Click on register link
    click link  ${Register_link}

Enter the details
    [Arguments]  ${firstname}   ${lastname}     ${phone}    ${email}    ${address}  ${city}     ${state}    ${postalcode}   ${country}
    Input text  ${txt_firstName}    ${firstname}
    Input text  ${txt_lastName}     ${lastname}
    Input text  ${txt_phoneNum}  ${phone}
    Input text  ${txt_email}        ${email}
    Input text  ${txt_address}      ${address}
    Input text  ${txt_city}     ${city}
    Input text  ${txt_state}        ${state}
    Input text  ${txt_postalCode}       ${postalcode}
    select from list by label  ${drp_country}       ${country}


Enter the credentials
    [Arguments]  ${username}    ${password}     ${confirmpassword}
    Input text  ${txt_userName}   ${username}
    Input password  ${txt_password}    ${password}
    Input password  ${txt_confirmPassword}  ${confirmpassword}

Click Register Button
    click button  ${btn_submit}

Verify Registration status
    page should contain  Thank you for registering.

Close the browser
    close all browsers
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Login Url}    https://admin-demo.nopcommerce.com
${browser}      chrome


*** Keywords ***
open my browser
    open browser    ${Login Url}    ${browser}
    maximize browser window

Close Browsers
    close all browsers
Open Login Page
    go to  ${Login Url}
Input Username
    [Arguments]  ${username}
    input text  id:Email    ${username}
Input Pwd
    [Arguments]  ${password}
    input text  id:Password     ${password}
Click LoginButton
    click element  xpath://input[@class='button-1 login-button']
Click Logout
    click link  Click Logout
Login is successful
    page should contain  Dashboard
Login is unsuccessful
    page should contain  Login was unsuccessful

*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/   chrome

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email        vijayalakshmi@gmail.com
    input password  id:Password     vijju123
    click element  xpath://input[@class='button-1 login-button']

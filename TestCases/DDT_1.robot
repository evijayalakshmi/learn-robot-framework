#Data Driven Testing (DDT)  Specifying test data within the script

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resource.robot
Suite Setup  open my browser    #Executes once before testcases
Suite Teardown  Close Browsers  #Executes once after completion of testcases
Test Template  Invalid Login

*** Test Cases ***      uesrname        password
TC1 Right user empty pwd        admin@yourstore.com     ${EMPTY}
TC2 Right user wrong pwd        admin@yourstore.com     xyz
TC3 wrong user right pwd        admn@yourstore.com      admin
TC4 wrong user empty pwd        admn@yourstore.com      ${EMPTY}
TC5 wrong user wrong pwd        amin@yourstore.com      xyz

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input Username  ${username}
    Input Pwd  ${password}
    Click LoginButton
    Login is unsuccessful



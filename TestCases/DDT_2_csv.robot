$ Data Driven Testing (DDT) Specifying Test Data through EXCEL file

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resource.robot
Library     DataDriver  ../TestData/LoginData.csv   # sheet_name=Sheet1(optional)

Suite Setup  open my browser
Suite Teardown  Close Browsers
Test Template   InValid Login

*** Test Cases ***
LoginTestWithCSV using ${username} and ${password}
#In the above, 'using' , 'and' keywords are used to see the username and password values in the console window. Though, If we didnt mention the testcase will execute with the data set from excel file with different set of values.

*** Keywords ***
InValid Login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Pwd  ${password}
    Click LoginButton
    Login is unsuccessful
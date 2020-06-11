*** Settings ***
Library  SeleniumLibrary


Suite Setup  log to console     Opening Browser     #Suite Setup executes once before executing all the test cases
Suite Teardown  log to console  Closing Browser     #Suite Teardown executes once after executing all the test cases

Test Setup  log to console  Login to application        #Test Setup executes everytime before executing every test case
Test Teardown  log to console   Logout from application     #Test Teardown executes everytime after executing every test case

*** Test Cases ***
TC1 Prepaid Recharge
    log to console  This is prepaid recharge test case
TC2 Postpaid Recharge
    log to console  This is postpaid recharge test case
TC3 Serach
    log to console  This is serach test case
TC4 Advanced search
    log to console  This is advanced test case

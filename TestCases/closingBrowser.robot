*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ClosingBroserTest
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window

    open browser  http://automationpractice.com/index.php   chrome
    maximize browser window

    #close browser       this will close the latest browser in opened browsers.
    close all browsers  #this will close all opened browsers

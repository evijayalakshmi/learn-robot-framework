*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
AlertHandlingTest
    open browser  http://testautomationpractice.blogspot.com/   chrome
    #maximize browser window

    click element  xpath://*[@id="HTML9"]/div[1]/button  #Opens Alert


    sleep  3 seconds

    #handle alert   accept  #this alert command will close the alert window by ok button
    #handle alert  dismiss   #this alert command will close the alert window by cancel button
    #handle alert  leave     #this command keep opens the alert window
    #alert should be present  Press a button!   #checking some element in the alert window
    alert should not be present  Press a button!    #cjecking negative scenario.

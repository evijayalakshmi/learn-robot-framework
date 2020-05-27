*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#launchBrowser   #user defined keywod with no arguments
#    open browser  ${url}    ${browser}
#    maximize browser window

launchBrowser   #user defined keywod with arguments
    [Arguments]  ${appurl}  ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window
 #user defined keywod with arguments with a return value
    ${title}=   get title
    [Return]  ${title}

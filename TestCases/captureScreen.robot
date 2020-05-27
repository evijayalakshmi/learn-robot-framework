*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
CaptureScreenTest
    open browser  https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    #capture element screenshot  xpath://*[@id="divLogo"]/img    D:/work/practices/PycharmProjects/learn-robot-framework/logo.png
    #capture page screenshot  D:/work/practices/PycharmProjects/learn-robot-framework/PageScreenshot.png

    # Screenshots will be saved in specified path loaction.

    capture element screenshot  xpath://*[@id="divLogo"]/img    logo.png
    capture page screenshot  PageScreenshot.png
    # If path is not specified, screenshot will be saved within the project itself(default).


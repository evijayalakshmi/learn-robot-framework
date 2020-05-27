*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
FramesHandlingTest
    open browser  https://www.selenium.dev/selenium/docs/api/java/  chrome
    maximize browser window

    select frame  packageListFrame  # Can specify the keyword, id or name or xpath
    click link  org.openqa.selenium
    unselect frame

    sleep  3

    select frame  packageFrame
    click link  WebDriver
    unselect frame

    sleep  3

    select frame  classFrame
    click link  Index
    unselect frame
    sleep  3

    close browser

    # Browser cannot jump(select) into one frame to other frame without close(unselect) the opened frame first.
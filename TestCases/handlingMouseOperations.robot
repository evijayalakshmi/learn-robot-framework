*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseActionsTest
    open browser   http://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
    maximize browser window

    # This will perform rightclick action/open context menu
    open context menu  xpath:/html/body/div/section/div/div/div/p/span
    # //span[@class='context-menu-one btn btn-neutral']
    sleep  2

    #Double click action
    go to  http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://*[@id="HTML10"]/div[1]/button
    sleep  2

    # drag and drop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  id:box6  id:box106
    sleep  2

    close browser
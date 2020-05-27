*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
#using javascript executor
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    maximize browser window
#    execute javascript  window.scrollTo(0,  2500)
    #the first arg is horizantal scroll pixel and second arg is vertical scroll pixel
#    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    #scrolls until the defined element found
     execute javascript  window.scrollTo(0,document.body.scrollHeight)  #scrolls to the end of the page
     sleep  2
     execute javascript  window.scrollTo(0,-document.body.scrollHeight)     ##scrolls to the start of the page
     sleep  2
    close browser
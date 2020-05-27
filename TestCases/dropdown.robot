*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdown list
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  1second

    select from list by label  continents   Asia

    select from list by index  continents   5
    # One more option to select dropdown item is by value
    # select from list by value  <name> <value>
    # -------------------
    # selecting item from listbox
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands

    unselect from list by label  selenium_commands   Switch Commands

    close browser

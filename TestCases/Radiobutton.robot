*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing radio buttons and check boxes
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds
    # Selecting radio buttons
    select radio button  sex    Female
    select radio button  exp    5

    # Selecting check boxes
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  RedTea
    close browser
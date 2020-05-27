*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HtmlTableOperations
    open browser  http://testautomationpractice.blogspot.com/   chrome
    maximize browser window

    #Count number of rows and columns
    ${rowscount}=   get element count  xpath://table[@name='BookTable']//tbody/tr
    ${colscount}=   get element count  xpath://table[@name='BookTable']//tbody/tr[1]/th

    log to console  ${rowscount}
    log to console  ${colscount}


    #CGet data from table
    ${data}=    get text  xpath://table[@name='BookTable']//tbody/tr[5]/td[2]
    log to console  ${data}

    #Validating Table
    table column should contain  xpath://table[@name='BookTable']   2   Author      #xpath of element |column number |expecting value
    table row should contain  xpath://table[@name='BookTable']  4   	Animesh     #xpath of element |row number |expecting value
    table cell should contain  xpath://table[@name='BookTable']     5   2   Mukesh      #xpath of element |row number |column number |expecting value
    table header should contain  xpath://table[@name='BookTable']   BookName

    close browser
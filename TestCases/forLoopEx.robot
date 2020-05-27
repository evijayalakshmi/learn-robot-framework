*** Test Cases ***
#ForLoopEx1
#    : FOR   ${i}    In RANGE    1   10
#    \   log to console  ${i}

#ForLoopEx2
#    : FOR   ${i}    IN  1   2   3   4   5   6   7   8       #giving range directly, if tab space is given between numbers, prints numbers in next line or with normal space prints numbers in single line
#    \   log to console  ${i}

#ForLoopWithList
#    @{items}    create list  1  2   3   4   5
#    : FOR   ${i}    IN  @{items}
#    \   log to console  ${i}

#ForLoop4
#    : FOR   ${i}    IN  john    david   smith   scott
#    \   log to console  ${i}

#ForLoop5
#    @{namesList}    create list  john    david   smith   scott
#    : FOR   ${i}    IN  @{namesList}        #getting values from list
#    \   log to console  ${i}

ForLoopWithExit
    @{items}    create list  1  2   3   4   5
    : FOR   ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if  ${i}==3       #Exit by giving condition
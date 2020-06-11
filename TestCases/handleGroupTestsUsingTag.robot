*** Settings ***


*** Test Cases ***
TC1 User Registration Test
    [Tags]  regression
    log to console  This is user registration test
    log to console  user registration is over
TC2 Login Test
    [Tags]  sanity
    log to console  This is login test
    log to console  Login test is over
TC3 Change User Settings
    [Tags]  regression
    log to console  This is change user settings test
    log to console  change user settings test is over
TC4 Logout test
    [Tags]  sanity
    log to console  This is Logout test
    log to console  Logout test is over


# The tag names helps to execute particular test cases # By following different commands

# 1. robot --include=sanity TestCases\handleSetupAndTeardown.robot  (it executes only the testcases has the tag name as sanity)
# 2. robot -i sanity -i regression TestCases\handleGroupTestsUsingTag.robot (it executes both the testcases has the tag name as sanity and regression)
# 3. robot -e regression TestCases\handleGroupTestsUsingTag.robot (it excludes the testcases has the tag name as regression)

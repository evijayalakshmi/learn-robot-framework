[MarkDown CheatSheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#emphasis)

# learn-robot-framework
Robot framework using pycharm


## Robot Automation

- Robot framework is generic test automation framework for "Acceptance Testing"
- Acceptance test-driven development(ATDD)
- It utilizes the keyword-driven testing approach
- provides test libraries implemented either with python or java, and can create new higher level keywords from existing ones using the same syntax that is used for creating test cases.
- robot framework key words simplifies the selenium operations. (More understandable)

      Robot Framework IDE (RIDE / Pycharm with Intellibot plugin)
                                 |
                                 |
                           Robot Framework
                                 |
                                 |
      BUiltin Lib | Selenium Lib | DB Lib | DateTime Lib | etc --> Python/Java --> PIP
                                 |
                                 |
      Webdriver (eg. ChromeDriver, GekoDRiver, IE Driver, etc)
      Browser (eg.Chrome, Firefox, IE)

### Setup

1. install python
2. install pycharm iDE
    Note: while installing python, check add python to path checkbox. Or if not checked,
    Set path manually in environment variables to python scripts path: **Python\Python38-32\Scripts** 
    - After installation, set the path in environment variable and check the version of python.
3. install Selenium
4. Install Robot framework
5. Install robotframework selenium Library

> Though installed the above packages globally, should also add their libraries in the project also.

> General Note, Install robotframework-seleniumlibrary 3.3.1 to get autocomplete(Intellisense) working.

### Write first test case and exeute

   1. Create a new file named TC1.robot.
   2. Add libraries in settings -> Select Project -> Select project interpreter.
   3. install the plugin -> IntelliBot @SeleniumLibraryPatched
   4. download relevant web driver for the browser and place it in python scripts folder to use globally.
  
 Write the code and execute in terminal with the command ```robot <filename>```
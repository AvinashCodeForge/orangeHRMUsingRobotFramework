*** Settings ***
Library     SeleniumLibrary
Variables   C:\Users\Avinash\PycharmProjects\orangeHRMWithRobotFrameworkProject\PageObjects\Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text    ${textbox_username_id}    ${username}

Enter password
    [Arguments]     ${password}
    Input Text   ${textbox_password_id}     ${password}

click SignIn
    Click Button    ${button_login_xpath}
    
Verify Successful Login
    Title Should Be    OrangeHRM

Execution Completed
    Close Browser



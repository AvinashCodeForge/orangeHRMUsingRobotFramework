*** Settings ***
Library     SeleniumLibrary
Resource    ..\PageObjects\Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text      xpath://input[@name='username']    ${username}

Enter password
    [Arguments]     ${password}
    Input Text      xpath://input[@type='password']     ${password}

click SignIn
    Click Button    xpath://button[normalize-space()='Login']
    
Verify Successful Login
    Title Should Be    OrangeHRM

Execution Completed
    Close Browser



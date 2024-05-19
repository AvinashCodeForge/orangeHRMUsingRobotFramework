*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***

${browser}   chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user}     Admin
${pw}       admin123


*** Test Cases ***
LoginPage Test

    Open my Browser    ${url}      ${browser}
    Sleep    5
    Enter Username    ${user}
    Enter password    ${pw}
    click SignIn
    Execution Completed



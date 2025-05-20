*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Log in
    [Arguments]    ${username}    ${password}
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    name:username
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Click Button    xpath://button[@type='submit']
    Sleep    2s
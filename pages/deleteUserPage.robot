*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Acessar Página de Admin
    Wait Until Element Is Visible   xpath:(//li[@class='oxd-main-menu-item-wrapper'])[1]
    Click Element    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[1]

Pesquisar Usuário
    [Arguments]    ${username}
    Wait Until Element Is Visible    xpath:(//input[@class='oxd-input oxd-input--active'])[2]
    Input Text       xpath:(//input[@class='oxd-input oxd-input--active'])[2]    ${username}
    Click Button     xpath://button[@type='submit']
    Sleep            2s

Excluir Usuário
    [Arguments]    ${username}
    Wait Until Element Contains    css:[role= table]    ${username}
    Click Element    xpath://button[@type='button']//i[@class='oxd-icon bi-trash']
    Wait Until Element Is Visible    css:[role= document]
    Click Element    xpath://i[@class='oxd-icon bi-trash oxd-button-icon']
    Sleep            2s

Deletar Usuário
    [Arguments]    ${username}
    Acessar Página de Admin
    Pesquisar Usuário    ${username}
    Excluir Usuário      ${username}
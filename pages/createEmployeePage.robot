*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Acessar Página de Empregados
    Wait Until Element Is Visible    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[2]
    Click Element    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[2]
    Wait Until Element Is Visible    xpath://i[@class= 'oxd-icon bi-plus oxd-button-icon']
    Click Element    xpath://i[@class= 'oxd-icon bi-plus oxd-button-icon']

Preencher Nome do Empregado
    [Arguments]    ${first_name}    ${last_name}
    Wait Until Element Is Visible    xpath://i[@class= 'oxd-icon bi-plus']
    Input Text    name:firstName    ${first_name}
    Input Text    name:lastName     ${last_name}

Salvar Empregado
    Click Button    xpath://button[@type='submit']
    Sleep    2s

Criar Empregado
    [Arguments]    ${first_name}    ${last_name}
    Acessar Página de Empregados
    Preencher Nome do Empregado    ${first_name}    ${last_name}
    Salvar Empregado
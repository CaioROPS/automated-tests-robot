*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Acessar Página de Empregados
    Wait Until Element Is Visible   xpath:(//li[@class='oxd-main-menu-item-wrapper'])[2]
    Click Element    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[2]

Pesquisar Empregado
    [Arguments]    ${employee_name}
    Wait Until Element Is Visible    xpath:(//input[@class='oxd-input oxd-input--active'])[2]
    Click Element    xpath:(//div[@class='oxd-autocomplete-text-input oxd-autocomplete-text-input--active'])[1]
    Input Text       xpath:(//input[@placeholder='Type for hints...'])[1]    ${employee_name}
    Click Button     xpath://button[@type='submit']

Excluir Empregado
    Wait Until Element Contains    css:[role= table]    QA
    Click Element    xpath://button[@type='button']//i[@class='oxd-icon bi-trash']
    Wait Until Element Is Visible    css:[role= document]
    Click Element    xpath://i[@class='oxd-icon bi-trash oxd-button-icon']
    Sleep    2s

Deletar Empregado
    [Arguments]    ${employee_name}
    Acessar Página de Empregados
    Pesquisar Empregado    ${employee_name}
    Excluir Empregado
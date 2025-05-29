*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Acessar Página de Admin
    Wait Until Element Is Visible   xpath:(//li[@class='oxd-main-menu-item-wrapper'])[1]
    Click Element    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[1]
    Wait Until Element Is Visible    xpath://i[@class= 'oxd-icon bi-plus oxd-button-icon']
    Click Element    xpath://i[@class= 'oxd-icon bi-plus oxd-button-icon']

Selecionar Status de Usuário
    Wait Until Element Is Visible    xpath://h6[@class='oxd-text oxd-text--h6 orangehrm-main-title']
    Click Element    xpath:(//div[@class='oxd-select-text oxd-select-text--active'])[1]
    Click Element    xpath:(//div[@class='oxd-select-option'])[2]

Preencher Nome de Funcionário
    [Arguments]    ${employee_name}
    Input Text       xpath:(//input[@placeholder='Type for hints...'])[1]    ${employee_name}
    Wait Until Element Contains    xpath:(//div[@class='oxd-autocomplete-option'])[1]    ${employee_name}
    Click Element    xpath:(//div[@class='oxd-autocomplete-option'])[1]

Selecionar Tipo de Acesso
    Click Element    xpath:(//div[@class='oxd-select-text oxd-select-text--active'])[2]
    Click Element    xpath:(//div[@class='oxd-select-option'])[2]

Preencher Credenciais de Usuário
    [Arguments]    ${username}    ${password}    ${confirm_password}
    Input Text       xpath:(//input[@class='oxd-input oxd-input--active'])[2]    ${username}
    Input Password   xpath:(//input[@type='password'])[1]                        ${password}
    Input Password   xpath:(//input[@type='password'])[2]                        ${confirm_password}

Salvar Usuário
    Click Button     xpath://button[@type='submit']
    Sleep           2s

Criar Usuário
    [Arguments]    ${employee_name}    ${username}    ${password}    ${confirm_password}
    Acessar Página de Admin
    Selecionar Status de Usuário
    Preencher Nome de Funcionário    ${employee_name}
    Selecionar Tipo de Acesso
    Preencher Credenciais de Usuário    ${username}    ${password}    ${confirm_password}
    Salvar Usuário
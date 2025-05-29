*** Settings ***
Resource    ../pages/LoginPage.robot
Resource    ../pages/CreateUserPage.robot
Resource    ../pages/CreateEmployeePage.robot

*** Test Cases ***
Criar Empregado com Sucesso
    Log in    Admin    admin123
    Criar Empregado    Teste    QA
    Wait Until Element Is Visible    css:.oxd-text--toast-title    timeout=10s
    Element Should Contain      css:.oxd-text--toast-title    Success
    Close Browser

Criar Usuário com Sucesso
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Automation    Teste123Teste456    Teste123Teste456
    Wait Until Element Is Visible    css:.oxd-text--toast-title    timeout=10s
    Element Should Contain      css:.oxd-text--toast-title    Success
    Close Browser

Criar Usuário com username invalido (quantidade minima de caracteres não atendida)
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Au    Teste123Teste456    Teste123Teste456
    Element Should Be Visible    xpath://span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    Should be at least 5 characters
    Close Browser

Criar Usuário com username invalido (quantidade maxima de caracteres ultrapassada)
    Log in    Admin    admin123
    Criar Usuário    Teste QA    AutomationAutomationAutomationAutomationAutomationAutomationAutomation    Teste123Teste456    Teste123Teste456
    Element Should Be Visible    xpath://span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    Should not exceed 40 characters
    Close Browser

Criar Usuário com password invalido (quantidade minima de caracteres não atendida)
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Automation    1234    1234
    Element Should Be Visible    xpath://span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    Should have at least 7 characters
    Close Browser

Criar Usuário com password invalido (quantidade maxima de caracteres ultrapassada)
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Automation    12345678901234567890123456789012345678901234567890123456789012345678901234567890    12345678901234567890123456789012345678901234567890123456789012345678901234567890
    Element Should Be Visible    xpath://span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    Should not exceed 64 characters
    Close Browser

Criar Usuário com password diferente de confirm password
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Automation    Teste123Teste456    Teste123Teste789
    Element Should Be Visible    xpath://span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    Passwords do not match
    Close Browser
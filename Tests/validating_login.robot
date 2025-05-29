*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/loginPage.robot

*** Test Cases ***
Login com Sucesso
    Log in    Admin    admin123

Login com Falha
    Log in    Admin    admin123456
    Wait Until Page Contains Element    xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    timeout=10s
    Element Should Contain      xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    Invalid credentials
    Sleep            2s

Login com Usuário Admin (validação de case-sensitive)
    Log in    admin    admin123
    Wait Until Page Contains Element    xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    timeout=10s
    Element Should Contain      xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    Invalid credentials
    Sleep            2s

Login com Usuário Admin (validação de case-sensitive na senha)
    Log in    Admin    Admin123
    Wait Until Page Contains Element    xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    timeout=10s
    Element Should Contain      xpath://p[@class= 'oxd-text oxd-text--p oxd-alert-content-text']    Invalid credentials
    Sleep            2s
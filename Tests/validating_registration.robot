*** Settings ***
Resource    ../pages/LoginPage.robot
Resource    ../pages/CreateUserPage.robot
Resource    ../pages/CreateEmployeePage.robot
Resource    ../pages/DeleteUserPage.robot

*** Test Cases ***
Criar Empregado com Sucesso
    Log in    Admin    admin123
    Criar Empregado    Teste    QA
    Close Browser

Criar Usuário com Sucesso
    Log in    Admin    admin123
    Criar Usuário    Teste QA    Automation    Teste123Teste456    Teste123Teste456
    Close Browser
*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/loginPage.robot
Resource    ../pages/createUserPage.robot
Resource    ../pages/deleteUserPage.robot
Resource    ../pages/createEmployeePage.robot
Resource    ../pages/deleteEmployeePage.robot

*** Test Cases ***
Deletar Usuário com Sucesso
    Log in    Admin    admin123
    Deletar Usuário    Automation
    Close Browser

Deletar Empregado com Sucesso
    Log in    Admin    admin123
    Deletar Empregado    Teste QA
    Close Browser
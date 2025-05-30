# Robot Framework
Este projeto foi desenvolvido como um desafio para demonstrar habilidades em automação de testes utilizando Robot Framework.

## Índice
- [Visão Geral](#visão-geral)
- [Pré-requisitos](#pré-requisitos)
- [Como Clonar e Configurar](#como-clonar-e-configurar)
- [Como Instalar o Cypress](#como-instalar-o-cypress)
- [Executando os Testes](#executando-os-testes)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Contato](#contato)

---

## Visão Geral 
O projeto utiliza o Selenium WebDriver para automação de testes em aplicações web. Os testes são organizados com o Pytest, facilitando a execução e manutenção.

---

## Pré-requisitos 
Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:
- Python (versão 3.7 ou superior)
- Google Chrome
- ChromeDriver compatível com sua versão do Chrome
- Editor de código (recomendado: VSCode)

---

## Como Clonar e Configurar 
Siga os passos abaixo para baixar e configurar o projeto:

```bash
# Clone o repositório
git clone https://github.com/CaioROPS/automated-tests-robot.git

# Acesse o diretório do projeto
cd automated-tests-robot

--

## Como Instalar
Abra o cmd: (Windowns + R) e digite cmd, aperte em OK
pip --version (Para consultar versão do pip)

pip install robotframework (Para instalar o Robot)

pip install robotframework-seleniumlibrary (Para instalar o selenium library)

---

## Executando os Testes 

Para executar os testes:
# 1. Abra o Terminal
robot validating_login.robot

## Estrutura do Projeto 
automated-tests-robot/
├── pages/
│   ├── createEmployeePage.robot
│   ├── createUserPage.robot
│   ├── deleteEmployeePage.robot
│   ├── deleteUserPage.robot
│   └── loginPage.robot
│
├── Tests/
│   ├── validating_deletion.robot
│   ├── validating_login.robot
│   └── validating_registration.robot
│
├── .gitattributes
├── .gitignore
└── README.md   

##Contato 
Caso tenha dúvidas ou precise de suporte, entre em contato:

Nome: Caio Ricardo
E-mail: caio.rops99@gmail.com
GitHub: CaioROPS

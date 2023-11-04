*** Settings ***
Documentation        Essa suite de teste realiza o cadastro de um novo usuário no site
...                  'https://phptravels.com/demo/'
Resource             phptravels_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
Caso de Teste 1 – criar um novo cadastro com sucesso
    [Documentation]    Essa suite realiza o cadastro de um usuário novo usuário no site 'https://phptravels.com/demo/'
    [Tags]             cadastro
    Dado que o usuário esteja no site https://phptravels.com/demo/
    Quando preencher todos os dados com dados válidos
    E realizar o calculo da soma e preencher no campo Result
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem “Thank you!”
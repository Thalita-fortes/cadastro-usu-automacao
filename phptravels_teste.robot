*** Settings ***
Documentation        Essa suite o site 'https://phptravels.com/demo/'
Resource             phptravels_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
Caso de Teste 1 - Criar um novo cadastro com sucesso
    [Documentation]    Essa suite realiza o cadastro de um usuário novo usuário no site 'https://phptravels.com/demo/'
    [Tags]             cadastro
    Acessar a home page do site https://phptravels.com/demo/
    Visualizar o titulo do formulario "Book Your Free Demo Now - Phptravels"
    Criar um usuário novo
    Realizar o calculo da soma e preencher no campo Resulto
    Clicando no botão Submit
    Visualizando na tela a mensagem “Thank you!”
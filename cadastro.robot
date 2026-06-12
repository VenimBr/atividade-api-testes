*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:3000/cadastro

*** Test Cases ***
Cadastro Valido

    Open Browser    ${URL}    chrome

    Input Text    id=nome    João

    Input Text    id=email    joao@email.com

    Input Text    id=senha    12345678

    Input Text    id=confirmarSenha    12345678

    Click Button    id=btnCadastrar

    Element Text Should Be
    ...    id=mensagem
    ...    Cadastro realizado com sucesso

    Sleep    2s

    Close Browser
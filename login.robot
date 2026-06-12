*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:3000/login

*** Test Cases ***
Login Valido

    Open Browser    ${URL}    chrome

    Input Text    id=email    usuario@email.com

    Input Text     id=senha    12345678

    Click Button     id=btnLogin

    Element Text Should Be
    ...    id=mensagem
    ...    Login realizado com sucesso

    Sleep    2s

    Close Browser
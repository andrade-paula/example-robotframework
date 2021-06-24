*** Settings ***
Library     app.py

*** test Cases ***
Deve retornar mensagem de boas vindas 
    ${result}=      Welcome     Fernando 
    Should Be Equal     ${result}     Olá Fernando, Bem vindo ao curso basico de robotframework!
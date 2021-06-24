*** Settings ***
Library     SeleniumLibrary
Test Setup      Nova sessão
Test Teardown   Encerra sessão
*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com/
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://form[@id='checkboxes']//input[@value='black-panther']
*** Test Cases ***
Marcando opção com Id
    Open Browser                    ${url}          chrome      
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Close Browser

Marcando opção com CSS Selector
    
    Open Browser    ${url}          chrome 
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Sleep                           5
    Close Browser

Marcando opção com Xpath
    [tags]      ironman
    Open Browser    ${url}          chrome 
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           5
    Close Browser
*** Keywords ***
Nova sessão
    Open Browser        ${url}          chrome

Encerra sessão
    Close Browser
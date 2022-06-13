*** Settings ***

Library        SeleniumLibrary

*** Variables ***


*** Keywords ***
### AÇÕES ###
Informar um e-mail válido
    Wait Until Element Is Visible    locator=//h1[@class='page-heading'][contains(.,'Authentication')]
    Click Element    locator=//input[@type='text'][contains(@id,'create')]
    Input Text       locator=//input[@type='text'][contains(@id,'create')]    text=elielson.elrick@gmail.com
Clicar em "Create an account"
    Click Element    locator=//input[@type='text'][contains(@id,'create')]
    
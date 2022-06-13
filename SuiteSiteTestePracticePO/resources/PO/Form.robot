*** Settings ***
Library        SeleniumLibrary


*** Variables ***


*** Keywords ***
Preencher os dados obrigatórios
    ### YOUR PERSONAL INFORMATION
    Wait Until Element Is Visible        locator=//h1[@class='page-heading'][contains(.,'Create an account')]
    Click Element    locator=//input[@type='radio'][contains(@id,'gender1')]
    Click Element    locator=//input[contains(@name,'customer_firstname')]
    Input Text       locator=//input[contains(@name,'customer_firstname')]    text=Elielson
    Click Element    locator=//input[contains(@name,'customer_lastname')] 
    Input Text       locator=//input[contains(@name,'customer_lastname')]     text=Silva
    Click Element    locator=//input[contains(@type,'password')]
    Input Password   locator=//input[contains(@type,'password')]              password=123456
    Click Element    locator=//select[contains(@name,'days')]
    Click Element    locator=//option[@value='16'][contains(.,'16')]
    Click Element    locator=//select[contains(@name,'months')]
    Click Element    locator=//option[@value='7'][contains(.,'July')]
    Click Element    locator=//select[contains(@name,'years')]
    Click Element    locator=//option[@value='1993'][contains(.,'1993')]
    Click Element    locator=//input[contains(@name,'newsletter')]
     ### ADRESS ###
    Click Element    locator=//input[@name='firstname']
    Input Text       locator=//input[@name='firstname']            text=Elielson
    Click Element    locator=//input[@name='lastname'] 
    Input Text       locator=//input[@name='lastname']             text=Silva
    Click Element    locator=//input[contains(@name,'company')] 
    Input Text       locator=//input[contains(@name,'company')]    text=Chapa, House 
    Click Element    locator=//input[contains(@name,'address1')]
    Input Text       locator=//input[contains(@name,'address1')]    text=Pereira, Abreu
    Click Element    locator=//input[contains(@class,'form-control uniform-input text')]
    Input Text       locator=//input[contains(@class,'form-control uniform-input text')]    text=São Paulo
    Click Element    locator=//input[contains(@name,'address2')]
    Input Text       locator=//input[contains(@name,'address2')]    text=suite
    Click Element    locator=//input[contains(@name,'city')]
    Input Text       locator=//input[contains(@name,'city')]        text=São paulo
    Click Element    locator=//select[@name='id_state'][contains(@id,'state')]
    Click Element    locator=//option[@value='16'][contains(.,'Kansas')]
    Click Element    locator=//input[contains(@class,'form-control uniform-input text')]
    Input Text       locator=//input[contains(@class,'form-control uniform-input text')]    text=00000
    Click Element    locator=//input[@name='phone']
    Input Text       locator=//input[@name='phone']                 text=1234-4321
    Click Element    locator=//input[@type='text'][contains(@id,'mobile')]
    Input Text       locator=//input[@type='text'][contains(@id,'mobile')]                   text=99876-5432
    Click Element    locator=//input[contains(@name,'alias')]        
    Input Text       locator=//input[contains(@name,'alias')]    text=ziguezum@gmail.com

Submeter cadastro
    Click Element    locator=//span[contains(.,'Register')]
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    locator=//h1[@class='page-heading'][contains(.,'My account')]
   
      

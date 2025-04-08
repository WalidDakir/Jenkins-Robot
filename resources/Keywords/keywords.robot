*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Login User
    [Arguments]    ${email}    ${password}
    Input Text    id=email    ${email}
    Input Text    id=password    ${password}
    Click Button    xpath=//button[@class='action login primary']    
    Wait Until Element Is Visible    xpath=//button[@class='action tocart']   
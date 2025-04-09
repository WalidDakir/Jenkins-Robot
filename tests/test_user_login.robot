*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot


*** Test Cases ***
Test User Login
    Open Magento Website    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login As User           ${EMAIL}    ${PASSWORD}
    Verify Login Success
    Close Browser
#test

*** Settings ***




*** Test Cases ***
Test User Login
    Open Magento Website    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login As User           ${EMAIL}    ${PASSWORD}
    Verify Login Success
    Close Browser
#test

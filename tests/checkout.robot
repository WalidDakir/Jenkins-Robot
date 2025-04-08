*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Checkout Page
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//span[contains(text(),'Shopping Cart')]
    Wait Until Page Contains    "Shopping Cart"
    Click Element    xpath=//a[contains(text(),'Proceed to Checkout')]
    Wait Until Page Contains    "Checkout"
    Close Browser

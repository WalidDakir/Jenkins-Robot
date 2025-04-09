*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Checkout Page
    Open Browser    ${URL}    ${BROWSER}
    Login As User  ${email}    ${password} 
    Add Product To Cart      168    57
    Checkout
    Close Browser 

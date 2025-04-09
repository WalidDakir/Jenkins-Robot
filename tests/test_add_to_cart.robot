*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Add Product To Cart
    Open Browser    ${URL}    ${BROWSER}
    Add Product To Cart   168    57  
    Close Browser

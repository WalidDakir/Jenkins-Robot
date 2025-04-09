*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Product Search
    Open Browser    ${URL}    ${BROWSER}
    Product Search    
    Close Browser


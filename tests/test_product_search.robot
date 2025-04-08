*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Product Search
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=search   hoodie
    Press Keys      id=search   ENTER
    Wait Until Page Contains    "Search results"
    Page Should Contain    "hoodie"
    Close Browser

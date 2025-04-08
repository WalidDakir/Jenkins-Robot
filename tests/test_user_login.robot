*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test User Login
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//span[contains(text(),'Sign In')]
    Input Text      id=email    testuser@example.com
    Input Text      id=password    password123
    Click Element    xpath=//button[@type='submit']
    Wait Until Page Contains    "Welcome, Test User"
    Close Browser

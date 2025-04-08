*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}  chrome

*** Test Cases ***
Test Add Product To Cart
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//a[contains(text(), 'Men’s Hoodie')]
    Wait Until Element Is Visible    id=product-addtocart-button
    Click Element    id=product-addtocart-button
    Wait Until Page Contains    "You added"
    Close Browser

*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open Magento Website
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Login As User
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    xpath=//a[contains(text(),'Sign In')]    timeout=10s
    Click Element    xpath=//a[contains(text(),'Sign In')]
    Wait Until Element Is Visible    id=email    timeout=10s
    Input Text      id=email    ${EMAIL}
    Input Text      id=pass    ${PASSWORD}
    Wait Until Element Is Visible    xpath=//button[@type='submit']    timeout=10s
    Click Element    xpath=//a[contains(text(),'Sign In')]
   

Verify Login Success
   Wait Until Element Is Visible    xpath=//span[@class='base' and @data-ui-id='page-title-wrapper']    10s
   
Add Product To Cart
    [Arguments]    ${size}    ${color}
    Input Text      id=search   hoodie
    Press Keys      id=search   ENTER
    Wait Until Page Contains    Search results
    Click Element    xpath=//a[contains(text(),'Oslo Trek Hoodie')]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Add to Cart')]  3s
    Click Element    xpath=//*[@id="option-label-size-143-item-168"]
    Click Element    xpath=//*[@id="option-label-color-93-item-57"]
    Click Element    xpath=//span[contains(text(),'Add to Cart')]
    Wait Until Page Contains    You added
  
Product Search    
   
    Input Text      id=search   hoodie
    Press Keys      id=search   ENTER
    Wait Until Page Contains    Search results
    Page Should Contain    Oslo Trek Hoodie

Checkout 
 
    Click Element    xpath=/html/body/div[2]/header/div[2]/div[1]/a
    Click Element    xpath=//*[@id="top-cart-btn-checkout"]
    Wait Until Page Contains    Shipping Address

    
    #test1
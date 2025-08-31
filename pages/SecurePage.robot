*** Settings ***
Resource    ../resources/BasePage.robot

*** Variables ***
${secure_text_locator}    xpath=//div[contains(text(), 'You logged into a secure area!')]
${logout_locator}    xpath=//a[contains(@href, 'logout')]

*** Keywords ***
Wait for Secure page to load
    Wait Until Element Is Visible    ${secure_text_locator}    ${TIMEOUT}
Logout
    Wait Until Element Is Visible    ${logout_locator}
    Click Element    ${logout_locator}

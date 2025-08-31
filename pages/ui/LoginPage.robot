*** Settings ***
Resource    ../resources/BasePage.robot

*** Variables ***
${username_locator}    id=username
${password_locator}    id=password
${login_button_locator}    xpath=//button[@type='submit']

*** Keywords ***
Perform Login
    [Arguments]    ${username}    ${password}
    Input Text    ${username_locator}    ${username}
    Input Text    ${password_locator}    ${password}
    Wait Until Element Is Visible    ${login_button_locator}
    Click Button    ${login_button_locator}

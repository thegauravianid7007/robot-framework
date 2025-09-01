*** Settings ***
Resource    ../../pages/BasePage.robot

*** Variables ***
${username_locator}    id=username
${password_locator}    id=password
${login_button_locator}    xpath=//button[@type='submit']
${invalid_login_locator}    id=flash
${invalid_login_message}    invalid!

*** Keywords ***
Perform Login
    [Arguments]    ${username}    ${password}
    Input Text    ${username_locator}    ${username}
    Input Text    ${password_locator}    ${password}
    Wait Until Element Is Visible    ${login_button_locator}
    Click Button    ${login_button_locator}

Login Should Fail
    Wait Until Element Is Visible    ${invalid_login_locator}
    RETURN    Element Should Contain Text    ${invalid_login_locator}    ${invalid_login_message}

*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource    ../resources/variables.robot

*** Keywords ***
Element Should Contain Text
    [Arguments]    ${locator}    ${expected_text}
    ${text} =    Get Text    ${locator}
    ${result} =    Run Keyword And Return Status    Should Contain    ${text}    ${expected_text}
    RETURN    ${result}
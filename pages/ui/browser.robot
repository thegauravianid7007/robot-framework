*** Settings ***
Resource    ../../pages/BasePage.robot

*** Keywords ***
Open Login Page
    Open Browser  ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window

Close Browser Session
    Close Browser
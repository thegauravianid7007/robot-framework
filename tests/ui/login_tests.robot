*** Settings ***
Resource    ../../pages/ui/browser.robot
Resource    ../../pages/ui/LoginPage.robot
Resource    ../../pages/ui/SecurePage.robot
Test Setup    Open Login Page
Test Teardown    Close Browser Session

*** Test Cases ***
Valid Login should work
    [Tags]    smoke    login
    Perform Login    ${USERNAME}    ${PASSWORD}
    Wait for Secure page to load
    Logout
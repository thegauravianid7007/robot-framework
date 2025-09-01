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

Invalid Login should not work
    [Template]    Invalid Login Flow
    wrongUser    ${PASSWORD}
    ${USERNAME}    wrongPassword
    wrongUser    wrongPassword

*** Keywords ***
Invalid Login Flow
    [Arguments]    ${username}    ${password}
    Perform Login    ${username}    ${password}
    ${result} =    Login Should Fail
    Should Be True    ${result}
*** Settings ***
Resource    ../../resources/BasePage.robot

*** Keywords ***
Get Weather Forecast
    [Arguments]    ${latitude}    ${longitude}
    Create Session    weather    ${API_BASE_URL}
    ${params}=    Create Dictionary    latitude=${latitude}    longitude=${longitude}    hourly=temperature_2m
    ${response}=    GET On Session    weather    /forecast    params=${params}
    RETURN    ${response}
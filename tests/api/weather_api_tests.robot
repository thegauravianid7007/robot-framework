*** Settings ***
Resource    ../../pages/api/WeatherForecast.robot

*** Test Cases ***
Validate Weather Forecast Response
    ${response} =    Get Weather Forecast    31.3260    75.5762
    Status Should Be    200    ${response}
    Should Contain    ${response.text}    temperature_2m

*** Settings ***
Library           AppiumLibrary
Test Setup        Open APP
Test Teardown     Close Application

*** Variables ***
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       iOS
${PLATFORM_VERSION}    9.1
${DEVICE_NAME}         iPhone 6s
${APP}                 /Users/somkiat/Desktop/demo/app/FizzBuzz.app
${UDID}                b60853cb124840687200e2e4e9bbb8234c60019e

*** Testcases ***
Count 1
    Click Element    accessibility_id=numberButton
    Wait Until Page Contains    1

Count 2
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Wait Until Page Contains    2

Count 3
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzButton
    Wait Until Page Contains    3


Count 5
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=buzzButton
    Wait Until Page Contains    5

Count 15
    [Tags]   dev
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=buzzButton
    Click Element    accessibility_id=fizzButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzButton
    Click Element    accessibility_id=buzzButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=numberButton
    Click Element    accessibility_id=fizzBuzzButton
    Wait Until Page Contains    15



*** Keywords ***
Open APP
    Open Application   ${REMOTE_URL}  alias=Myapp1   platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}   deviceName=${DEVICE_NAME}   app=${APP}   udid=${UDID}

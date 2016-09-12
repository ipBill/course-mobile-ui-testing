*** Settings ***
Library           AppiumLibrary
Test Setup        Open APP
Test Teardown     Close Application

*** Variables ***
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    4.4
${DEVICE_NAME}         AndroidTest
${APP}                 /Users/somkiat/data/coaching/kbank/ksme/FizzBuzz/app/build/outputs/apk/app-debug.apk

*** Testcases ***
Count 1
    [Tags]   dev
    Click Element    id=numberButton
    Wait Until Page Contains Element    android=new UiSelector().resourceId("fizzbuzz.demo.fizzbuzz:id/score").text("1")

Count 2
    Click Element    id=numberButton
    Click Element    id=numberButton
    Wait Until Page Contains Element    android=new UiSelector().text("2")

Count 3
    Click Element    id=numberButton
    Click Element    id=numberButton
    Click Element    id=fizzButton
    Wait Until Page Contains Element    android=new UiSelector().text("3")


Count 5
    Click Element    id=numberButton
    Click Element    id=numberButton
    Click Element    id=fizzButton
    Click Element    id=numberButton
    Click Element    id=buzzButton
    Wait Until Page Contains Element    android=new UiSelector().text("5")

Count 15
    Click Element    id=numberButton
    Click Element    id=numberButton
    Click Element    id=fizzButton
    Click Element    id=numberButton
    Click Element    id=buzzButton
    Click Element    id=fizzButton
    Click Element    id=numberButton
    Click Element    id=numberButton
    Click Element    id=fizzButton
    Click Element    id=buzzButton
    Click Element    id=numberButton
    Click Element    id=fizzButton
    Click Element    id=numberButton
    Click Element    id=numberButton
    Click Element    id=fizzBuzzButton
    Wait Until Page Contains Element    android=new UiSelector().text("15")



*** Keywords ***
Open APP
    Open Application   ${REMOTE_URL}  alias=Myapp1   platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}   deviceName=${DEVICE_NAME}   app=${APP}

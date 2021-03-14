*** Settings ***
Documentation    Testing Infotiv Car Rental
Library          SeleniumLibrary

*** Test Cases ***
Uer can access website
    [Documentation]              Testing so that the webpage opens properly
    [Tags]                       Test 1
    Open browser                 about:blank     chrome
    Go To                        http://rental9.infotiv.net/webpage/html/gui/index.php
    Wait until page contains     Infotiv Car Rental
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental
    Click element                id:title
    Wait until page contains     Infotiv Car Rental
    Click element                id:continue
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental
    Click element                id:about
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental
    Click element                id:createUser
    Wait until page contains     Create user
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental
    Input text                   id:email   hejhopp@wasd.com
    Input password               id:password    wasddsaw
    Click element                id:login
    Wait until page contains     Infotiv Car Rental
    Close browser



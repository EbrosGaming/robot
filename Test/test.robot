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
    Close browser



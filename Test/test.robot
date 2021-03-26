*** Settings ***
Documentation    Testing Infotiv Car Rental
Library          SeleniumLibrary

*** Test Cases ***
Uer can access website, click around it and logg in
    [Documentation]              Testing so that the webpage opens properly, click around it and logg in
    [Tags]                       Test 1

    #Testar så att sidan öppnas koreckt
    Open browser                 about:blank     chrome
    Go To                        http://rental9.infotiv.net/webpage/html/gui/index.php
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på loggan
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på titlen
    Click element                id:title
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på continue och sen loggan så att man kommer tillbaka tll startsidan
    Click element                id:continue
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på about och sen loggan så att man kommer tillbaka till startsidan
    Click element                id:about
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på create user och sen loggan så att man kommer tillbaka till startsidan
    Click element                id:createUser
    Wait until page contains     Create user
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att logga in med ett förskapat konto
    Input text                   id:email   hejhopp@wasd.com
    Input password               id:password    wasddsaw
    Click element                id:login
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att klicka på my page och sen loggan för att komma tillbaka till startsidan
    Click element                id:mypage
    Wait until page contains     Mypage
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    Input text                   id:start   03-30
    Input text                   id:end     03-30
    Click element                id:continue
    Wait until page contains     Infotiv Car Rental

User can book a car, return it and create a new user
    [Documentation]              Testing so that you can book, return and create a new user
    [Tags]                       Test 2

    #Testar så att det går att boka en bil
    Click element                id:bookRoadsterpass2
    Input text                   id:cardNum     6969696969696969
    Input text                   id:fullName    Hej Hopp
    Click element                id:month7
    Click element                id:month2022
    Input text                   id:cvc     420
    Click element                id:confirm

    #Testar så att det går att gå in på my page och sen att avboka bilen som nyss bokades
    Click element                id:mypage
    Wait until page contains     Mypage
    Click element                id:unBook1
    Handle alert                 accept
    Click element                id:logo
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att logga ut
    Click element                id:logout
    Wait until page contains     Infotiv Car Rental

    #Testar så att det går att skapa ett nytt konto
    Click element                id:createUser
    Wait until page contains     Create user
    Input text                   id:name    Apa
    Input text                   id:last    Lapa
    Input text                   id:phone   1234206969
    Input text                   id:emailCreate   apa@lapa.com
    Input text                   id:confirmEmail   apa@lapa.com
    Input password               id:passwordCreate   apa123
    Input text                   id:confirmPassword  apa123
    Click element                id:create
    Wait until page contains     Infotiv Car Rental

    Close browser



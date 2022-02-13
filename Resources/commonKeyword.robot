*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py

*** Variables ***
${browser}             chrome
${SiteUrl}              https://igos.edxops.com/
${x}                    1000
*** Keywords ***
Open_Browsers
    [Arguments]  ${SiteUrl}    ${browser}
    Open browser  ${SiteUrl}    ${browser}
    maximize browser window

Start new browser session
    Delete all cookies
    Reload page

Click menu ShoppingCart
    click element  ${menuShoppingCart}

Select menu MyGosTmAccount
    click element    ${menuMyGosTMAccount}

Select menu SignOutMyGosTmAcount
    click element    ${menuSignoutMyAcct}

Click SignIn Now button
    click element       ${btnSignInNow}

Select SignOutMyAccount
    Click element     ${menuSignoutMyAcct}

Scroll
    Execute Javascript    $(document).scrollTop(${x})



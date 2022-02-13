*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Resource             ../Resources/MyAccountKeyword.robot
Resource    ../Resources/commonKeyword.robot


*** Test Cases ***
MyAccount

    Open_Browsers            ${SiteUrl}    ${browser}
    Click menu ShoppingCart
    Select menu MyGosTmAccount
    Select MyGosTmAccount item
    element text should be  ${labelWellcome}     Welcome to DEMO - GOS™ System
    close browser
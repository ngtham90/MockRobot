*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0

Resource    ../Resources/LoginKeyword.robot
Resource    ../Resources/commonKeyword.robot



*** Variables ***
${password}              12312


*** Test Cases ***
Login successfully

   Open_Browsers            ${SiteUrl}    ${browser}
   Click menu ShoppingCart
   Select menu MyGosTmAccount
   Select menu SignOutMyGosTmAcount
   Click SignIn Now button

    Enter Password          ${password}
    click signin button
    Element Text Should Be     ${labelPaymentInfo}     Payment Information
    close browser


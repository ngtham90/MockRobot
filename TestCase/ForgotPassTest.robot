*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Resource             ../Resources/ForgotPassKeyword.robot
Resource    ../Resources/commonKeyword.robot


*** Variables ***
${email}                tham.0909@gmail.com



*** Test Cases ***
ForgotPass


      Open_Browsers            ${SiteUrl}    ${browser}
      Click menu ShoppingCart
     Select menu MyGosTmAccount
     Select menu SignOutMyGosTmAcount

     click Signin Now button
     click Lost your password
     Enter Email    ${email}
     Click Recover Now button
     element text should be  ${labelCreateAcc}          CREATE a new myGOS™ Account
     close browser
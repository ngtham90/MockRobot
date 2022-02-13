*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Resource             ../Resources/SignUpKeyword.robot
Resource        ../Resources/commonKeyword.robot


*** Variables ***
${email}                tham.0909@gmail.com
${name}                 Tham Nguyen
${Phone}                0976496456




*** Test Cases ***
SignUp

         Open_Browsers            ${SiteUrl}    ${browser}
         Click menu ShoppingCart
         Select menu MyGosTmAccount
         Select SignOutMyAccount
        Click CreatMyAccount button
        Enter Email   ${email}
        Enter FullName   ${name}
        Enter MobileNumber      ${phone}
        Select Gender
        Select Status
        Click Create Account button
        element text should be  ${lableMyGosAccount}     myGOS™ Account
        close browser

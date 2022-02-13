*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Resource             ../Resources/ChangePassKeyword.robot
Resource           ../Resources/commonKeyword.robot


*** Variables ***
${CurPass}             123123
${NewPass}             123456a@
${confirmPass}          123456a@


*** Test Cases ***
ChangePass

        Open_Browsers            ${SiteUrl}    ${browser}
         Click menu ShoppingCart
        Select menu MyGosTmAccount

         Select ChangePassword menu
         Enter Current Password        ${CurPass}
         Enter New Password           ${NewPass}
         Enter confirm Password           ${ConfirmPass}
         Click Change Password button
         element text should be    ${lableMyAccLogin}        mySOP™ Account Login
         close browser

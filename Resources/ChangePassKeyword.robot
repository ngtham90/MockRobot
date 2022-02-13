*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py




*** Keywords ***
Select ChangePassword menu
    click element     ${menuChangePass}

Enter Current Password
    [Arguments]  ${CurPass}
    Input text   ${txtCurrentPass}      ${CurPass}

Enter New Password
    [Arguments]         ${NewPass}
    Input text          ${txtNewPass}         ${NewPass}

Enter confirm Password
    [Arguments]         ${ConfirmPass}
    Input text          ${txtConfirmPass}         ${ConfirmPass}

Click Change Password button
    click link        ${btnChangePass}




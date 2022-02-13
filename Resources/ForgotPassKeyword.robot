*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py


*** Keywords ***


click Lost your password
    click element  ${lnkForgotPwd}

Enter Email
    [Arguments]        ${email}
    Input text      ${txtEmail}    ${email}

Click Recover Now button
    Click element           ${btnRecoverNow}



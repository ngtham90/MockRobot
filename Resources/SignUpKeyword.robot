*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py


*** Keywords ***
Click CreatMyAccount button
    click element         ${btnCreateMyGosAccount}

Enter Email
    [Arguments]      ${email}
    Input text    ${txtEmailAddress}      ${email}

Enter FullName
    [Arguments]     ${name}
    input text      ${txtFullName}         ${name}

Enter MobileNumber
    [Arguments]         ${phone}
    input text      ${txtPhone}         ${phone}

Select Gender
    Click element           ${rdoGenderFemale}

Select Status
    Click element       ${rdoMaritalStatusMarried}

Click Create Account button
    Click element        ${btnCreateAccount}








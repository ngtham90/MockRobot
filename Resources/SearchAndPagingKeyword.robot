*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py

*** Keywords ***

Enter keyword into textbox
    [Arguments]           ${keyword}
    input text    ${txtSearch}    ${keyword}

Click Search button
    click element    ${btnSearch}

Click Displaymore button
    click element   ${btnDisplayMoreBeforeClick}







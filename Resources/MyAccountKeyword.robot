*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0
Variables          ../PageObject/Locators.py

*** Keywords ***

Select MyGosTmAccount item
    click element   ${menuMyAcct}



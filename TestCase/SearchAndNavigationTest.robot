*** Settings ***
Library           Selenium2Library       run_on_failure=Capture Page Screenshot     timeout=10.0     implicit_wait=0.0

Resource    ../Resources/SearchAndPagingKeyword.robot
Resource    ../Resources/commonKeyword.robot

*** Variables ***
${keyword}             TV
${lable1}     How many inch you want to find?
${lable2}     \nTV 24-30 inch  TV 32-43 inch  TV 44-54 inch
${lable3}     \nTV 55-64 inch  TV 65-74 inch   TV   >= 75 inch


*** Test Cases ***
Searching
        Open_Browsers            ${SiteUrl}    ${browser}
        Enter keyword into textbox      ${keyword}
        Click Search button
        Element should contain   ${lableResult}      ${lable1}

Navigation
        Click Displaymore button
        element should not be visible    ${btnDisplayMoreBeforeClick}
        close browser
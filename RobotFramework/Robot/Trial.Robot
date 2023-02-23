*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***

 Login
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Get Title
    Login-To-Application
    

*** Keywords ***

Login-To-Application

    Click Link    xpath://a[contains(text(),'Log in')]
    Sleep    3
    Input Text    xpath://input[@id='Email']  warany578@gmail.com
    Input Text    xpath://input[@id='Password']  yogeshwa
    Sleep    5
    Click Element   xpath://button[contains(text(),'Log in')]
    


*** Settings ***

# Library    SeleniumLibrary
Library    RPA.Browser.Selenium    auto_close=${False}

*** Variables ***

${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***

 Login
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Login-To-Application
    

*** Keywords ***

Login-To-Application

       Sleep    5
       ${Title}      Get Title
       Log To Console     ${Title}  
       ${UserName}    Set Variable     xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]
       Input Text    ${UserName}    Admin
       Sleep    5
       Clear Element Text   ${UserName}
       Sleep    5
       Close Browser
    #    Input Text    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]   Admin
    #    Input Text    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]   admin123
    #    Sleep    3
    #    Click Element    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
    #    Sleep    5
    #    Click Element    xpath://header/div[1]/div[2]/ul[1]/li[1]/span[1]/i[1]
    #    Sleep    3    
    #    Click Element    xpath://a[contains(text(),'Logout')]
    #    Sleep    3
      
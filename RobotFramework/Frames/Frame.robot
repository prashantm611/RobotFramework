*** Settings ***

# Library    SeleniumLibrary
Library    RPA.Browser.Selenium    auto_close=${False}


*** Variables ***

${URL}       https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome


*** Test Cases ***

 Frame_Practice
    Open browser    ${URL}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1
    Demo
    

*** Keywords ***
Demo    
        
        Select Frame    packageListFrame
        Click Link    org.openqa.selenium
        Unselect Frame     
        Select Frame    packageFrame
        Click Link    Alert
        Unselect Frame
        Select Frame    classFrame
        Click Link    package-tree.html
        

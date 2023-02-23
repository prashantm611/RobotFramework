*** Settings ***

# Library    SeleniumLibrary
Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.Desktop.Windows

*** Variables ***

${url}    https://rahulshettyacademy.com/dropdownsPractise/
${browser}    chrome


*** Test Cases ***

 HomePage
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Task-1
    

*** Keywords ***

Task-1
       
        Sleep    5
        ${Title}   Get Title
        Log To Console    ${Title}
        #Departure City
        Click Element    xpath://input[@id='ctl00_mainContent_ddl_originStation1_CTXT']      
        Send Keys    MAA
        Sleep    2
        #Arrival City
        Click Element    xpath://input[@id='ctl00_mainContent_ddl_destinationStation1_CTXT']
        Sleep    2        
        Send Keys     CJB
        Sleep    2
        #Depart Date
        Click Element    xpath://input[@id='ctl00_mainContent_view_date1']
        Sleep    2
        Click Element    xpath://body[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/a[1]
        Sleep    2
        #Return Date
        Click Element    xpath://input[@id='ctl00_mainContent_view_date2']
        Sleep    2
        Click Element    xpath://body[1]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]/a[1]
        Sleep    2
        #Passengers
        Click Element    xpath://div[@id='divpaxinfo']
        Sleep    2
        #Adult
        Double Click Element    xpath://span[@id='hrefIncAdt']
        Sleep    2
        #Child
        Double Click Element    xpath://span[@id='hrefIncChd']
        Sleep    3
        #Done
        Click Element    xpath://input[@id='btnclosepaxoption']
        Sleep    2
        
        #Radio Button                   "Name"                    "Value"
        Select Radio Button    ctl00$mainContent$rbtnl_Trip      RoundTrip  
        Sleep    3
        #CheckBox For Selecting  "Values"
        Select Checkbox    ctl00$mainContent$chk_SeniorCitizenDiscount
        Sleep    3
        #CheckBox For UnSelecting
        Unselect Checkbox    ctl00$mainContent$chk_SeniorCitizenDiscount
        Sleep    3
        Select Checkbox    ctl00$mainContent$chk_friendsandfamily
        Sleep    3
        #DropDown                                "Name"                       "Value"
        Select From List By Label    ctl00_mainContent_DropDownListCurrency    USD
        Sleep    5
        Close Browser
  
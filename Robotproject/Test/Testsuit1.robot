*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.google.com/
${BROWSER}        chrome 

*** Test Cases ***
OpenBrowser
    Open Browser To Login Page
    Maximize Browser Window
    Input Text    name=q     robotframeworktuto
    Press Keys    name=q      ENTER
    #Click Button    name=btnK        
    Sleep    5    
    [Teardown]    Close Browser
    

Logintest
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome 
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Username    Admin
    Input Password    admin123 
    Submit Credentials   
    Click Element     id=welcome    
    Sleep    3     
    Click Element    Link=Logout
    [Teardown]    Close Browser       
*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

Input Username
    [Arguments]    ${username}
    Input Text      id=txtUsername   ${username}

Input Password
    [Arguments]    ${password}
    Input Text     id=txtPassword    ${password}

Submit Credentials
    Click Button    id=btnLogin

   



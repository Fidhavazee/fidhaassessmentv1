*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot

*** Variables ***

${browser}    Chrome
${url}    https://woocommerce-850415-2933260.cloudwaysapps.com/my-account
${customername}    test_customer
${password}    password        

*** Test Cases ***
Test Login
    [Documentation]    Test login functionality
    [Tags]    login
    Login    ${url}    ${browser}
    Enter username    ${customername}
    Enter password    ${password} 
    Sign in
    Close Browser
  


    

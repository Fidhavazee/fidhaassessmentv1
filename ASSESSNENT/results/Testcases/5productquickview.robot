*** Settings ***
*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot

*** Variables ***
${url}    https://woocommerce-850415-2933260.cloudwaysapps.com/shop
${browser}    Chrome
${description}    DES WEREW EWRWE EWRWE
${phonenumber}    9876543210
${color}    Red
${orientation_mode}    Landscape

*** Test Cases ***
Product quick view test
    Open browser product quick view    ${url}    ${browser}       
    Choose color    ${color}               
    Choose orientation    ${orientation_mode}
    Add description    ${description} 
    file upload
    Add Border
    Add cart
    Verification for quick view add product success

    
    
   
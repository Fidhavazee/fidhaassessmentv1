*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot

*** Variables ***
${url}    https://woocommerce-850415-2933260.cloudwaysapps.com/product/rf-id-card
${description}    DES WEREW EWRWE EWRWE
${phonenumber}    abcdefgh 
${color}    Red
${orientation_mode}    Landscape
${Phonenumber}    abcdefgh    
${browser}    Chrome  

*** Test Cases ***

Open Browser fro field validation testcase
    
    Open Browser To URL   ${url}    ${browser}    
    Choose color    ${color}
    Choose orientation    ${orientation_mode}
    Add description    ${description} 
    Add phone number    ${Phonenumber}
    file upload 
    Add Border
    Add to cart 
    Verification for phone number validation
    Close Browser
    



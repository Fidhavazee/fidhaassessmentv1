*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot

*** Variables ***
${url}    https://woocommerce-850415-2933260.cloudwaysapps.com/product/rf-id-card
${phonenumber}    9876543210
${file_path}      downloads/test.png
${browser}    chrome
${color}    Red
${orientation_mode}    Landscape
${description}    DES WEREW EWRWE EWRWE  
${Phonenumber}    9876543210
    
*** Test Cases ***
Minimumselection
    Open Browser To URL    ${url}    ${browser}
    Choose color    ${color}
    Choose orientation    ${orientation_mode}
    Add description    ${description}  
    Add phone number    ${Phonenumber}
    file upload 
    Add Border1 
    Add to cart 
    Verifivation for border selection 
    Close Browser



    



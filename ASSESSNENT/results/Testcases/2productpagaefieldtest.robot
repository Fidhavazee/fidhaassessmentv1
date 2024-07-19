*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot
*** Variables ***

${browser}    Chrome
${productpageurl}    https://woocommerce-850415-2933260.cloudwaysapps.com/product/rf-id-card 
${phonenumber}    9876543210
${color}    Red
${orientation_mode}    Landscape
${description}    dwd ded dedd
*** Test Cases ***
Product page field test
    Go to product page link    ${productpageurl}    ${browser}
    Choose color    ${color}
    Choose orientation    ${orientation_mode}
    Add description    ${description}  
    Add phone number    ${phonenumber} 
    file upload 
    Add Border 
    Add to cart 
    Verification cart success  
    Close Browser


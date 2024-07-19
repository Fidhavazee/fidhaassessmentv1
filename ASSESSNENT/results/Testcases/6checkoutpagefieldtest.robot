*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/keywords.robot
Library    DateTime


*** Variables ***

${browser}    chrome

${url}    https://woocommerce-850415-2933260.cloudwaysapps.com/product/cap 

${NAME}    Fname   

${Lastname}    Lname

${Address_street}    123 abc

${number_House}    123 abc

${City}    Calicut

${pin}    673016

${phonenumber}    8891553108

${email}    fidhavazeer@gmail.com

*** Test Cases ***
Checkout page field validation
    Open browser for field Check out page    ${url}    ${browser}
    Maximize Browser Window
    Execute JavaScript    window.scrollTo(0, 500) 
    Add cart
    View cart
    Sleep    10s
    Proceed to checkout
    Inout first name in billing    ${NAME}   
    Input lastname in billing    ${Lastname}
    Choose country
    Street adress    ${Address_street}          
    Enter town/city    ${City} 
    Choose state
    Enter pin code    ${pin}
    Enter phone number    ${phonenumber}
    Enter email    ${email}
    Product delivery  
    Delivery date  
    Delivery time 
    Delivery add ons
    Sleep    2S
    Payment option selection
    Place order
    Verify order successful
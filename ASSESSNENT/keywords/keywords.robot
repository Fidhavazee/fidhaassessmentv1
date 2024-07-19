*** Settings ***
Library    SeleniumLibrary
Variables    ../results/Pageobject/locators.py

*** Keywords ***
Login
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
Enter username
    [Arguments]    ${username}
    Input Text    ${txt_username}   ${username}
Enter password 
    [Arguments]    ${password}
    Input Password    ${txt_password}    ${password}
sign in
    Click Button    //*[@id="content"]/article/div/div/div[2]/form/p[3]/button

Go to product page link
    [Arguments]    ${productpageurl}    ${browser}
    Open Browser    ${productpageurl}    ${browser}
Choose color
    [Arguments]    ${color}
    Click Element    ${select_color}
    Select From List By Label    ${select_color}    ${color}
Choose orientation
    [Arguments]    ${orientation_mode}
    Click Element   ${orientation} 
    Select From List By Label    ${orientation}   ${orientation_mode}
Add description
    [Arguments]    ${description}    
    Input Text    ${description_add}  ${description}
Add phone number
    [Arguments]    ${Phonenumber}
    Select Checkbox    //*[@id="phone_number_checkbox"]
    Input Text    ${phonenumber_add}   ${Phonenumber}   
file upload 
    Choose File    //*[@id="logo"]    file_path=/Users/tony/Downloads/Logo-Test.png
Add Border
    Click Image    //*[@id="product-145"]/div[3]/form/div/div[2]/div[2]/div[3]/div[2]/div[3]/label/div/img
    Click Image    //*[@id="product-145"]/div[3]/form/div/div[2]/div[2]/div[3]/div[2]/div[4]/label/div/img
Add to cart 
    Click Button    //*[@id="product-145"]/div[3]/form/div/div[2]/button
Verification cart success
    Wait Until Element Is Visible    //*[@id="content"]/article/div[1]/div    10s
Open Browser To URL
    [Arguments]    ${Url}    ${chrome}
    Open Browser    ${url}    Chrome
Add Border1  
    Click Image    //*[@id="product-145"]/div[3]/form/div/div[2]/div[2]/div[3]/div[2]/div[3]/label/div/img 
Verification for phone number validation
    Wait Until Element Is Visible    //*[@id="content"]/article/div[1]/ul    10s
Verifivation for border selection 
    Wait Until Element Is Visible    //*[@id="content"]/article/div[1]/ul/li    10S
#product quick view
Open browser product quick view 
    [Arguments]    ${Url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Scroll Element Into View    //*[@id="content"]/article/ul/li[12]/div/ul/li[1]/div/a[1]/img
    Click Element    //*[@id="content"]/article/ul/li[12]/div/ul/li[1]/div/a[1]/img
    Click Link    //a[@id='product_id_145' and @class='owp-quick-view' and @data-product_id='145' and contains(text(),'Quick View')]
    Run Keyword And Continue On Failure    //a[@id='product_id_145' and @class='owp-quick-view' and @data-product_id='145' and contains(text(),'Quick View')]    

    Wait Until Element Is Visible    //a[@id='product_id_145' and @class='owp-quick-view' and @data-product_id='145' and contains(text(),'Quick View')]

 Verification for quick view add product success
     Wait Until Page Contains       RF ID Card has been added to your cart    10s
Open browser for field Check out page 
    [Arguments]    ${Url}    ${browser}
    Open Browser    ${url}    ${browser}
Add cart
    Click Button    //*[@id="product-21"]/div[3]/form/button
   

View cart
    Wait Until Element Is Visible    //*[@id="content"]/article/div[1]/div/a    
    Click Link    //*[@id="content"]/article/div[1]/div/a

Proceed to checkout
    Scroll Element Into View    //*[@id="content"]/article/div/div/div[4]/div/div/div[3]/div[3]/div[2]/a/span
    Wait Until Element Is Visible    //*[@id="content"]/article/div/div/div[4]/div/div/div[3]/div[3]/div[2]/a/span
    Click Element    //*[@id="content"]/article/div/div/div[4]/div/div/div[3]/div[3]/div[2]/a/span
#checkout product fields
Inout first name in billing
    [Arguments]    ${NAME}
    Input Text    ${Firstname}    ${NAME}   
Input lastname in billing
    [Arguments]    ${Lastname}  
    Input Text    ${Lname}    ${Lastname} 
Choose country
    Wait Until Element Is Visible    ${country_selection}
    Click Element    ${country_selection}
    Wait Until Element Is Visible    //ul[@id='select2-billing_country-results']//li[text()='India']
    Click Element    //ul[@id='select2-billing_country-results']//li[text()='India']
Street adress 
    [Arguments]    ${Address_street}
    Input Text    ${street_addrss}    ${Address_street}    
Enter town/city   
    [Arguments]    ${City}
    Input Text    ${city_town}  ${City}        
Choose state
    Wait Until Element Is Visible    //*[@id="select2-billing_state-container"]
    Click Element    //*[@id="select2-billing_state-container"]
    Wait Until Element Is Visible    //ul[@id='select2-billing_state-results']//li[text()='Kerala']
    Click Element    //ul[@id='select2-billing_state-results']//li[text()='Kerala']
Enter pin code
    [Arguments]    ${pin}
    Input Text    ${pincode}   ${pin}
Enter phone number
    [Arguments]    ${phonenumber}
    Input Text    ${phone}     ${phonenumber}
Enter email
    [Arguments]    ${email}
    Input Text    ${Billmail}    ${email}
Product delivery
    Wait Until Element Is Visible    //*[@id="product_delivery_yes"]
    Click Element    //*[@id="product_delivery_yes"]
    Wait Until Element Is Visible    //*[@id="product_delivery_field"]/span/label[1]
Delivery date
    Click Element    //*[@id="date_delivery"]
    Click Element    //*[@id="ui-datepicker-div"]/table/tbody/tr[3]/td[5]/a
    
Delivery time 
    Click Element    //*[@id="time_delivery"]
    Wait Until Element Is Visible    //div[5]/ul/li[1]
    #Wait Until Element Is Visible    //ul[@id='timepicker-options']/li[text()='12:00 AM']
    Click Element    //div[5]/ul/li[1]
Delivery add ons
    Select Checkbox    //*[@id="packaging_wooden"]
Payment option selection
    Wait Until Element Is Visible    //*[@id="payment"]/ul/li[3]/label
    Click Element    //*[@id="payment"]/ul/li[3]/label
          
   

Place order
    Click Button    //*[@id="place_order"]
Verify order successful
    Wait Until Element Is Visible    //*[@id="main"]/header/div/h1

   

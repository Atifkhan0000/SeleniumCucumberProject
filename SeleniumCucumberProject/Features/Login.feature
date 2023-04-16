Feature: Login

@office               #tags(for executing specific scenarios)       #name koi bhi rakh lo 
  Scenario: Successful login wit valid credentials
    Given User launch chrome browser
    When User opens URL "https://admin-demo.nopcommerce.com/Login"
    And User enters Email as "admin@yourstore.com" and Password as "admin"
    And click on login
    Then page title should be "Dashboard / nopCommerce administration"
    When User click on logout link
    Then page title should be "Your store. Login"
    And close browser 
    
  
    #Scenario Outline: login data driven     #we use (scenario outline) instead of scenario for data driven 
    #Given User launch chrome browser
    #When User opens URL "https://admin-demo.nopcommerce.com/Login"
    #And User enters Email as "<email>" and Password as "<password>"
    #And click on login
    #Then page title should be "Dashboard / nopCommerce administration"
    #When User click on logout link
    #Then page title should be "Your store. Login"
    #And close browser 
    #
    #Examples:
    #| email | password |
    #| admin@yourstore.com | admin |
    #| adminI@yourstore.com | admin123 |
   

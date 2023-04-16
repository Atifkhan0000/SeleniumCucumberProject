Feature: Customers

#Background: Below are common steps for every scenario   // By this we no need to write common steps everytime//
    #Given User launch chrome browser
    #When User opens URL "https://admin-demo.nopcommerce.com/Login"
    #And User enters Email as "admin@yourstore.com" and Password as "admin"
    #And click on login
    #Then User can view Dashboard
    #When User click on customers menu
    #And click on customers menu item     
    
  @name              #tags(for executing specific scenarios)       #name koi bhi rakh lo 
  Scenario: Add a new Customer
    Given User launch chrome browser
    When User opens URL "https://admin-demo.nopcommerce.com/Login"
    And User enters Email as "admin@yourstore.com" and Password as "admin"
    And click on login
    Then User can view Dashboard
    When User click on customers menu
    And click on customers menu item
    And click on add new button
    Then User can view add new customer page
    When User enter customer info
    And click on save button
    Then User can view confirmation message "The new customer has been added successfully" 
    And close browser 
    
   @class
    Scenario: Search Customer by Email Id
    Given User launch chrome browser
    When User opens URL "https://admin-demo.nopcommerce.com/Login"
    And User enters Email as "admin@yourstore.com" and Password as "admin"
    And click on login
    Then User can view Dashboard
    When User click on customers menu
    And click on customers menu item
    And enter customer email
    When click on search button
    Then user should found email in the search table
    And close browser
    
    @city
    Scenario: Search Customer by Name
    Given User launch chrome browser
    When User opens URL "https://admin-demo.nopcommerce.com/Login"
    And User enters Email as "admin@yourstore.com" and Password as "admin"
    And click on login
    Then User can view Dashboard
    When User click on customers menu
    And click on customers menu item
    And enter customer FirstName
    And enter customer LastName
    When click on search button
    Then user should found Name in the search table
    And close browser
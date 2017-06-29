Feature: C Tool Filter Verification

Scenario Outline: User should be able to select participant filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payers

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    Then I select All option under "participant" filter in the filter options
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should be able to select Episode Iniatiator filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I select All option under "initiator" filter in the filter options
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      #| emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should be able to select Facility filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I select All option under "facility" filter in the filter options
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      #| emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should be able to select Bundle filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I select All option under "bundle" filter in the filter options
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      #| emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
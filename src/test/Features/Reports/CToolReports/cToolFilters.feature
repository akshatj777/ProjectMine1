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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I uncheck All option under "participant" filter in the filter options
    Then I enter <participant> under the "participant" field searchbox
    And I wait for 1000 milli seconds
    Then I check the <participant> appearing under "participant" field filter under filter options
    And I click on apply button under the filter in filter options
    And I wait for 20000 milli seconds
    Then I verify <participant> is appearing under "participant" filter field after applying filter
    
    Examples:
    
      | email                              | Menu 1     | participant     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | Penn            |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards | RP Payer Test A |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards | RP Payer Test A |
      
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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    
    Then I uncheck All option under "initiator" filter in the filter options
    Then I enter <episode initiator> under the "initiator" field searchbox
    And I wait for 1000 milli seconds
    Then I check the <episode initiator> appearing under "initiator" field filter under filter options
    And I click on apply button under the filter in filter options
    And I wait for 20000 milli seconds
    Then I verify <episode initiator> is appearing under "initiator" filter field after applying filter
    
    Examples:
    
      | email                              | Menu 1     | episode initiator                |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | Penn Presbyterian Medical Center |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards | Rp Test Hospital Two             |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards | Rp Test Hospital Two             |
      
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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
       
    Then I uncheck All option under "facility" filter in the filter options
    Then I enter <anchor facility> under the "facility" field searchbox
    And I wait for 1000 milli seconds
    Then I scroll the page to bottom by "500"
    Then I click the <anchor facility> appearing under facility field filter under filter options
    And I click on apply button under the filter in filter options
    And I wait for 20000 milli seconds
    Then I verify <anchor facility> is appearing under "facility" filter field after applying filter
    
    Examples:
    
      | email                              | Menu 1     | anchor facility                 |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | Penn Presbyterian Medical Center| 
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards | Penn Presbyterian Medical Center|
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards | Penn Presbyterian Medical Center|
      
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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    
    Then I uncheck All option under "bundle" filter in the filter options
    Then I enter <bundle type> under the "bundle" field searchbox
    And I wait for 1000 milli seconds
    Then I check the <bundle type> appearing under "bundle" field filter under filter options
    And I click on apply button under the filter in filter options
    And I wait for 30000 milli seconds
    Then I verify <bundle type> is appearing under "bundle" filter field after applying filter
    
    Examples:
    
      | email                              | Menu 1     | bundle type |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | Amputation  |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards | Amputation  |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards | Amputation  |
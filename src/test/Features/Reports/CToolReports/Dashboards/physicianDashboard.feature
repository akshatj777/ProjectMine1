Feature: Verification of physician report under dashboard

Scenario Outline: User should be able to verify physician report appearing under dashboard

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    
    Examples: 
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      
Scenario Outline: Verify clicking on attributed physician name is opening scorecard dashboard
   
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    
    Examples: 
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
   
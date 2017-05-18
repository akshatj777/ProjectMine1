Feature: Clicking on Program Overview report graphs

Scenario Outline: User should be able to click on program overview reports  graphs for Claims

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
    And I wait for 20000 milli seconds
    And I switch to reports embedded iframe
    
    Then I select "Claims" radio button under data source filter
    And I wait for 10000 milli seconds
    Then I click on "NPRA" graph point under overall program of program overview report
    And I switch to new window
    And I wait for 30000 milli seconds
    Then I verify "Financial Performance" in the new window after clicking on the graph point
    And I switch back to old window
    And I wait for 2000 milli seconds
    Then I click on "SNF" graph point under post acute utilization of program overview report
    And I switch to new window
    And I wait for 30000 milli seconds
    Then I verify "Performance" in the new window after clicking on the graph point
    And I switch back to old window
    And I wait for 2000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
Feature: CTool Reports Date Range Filters

Scenario Outline: User should click on date range filter less than four months for Claims reports

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
    
    Then I click on date range filter under filter options for program overview reports
    And I wait for 2000 milli seconds
    And I click on start range box to select date 
    Then I select "    Feb  " month in the "start" date range filter
    And I wait for 4000 milli seconds
    And I click on end range box to select date
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "150"
    Then I select "    Apr  " month in the "end" date range filter
    Then I click on apply button under date range filter
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on date range filter more than four months for Claims reports

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
    
    Then I click on date range filter under filter options for program overview reports
    And I wait for 2000 milli seconds
    And I click on start range box to select date 
    Then I select "    Feb  " month in the "start" date range filter
    And I wait for 4000 milli seconds
    And I click on end range box to select date
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "150"
    #Then I select End month "    Dec  " in the calendar
    Then I click on apply button under date range filter
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
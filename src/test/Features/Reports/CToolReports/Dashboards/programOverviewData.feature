Feature: Verification of Program Overview data after selecting facility filter

  Scenario Outline: User should be able to verify data after selecting facility for episode connect data source
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I select "Episode Connect" radio button under data source filter
    Then I select "Claims" radio button under data source filter
    Then I wait untill loading icon disappears in program overview report
    Then I click on "facility" filter under filter options
    Then I uncheck selected All options under "facility" filter options
    Then I select "Upenn - Penn Presbyterian Hospital" from the facility filter dropdown under filter options
    Then I click on apply button for facility filter under filter options
    Then I wait untill loading icon disappears in program overview report
    Then I click on skilled nursing "SNF" ec graph point under post acute utilization of program overview report
    And I switch to new window
    And I will wait to see "Next Site of Care Summary" is appearing after clicking graph point
    Then I verify "Next Site of Care Summary" in the new window after clicking on the graph point
    And I switch back to old window

    Examples: 
      | email                         | Menu 1     |
      | shutestaug231132a@yopmail.com | Dashboards |

  Scenario Outline: User should be able to verify data after selecting facility for claims data source
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I select "Claims" radio button under data source filter
    Then I wait untill loading icon disappears in program overview report
    Then I click on "facility" filter under filter options
    Then I uncheck selected All options under "facility" filter options
    Then I select "Penn Presbyterian Medical Center" from the facility filter dropdown under filter options
    Then I click on apply button for facility filter under filter options
    Then I wait untill loading icon disappears in program overview report
    Then I click on skilled nursing "SNF" claims graph point under post acute utilization of program overview report
    And I switch to new window
    And I will wait to see "Performance" is appearing after clicking graph point
    Then I verify "Performance" in the new window after clicking on the graph point
    And I switch back to old window

    Examples: 
      | email                         | Menu 1     |
      | shutestaug231132a@yopmail.com | Dashboards |

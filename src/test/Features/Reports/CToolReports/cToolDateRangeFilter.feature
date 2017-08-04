Feature: CTool Reports Date Range Filters

Scenario Outline: User should click on date range filter less than four months for Claims reports

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
    
    Then I click on date range filter under filter options for program overview reports
    And I click on start range box to select date
    And I click on year text box and select <current year> from the year field
    Then I select "    Feb  " month in the "start" date range filter
    And I click on end range box to select date
    Then I scroll the page to bottom by "150"
    And I click on year text box and select <current year> from the year field
    Then I select "    Apr  " month in the "end" date range filter
    Then I click on apply button under date range filter
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "Feb - Apr, 2017" is appearing under date range filter option on the left side
    
    Examples:
    
      | email                              | Menu 1     | current year |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | 2017         |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards | 2017         |
      #| Multiple Payer Users| 
      | multipayerachrpfin@yopmail.com     | Dashboards | 2017         |
      
Scenario Outline: User should click on date range filter more than four months for Claims reports

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
    
    Then I click on date range filter under filter options for program overview reports
    And I click on start range box to select date
    And I click on year text box and select <year> from the year field 
    Then I select "    Feb  " month in the "start" date range filter
    And I click on end range box to select date
    And I click on year text box and select <year> from the year field
    Then I scroll the page to bottom by "150"
    Then I select End month "    Dec  " in the calendar
    Then I click on apply button under date range filter
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "Feb - Dec, 2016" is appearing under date range filter option on the left side
    
    Examples:
    
      | email                              | Menu 1     | year |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards | 2016 |
      #| Emblem Payer Users  | 
      | emblemachrpfin@yopmail.com         | Dashboards | 2016 |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards | 2016 |
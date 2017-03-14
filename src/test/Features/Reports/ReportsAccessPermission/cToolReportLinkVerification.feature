Feature: CTool Report Links Verification

Scenario Outline: User should not see program overview under dashboard for OPSNOFIN,OPSPEND and ECREPORTS Roles for ACH and PGP Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    And I should not see Reports Tile text as <Menu 1>
    
    Examples:
    
      | email                         | Menu 1     |
      | shutestaug15240p@yopmail.com  | Dashboard  |
      | shutestjul26420p@yopmail.com  | Dashboard  |
      | repopsnofintest@yopmail.com   | Dashboard  |
      | shutestaug221150a@yopmail.com | Dashboard  |
      | shutestaug221145a@yopmail.com | Dashboard  |
      | shutestjul26415@yopmail.com   | Dashboard  |
      
Scenario Outline: User should see Program Overview under Dashboard and verify sanity for program overview reports for RPFIN,RPFNOFIN and OPSFIN Roles with ACH Provider Type
    
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
    And I wait for 15000 milli seconds
    And I switch to reports embedded iframe
    
    Then I should see "Overall Program" appearing under program overview reports
    And I should see "EPISODES" under overall program
    And I should see "NPRA" under overall program
    And I wait for 2000 milli seconds
    
    Then I should see "Post Acute Utilization" under program overview reports
    And I should see "SKILLED NURSING" under overall program
    And I should see "LONG TERM ACUTE CARE" under overall program
    And I should see "INPATIENT REHAB" under overall program
    And I should see "HOME HEALTH" under overall program
    And I should see "HOME" under overall program
    And I should see "OTHER" under overall program
    And I wait for 2000 milli seconds
    
    Then I should see "SNF Length of Stay" under program overview reports
    And I should see "INITIAL SNF LENGTH OF STAY" under overall program
    And I should see "SNF DAYS" under overall program
    
    Then I should see "Readmissions" under program overview reports
    And I should see "EPISODES w READMIT" under overall program
    And I should see "READMITS PER EPISODE" under overall program
    
    Examples:
    
      | email                         | Menu 1     |
      | shutestaug231132a@yopmail.com | Dashboards |
    
Feature: Program Overview Report

  Scenario Outline: Program Overview Report Under Dashboard
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
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I should see "EPISODES" under overall program
    Then I verify episodes graph appearing under overall program report
    And I should see "NPRA" under overall program
    Then I verify npra graph appearing under overall program report
    Then I should see "Post Acute Utilization" under program overview reports
    And I should see "SKILLED NURSING" under overall program
    Then I verify skilled nursing graph appearing under overall program report
    And I should see "LONG TERM ACUTE CARE" under overall program
    Then I verify long term acute care graph appearing under overall program report
    And I should see "INPATIENT REHAB" under overall program
    Then I verify inpatient rehab graph appearing under overall program report
    And I should see "HOME HEALTH" under overall program
    Then I verify home health graph appearing under overall program report
    And I should see "HOME" under overall program
    Then I verify home graph appearing under overall program report
    And I should see "OTHER" under overall program
    Then I verify other graph appearing under overall program report
    Then I should see "SNF Length of Stay" under program overview reports
    And I should see "INITIAL SNF LENGTH OF STAY" under overall program
    Then I verify initial snf length of stay graph appearing under overall program report
    And I should see "SNF DAYS" under overall program
    Then I verify snf days graph appearing under overall program report
    Then I should see "Readmissions" under program overview reports
    And I should see "EPISODES w READMIT" under overall program
    Then I verify episodes w readmit graph appearing under overall program report
    And I should see "READMITS PER EPISODE" under overall program
    Then I verify readmits per episode graph appearing under overall program report
    And I verify "Filter option(s)" is present on the left side of overall program report
    Then I should see daterange filter on the left side of overall program report
    Then I should see partcipant filter on the left side of overall program report
    Then I should see episode initiator filter on the left side of overall program report
    Then I should see facility filter on the left side of overall program report
    Then I should see bundle filter on the left side of overall program report
    Then I should see bundle risk filter on the left side of overall program report
    Then I should see view filter on the left side of overall program report

    Examples: 
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | shutestaug221130a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      | shutestaug15252p@yopmail.com       | Dashboards |
      | shutestaug15220p@yopmail.com       | Dashboards |
      | shutestaug26212p@yopmail.com       | Dashboards |

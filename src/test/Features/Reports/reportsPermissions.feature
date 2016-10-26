Feature: User only can see reports based on their role ( external and internal roles), facility type and model

  Scenario Outline: User can only see reports based on their role facility type and model
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
    And I should see Reports Tile text as <Menu 2>
    And I should see Reports Tile text as <Menu 3>
    And I should see Reports Tile text as <Menu 4>
    And I should see Reports Tile text as <Menu 5>
    And I should see Reports Tile text as <Menu 6>
    And I should see Reports Tile text as <Menu 7>

   When I click on the Reports Tile with text "Overall Program"
   #Then I should see  Reports text for Overall Program
    #| Report1             |        Report 2                   |           Report 3          |
    #|Performance (Claims) |   Financial Performance (Claims   |   Spending (Claims)         |



  Examples:
  |           email                       |    Menu 1        |       Menu 2        |      Menu 3       |      Menu 4      |     Menu 5    |   Menu 6   |      Menu 7     |
  |   shutestaug231132a@yopmail.com       |    Dashboards    |  Overall Program    |   Patient ID      |  Post Acute Care |   Physician   |   NSoC     |   Readmissions  |
  |   shutestaug221130a@yopmail.com       |    Dashboards    |  Overall Program    |   Patient ID      |  Post Acute Care |   Physician   |   NSoC     |   Readmissions  |
  |   reptestachmodel2opsfin@yopmail.com  |    Dashboards    |  Overall Program    |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestaug15240p@yopmail.com        |    Dashboards    |  Overall Program    |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestaug221145a@yopmail.com       |    Dashboards    |  Overall Program    |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   repopsnofintest@yopmail.com         |    Dashboards    |                     |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestaug15252p@yopmail.com        |    Dashboards    |                     |   Patient ID      |  Post Acute Care |   Physician   |   NSoC     |   Readmissions  |
  |   shutestaug15220p@yopmail.com        |    Dashboards    |                     |   Patient ID      |  Post Acute Care |   Physician   |   NSoC     |   Readmissions  |
  |   shutestaug26212p@yopmail.com        |    Dashboards    |                     |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestjul26420p@yopmail.com        |    Dashboards    |                     |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestjul26415@yopmail.com         |    Dashboards    |                     |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |
  |   shutestaug221150a@yopmail.com       |    Dashboards    |                     |   Patient ID      |  Post Acute Care |               |   NSoC     |   Readmissions  |



  Scenario Outline: Verify that Performance claims report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to performance reports iframe

    Then I should see performance reports column Tile text as "Participant"
    Then I should see performance reports column Tile text as "Episode Initiator"
    Then I should see performance reports column Tile text as "Anchor Facility"
    Then I should see performance reports column Tile text as "Bundle"
    Then I should see performance reports column Tile text as "Anchor Admission Quarter"

    When I click on field-panel-icon button
    And I wait for 3000 milli seconds

    When I move the mouse to "CCN" field filter under "Anchor Facility" filter field
    And I double click on current mouse location element
    And I wait for 5000 milli seconds
    Then I should see performance reports column Tile text as "CCN"

    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see Filter on "CCN" in the header text of filter page

    Examples:
      |           email                       |
      |   shutestaug231132a@yopmail.com       |

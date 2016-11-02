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

    When I click on the Reports Tile with text "Dashboards"
    When I click on the Reports Tile with text "Patient ID"
    When I click on the Reports Tile with text "Post Acute Care"
    When I click on the Reports Tile with text "Physician"
    When I click on the Reports Tile with text "NSoC"
    When I click on the Reports Tile with text "Readmissions"
    #Under report link verification implementation is still under discussion, need to see all possible ways

   When I click on the Reports Tile with text "Overall Program"
    #And I should see "Performance (Claims)" Reports text for Overall Program
    #And I should see "Financial Performance (Claims)" Reports text for Overall Program
    #And I should see "Spending (Claims)" Reports text for Overall Program
   Then I should see following Reports text for Overall Program
    | Performance (Claims)           |
    | Financial Performance (Claims) |
    | Spending (Claims)              |

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
    And I wait for 3000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see "CCN" in the header text of filter page
    And I should see "390223" in the filter value list
    And I should see "390226" in the filter value list
    And I click on "390223" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds

    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I wait for 3000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "Hospital Of Univ Of Pennsylvania" in the filter value list
    And I should see "Penn Presbyterian Medical Center" in the filter value list
    And I should see "Pennsylvania Hosp Of The Univ Of Pa Health Sys" in the filter value list
    And I click on "Penn Presbyterian Medical Center" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds

    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I wait for 3000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see "Participant" in the header text of filter page
    And I should see "Penn" in the filter value list
    And I click on "Penn" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds

    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I wait for 3000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "Hospital Of The University Of Pennsylvania" in the filter value list
    And I should see "Penn Presbyterian Medical Center" in the filter value list
    And I should see "The Pennsylvania Hospital Of The University Of Pennsylvania Health System" in the filter value list
    And I click on "Hospital Of The University Of Pennsylvania" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds

    When I click to "Bundle" field filter under "Bundle" filter field
    And I wait for 3000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I should see "Bundle" in the header text of filter page
    And I should see "Amputation" in the filter value list
    And I should see "Atherosclerosis" in the filter value list
    And I click on "Amputation" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds

    When I click on close reports cross icon on report page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      |           email                       |
      |   shutestaug231132a@yopmail.com       |

  Scenario: System should direct to the login page if a user tries to access the report directly through url
    Given I am on the login page
    And I go to "https://cdn-qa.remedypartners.com/reports/index.html#/reports/physician/performance-(claims)?url=pentaho%2Fapi%2Frepos%2F%253Apublic%253AClaims%253Arelease%253APhysician%20Performance.xanalyzer%2Feditor" page

    Then I wait for 2000 milli seconds
    And I should see Log in widget


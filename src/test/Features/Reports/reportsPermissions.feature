Feature: User only can see reports based on their role ( external and internal roles), facility type and model

  Scenario: User can only see reports based on their role facility type and model
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text Episodes
    Then I should see Tile text RemedyU
    Then I should see Tile text Reports
    Then I should see Tile text Episodes 2.0
    Then I should see Tile text Shared Files
    Then I should see Tile text Institute
    And I should not see Tile text Gainsharing Physician Survey

    When I click on the "Reports" tile
    Then I verify current page "Reports" title

    Then I should see Reports Tile text as "Dashboards"
    And I should see Reports Tile text as "Overall Program"
    And I should see Reports Tile text as "Patient ID"
    And I should see Reports Tile text as "Post Acute Care"
    And I should see Reports Tile text as "Physician"
    And I should see Reports Tile text as "NSoC"
    And I should see Reports Tile text as "Readmissions"

    When I click on the Reports Tile with text "Overall Program"
    Then I should see "Performance (Claims)" Reports text for Overall Program
    And I should see "Financial Performance (Claims)" Reports text for Overall Program
    And I should see "Spending (Claims)" Reports text for Overall Program

    When I click on "Performance (Claims)" report text for Overall Program Reports
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
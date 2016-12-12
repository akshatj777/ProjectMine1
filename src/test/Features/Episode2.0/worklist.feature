Feature: Episode 2.0 Worklist

  Scenario: verify different options under inpatient worklist Sub-bar
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds

	Scenario: verify different options under Inpatient worklist Sub-bar
    When I click on Inpatient work-list sub-bar option on the patients page
    Then I should verify Needs Review is present on sub-bar option on the patients page
    And I should verify Confirm Predicted is present on sub-bar option on the patients page
    And I should verify Inpatient Care is present on sub-bar option on the patients page
    And I should verify Readmissions is present on sub-bar option on the patients page
    And I should verify Post-Acute onboarding is present on sub-bar option on the patients page


  Scenario: verify different options under Post-Acute worklist Sub-bar
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds

    When I click on Post Acute work-list sub-bar option on the patients page
    Then I should verify Post-Acute Onboarding is present on sub-bar option on the patients page
    Then I should verify readmission Discharges is present on sub-bar option on the patients page
    Then I should verify Exceeded SNF LOS is present on sub-bar option on the patients page
    Then I should verify Post-Acute Facility is present on sub-bar option on the patients page
    Then I should verify Home Health is present on sub-bar option on the patients page
    Then I should verify Home with Limited Services is present on sub-bar option on the patients page
    Then I should verify Other is present on sub-bar option on the patients page
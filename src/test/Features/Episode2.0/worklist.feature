Feature: Episode 2.0 Worklist

  Scenario: verify different options under Inpatient worklist Sub-bar
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds

    When I click on "Inpatient" tab in the filter bar on patients page
    Then I should verify "Needs Review" worklist sub bar option is present on patients page
    Then I should verify "Confirm Predicted" worklist sub bar option is present on patients page
    Then I should verify "Inpatient Care" worklist sub bar option is present on patients page
    Then I should verify "Readmissions" worklist sub bar option is present on patients page
    Then I should verify "Post-Acute Onboarding" worklist sub bar option is present on patients page

    When I click on "Post Acute" tab in the filter bar on patients page
    Then I should verify "Post-Acute Onboarding" worklist sub bar option is present on patients page
    Then I should verify "Readmission Discharges" worklist sub bar option is present on patients page
    Then I should verify "Exceeded SNF LOS" worklist sub bar option is present on patients page
    Then I should verify "Post-Acute Facility" worklist sub bar option is present on patients page
    Then I should verify "Home Health" worklist sub bar option is present on patients page
    Then I should verify "Home With Limited Services" worklist sub bar option is present on patients page
    Then I should verify "Other" worklist sub bar option is present on patients page
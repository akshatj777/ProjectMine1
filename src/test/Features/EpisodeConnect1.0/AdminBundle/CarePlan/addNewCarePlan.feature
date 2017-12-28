Feature: Verification of care plan
@EC1Smoke
  Scenario: Verify new care plan added through add new care plan
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/care-plan"
    Then I will wait to see "Care Plans" on care plan page
    And I should see "Add new Care Plan" button on care plan page
    Then I wait for 10000 milli seconds
    When I click on "Add new Care Plan" button on care plan page
    Then I will wait to see "Care Plan Form" on new care plan window
    When I fill the "name" with "CarePlanByIssue Test" on care plan form
    And I select "by Issue" from "type" on care plan form
    When I fill "goal_name" with "Goal Test:" on care plan form
    And I fill "goal_intervention" with "Intervention Test:" on care plan form
    And I fill "goal_outcome" with "Outcome Test:" on care plan form
    Then I press Submit button on the care plan form
    Then I wait to see "Care plan "CarePlanByIssue Test" was successfully created."

Feature: Verification of care plan

  @EC1Smoke
  @Fix
  Scenario: Verify new care plan added through add new care plan - By Issue
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    When I am on "/secure/admin/care-plan"
    Then I will wait to see "Care Plans" on care plan page
    And I should see "Add new Care Plan" button on care plan page
    When I click on "Add new Care Plan" button on care plan page
    Then I will wait to see "Care Plan Form" on new care plan window
    When I fill the "name" with "CarePlanByIssue Test" on care plan form
    And I select "by Issue" from "type" on care plan form
    When I fill "goal_name" with "Goal Test:" on care plan form
    And I fill "goal_intervention" with "Intervention Test:" on care plan form
    And I fill "goal_outcome" with "Outcome Test:" on care plan form
    Then I press Submit button on the care plan form
    Then I wait to see "Care plan "CarePlanByIssue Test" was successfully created."

@Fix
  Scenario: Verify new care plan added through add new care plan - By Bundle
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    When I am on "/secure/admin/care-plan"
    Then I will wait to see "Care Plans" on care plan page
    And I should see "Add new Care Plan" button on care plan page
    When I click on "Add new Care Plan" button on care plan page
    Then I will wait to see "Care Plan Form" on new care plan window
    When I fill the "name" with "CarePlanByBundle Test" on care plan form
    And I select "by Bundle" from "type" on care plan form
    And I search and select "177" Drg on care plan form
    And I search and select "472" Drg on care plan form
    When I fill "goal_name" with "Goal Test:" on care plan form
    And I fill "goal_intervention" with "Intervention Test:" on care plan form
    And I fill "goal_outcome" with "Outcome Test:" on care plan form
    Then I press Submit button on the care plan form
    Then I wait to see "Care plan "CarePlanByBundle Test" was successfully created."

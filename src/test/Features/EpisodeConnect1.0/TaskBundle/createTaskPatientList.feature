@EC1Smoke
Feature: Create task from patient list

Scenario: Verify user is able to create task from patinet list
	Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    And I click on first patient gear menu
    When I click on "Add task" from patients list patient gear menu
    Then I verify "New Task" header on popup
    When I fill in task Due Date with today date
    And I fill in Task description with "TaskTest" for patient list
    And I select the checkbox on popup for care team
    And I click on "Create & Continue" button
    Then I will wait to see "Task saved"
    
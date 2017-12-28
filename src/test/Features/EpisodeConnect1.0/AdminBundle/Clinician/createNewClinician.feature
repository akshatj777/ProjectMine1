Feature: Create new clinician
@EC1Smoke
  Scenario: Create new clinician with success
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/clinician/new"
    And I wait untill "Register a Clinician" text is appearing on the new clinician creation page
    And I fill in "firstName" with "TestFirstName" on register clinician page
    And I fill in "lastName" with "TestLastName" on register clinician page
    And I fill in "classification" with "TestClassification" on register clinician page
    And I fill in "user_email" with "TestEmailClinician@example.com" on register clinician page
    And I fill in "user_plain_password_password" with "Testing1" on register clinician page
    And I fill in "user_plain_password_confirm" with "Testing1" on register clinician page
    Then I press "Save" on the register clinician page
    And I will wait to see "The object was successfully saved." in "p" tag
    And I will wait to see "You're editing Clinician : "TESTFIRSTNAME TESTLASTNAME""

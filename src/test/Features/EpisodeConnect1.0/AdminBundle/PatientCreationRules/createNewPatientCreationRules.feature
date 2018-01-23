@EC1Smoke
Feature: Patient Creation Rules in Admin

  Scenario: admin user should be able to create a new rule
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/admin/PatientCreationRules/"
    And I wait untill "List for Patient Creation Rules" text is appearing on the patient creation rule
    Then I click on new button
    And I wait untill "New Patient Creation Rule" text is appearing on the patient creation rule
    Then I fill in Name with "RuleTest" on the new patient rule creation page
    And I fill in Field with "MSH~5~1" on the new patient rule creation page
    And I fill in Value with "JATA" on the new patient rule creation page
    And I fill in Priority with "5" on the new patient rule creation page
    And I press "Save" on the new patient rule creation page
    And I will wait to see "The object was successfully saved." in "p" tag
    And I will wait to see "You're editing the object "RuleTest""
    
    
    
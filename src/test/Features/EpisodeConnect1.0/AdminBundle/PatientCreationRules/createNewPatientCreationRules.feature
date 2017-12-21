Feature: Patient Creation Rules in Admin

  Scenario: admin user should be able to create a new rule
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/admin/PatientCreationRules/"
    Then I click on new button on the patient creation rules page
    And I wait untill i see "New Patient Creation Rule" on the patient creation rule page
    Then I fill in Name with "RuleTest" on the new patient rule creation page
    And I fill in Field with "MSH~5~1" on the new patient rule creation page
    And I fill in Value with "JATA" on the new patient rule creation page
    And I fill in Priority with "5" on the new patient rule creation page
    And I press "Save" on the new patient rule creation page
    Then I wait to see "The object was successfully saved." after creating a rule
    And I will wait to see "You're editing the object \"RuleTest\""
    
    
    
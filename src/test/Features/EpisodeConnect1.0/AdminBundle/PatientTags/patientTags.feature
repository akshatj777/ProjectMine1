Feature: Patient tags in admin center
@EC1Smoke
  Scenario: Verify redirection of patient tags under admin center
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/BPPatientTag/"
    Then I will wait to see "Patient Tags List" on patient tags list page
    Then I verify "PatientTag" list is appearing on patient tags list page

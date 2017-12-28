Feature: Alert List Verification
@EC1Smoke
  Scenario: Verify redirection of alerts under admin center
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/alerttemplate/"
    Then I will wait to see "Alert Templates" on alerts page
    Then I verify "Alert" list is appearing on the alert template page
    

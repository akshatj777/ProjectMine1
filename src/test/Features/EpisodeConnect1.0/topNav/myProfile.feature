@EC1Smoke
Feature: Verification of My Profile

  Scenario: Verification of my profile changes
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    Then I am on "/secure/person/5b2c9438881213d5482261a7/edit"
    And I wait untill i see "My Profile" is appearing on the profile page
    And I click on save changes button on the my profile page
    And I verify "First name required" as field validation on myprofile page
    And I verify "Last name required" as field validation on myprofile page
    Then I update "firstName" with "ADMINONE" on the my profile page
    Then I update "lastName" with "USERINFO" on the my profile page
    And I click on save changes button on the my profile page
    And I will wait to see "Your changes have been successfully saved." in "p" tag
    Then I update "firstName" with "USERINFO" on the my profile page
    Then I update "lastName" with "ADMINONE" on the my profile page
    And I click on save changes button on the my profile page
    And I will wait to see "Your changes have been successfully saved." in "p" tag

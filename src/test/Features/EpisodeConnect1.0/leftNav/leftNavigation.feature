Feature: Verify the left navigation in users and patient filters

  Scenario: Verify that currently visited page have same UI indication on partient list filters and admin
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    When I am on "/secure/admin/user/"
    Then I wait untill "User List" text is appearing on the user list page
    Then I verify "user" tab is highlighted on the left navigation
    And I fill "email" field with "qa.adminuser@yopmail.com" on users page
    Then I click on filter option on the user list page after entering data to search
    And I wait untill the searched results appearing on users list page
    Then I verify "user" tab is highlighted on the left navigation
    And I click on reset filter on admin pages
    Then I verify "user" tab is highlighted on the left navigation
    And I am on "/secure/pn/patientslist"
    Then I verify patient list filter on left navigation is highlighted
    Then I click on "custom" filter tab present on the patients page
    Then I click on the patient name present on the patient list
    And I navigate back
    Then I verify patient list filter on left navigation is highlighted
    
    

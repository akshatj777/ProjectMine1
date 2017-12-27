Feature: Super Admin Landing page verification
Scenario Outline: Verify ability of Super Admin user to lock a user and cancel unlock
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail" for "<user>-<Role>"
    Then I lock user with email "test.automatemail"
    And I verify that user is locked
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that user is locked
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should not be able to login

    Examples: 
      | user        | Role      |
      | Super Admin | Executive |
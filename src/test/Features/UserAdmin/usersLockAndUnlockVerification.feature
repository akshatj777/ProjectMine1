Feature: User Admin Verification of Lock and Unlock Users

Scenario: Verification of Lock and Unlock Users on user admin home page

    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I verify users with "Lock" button present on useradmin home page
    Then I verify users with "Unlock" button present on useradmin home page
    Then I verify "User Account is Locked" appearing on locked useradmin cards on useradmin home page
    Then I click on "Unlock" button on the useradmin cards on useradmin home page
    And I wait for 5000 milli seconds
    Then I verify "User Account is Locked" is appearing for the useradmin cards which are "Unlock" on useradmin home page
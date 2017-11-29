Feature: Create User - General Information Tab

  Scenario: Validate session timeout
  Given I am on the login page
  When I log in as super user
  Then I should see Tile text User Admin
  And I click on the "User Admin" tile
  Then I should see header text "User Management"
  Then I wait for 60000 milli seconds
  Then I verify login button
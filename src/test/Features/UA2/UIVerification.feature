Feature: UA2 Front End Automation

  #  Background: Login with predefined user on Gmail account and delete the previous mail
  #    Given I am on mail login page
  #    Then I enter username "test.automatemail" to login mail account
  #    Then I enter password "Intel@01" to login mail account
  #    Then I click on Mail icon in my account
  #    Then I click on Inbox in mail
  #    Then I click on select all checkbox in mail
  #    Then I click on delete icon in mail
  #    Then I signout form mail account
  
  Scenario: Verify availability of fields on General Information tab while adding a user
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the availability of fields "First Name"
		Then I verify the availability of fields "Last Name"
		Then I verify the availability of fields "Email"
		Then I verify the availability of fields "Phone"
		Then I verify the availability of fields "Role"
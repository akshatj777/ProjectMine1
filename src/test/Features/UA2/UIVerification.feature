Feature: UA2 Front End Automation

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

		Scenario: Verify availability of mandatory fields on General Information tab while adding a user
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the availability of mandatory fields "First Name"
		Then I verify the availability of mandatory fields "Last Name"
		Then I verify the availability of mandatory fields "Email"
		Then I verify the availability of mandatory fields "Role"
		
		Scenario: Verify availability of values in Role dropdown on General Information tab while adding a user
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the availability of role "Executive"
    Then I verify the availability of role "Manager"
    Then I verify the availability of role "Case Manager"
    Then I verify the availability of role "Physicians"
    Then I verify the availability of role "Remedy Technical Administrator"
    Then I verify the availability of role "Remedy TCS"
    Then I verify the availability of role "Remedy LPN"
    Then I verify the availability of role "Remedy RN"
    Then I verify the availability of role "Remedy Field RN"
    Then I verify the availability of role "Remedy PM"
    Then I verify the availability of role "Remedy Sales Team"
    Then I verify the availability of role "Remedy Executive"
    Then I verify the availability of role "Prospective Partner Executive"
    Then I verify the availability of role "Remedy Other"
    Then I verify the availability of role "Partner Program Administrator"
    Then I verify the availability of role "Remedy Program Administrator"
    Then I verify the availability of role "Partner Technical Administrator"
    Then I verify the availability of role "Transitional Case Manager "
    Then I verify the availability of role "Downstream Provider"
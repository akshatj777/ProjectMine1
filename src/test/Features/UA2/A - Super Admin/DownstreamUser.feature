Feature: Edit page for superuser verification

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify unavailability of organization drop down
    Then I verify text "Which location(s) does this user have access to?" is "Present" in Permission tab
    Then I enter characters "<Locations>" in location serach
    Then I search and select "<Locations>" locations
    Then I click on Submit button
    And I wait for 7000 milli seconds
    And I verify that I am navigated to user page
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                   | Role                | Applications           | Locations                        |
      | Editing role to Downstream Provider and verifying permissions | Downstream Provider | Episodes, Episodes 2.0 | Baptist Hospital Of Roane County |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "Downstream Provider"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify text "Which location(s) does this user have access to?" is "Not Present" in Permission tab
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 7000 milli seconds

    Examples: 
      | Description                                                                 | Role    | Applications           | Health System     |
      | Editing role from downstream provider to Manager and verify permissions tab | Manager | Episodes, Episodes 2.0 | Stamford Hospital |

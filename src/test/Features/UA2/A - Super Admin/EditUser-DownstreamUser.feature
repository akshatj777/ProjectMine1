Feature: Edit page for superuser verification

  Scenario Outline: Changing Role from <PreviousRole> to <Role> and verify permissions tab
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
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
      | user        | Email             | PreviousRole | Role                | Applications           | Locations                        |
      | Super Admin | test.automatemail | Manager      | Downstream Provider | Episodes, Episodes 2.0 | Baptist Hospital Of Roane County |

  Scenario Outline: Changing Role from <PreviousRole> to <Role>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "Downstream Provider" in search box for "<user>-<PreviousRole>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I cleared the textbox under edit user "First Name"
    And I fill in First Name with "<FirstName>"
    And I cleared the textbox under edit user "Last Name"
    Then I fill in Last Name with <LastName>
    And I cleared the textbox under edit user "Phone"
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify text "Which location(s) does this user have access to?" is "Not Present" in Permission tab
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<ApplicationsVisible>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<ApplicationsVisible>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole        | Role    | Applications                             | ApplicationsNotVisible            | Roletext | Health System     | LearningPathwaySearchParameter |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Downstream Provider | Manager | Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect | ROLE_PRM | Stamford Hospital | Learning Pathway 2             |

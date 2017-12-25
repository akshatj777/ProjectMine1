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
    Then I pick a Organizational <Role1>
    Then I enter NPI field with "<NPI1>" for role "<Role1>"
    Then I click on Next button
    Then I select "<Applications1>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 7000 milli seconds
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role2>
    Then I enter NPI field with "<NPI2>" for role "<Role2>"
    Then I click on Next button
    Then I verify that "<Applications2>" are "Present" in Applications tab
    Then I verify that "<SpecificAppFromApplication1>" are "Not Present" in Applications tab
    Then I select "<Applications2>" product
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 7000 milli seconds
    And I verify that "<ApplicationsVisible>" are "Enabled"
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
      | Description                                                      | User        | Email             | Role1     | NPI1 | Applications1                            | SpecificAppFromApplication1 | LearningPathwaySearchParameter | Health System     | Role2            | NPI2 | Applications2 | ApplicationsVisible | ApplicationsNotVisible                   |
      | Edit role from Executive to Remedy Executive and verify Products | Super Admin | test.automatemail | Executive |      | Reports, Lessons, Episodes, Episodes 2.0 |                             | Learning Pathway 2             | Stamford Hospital | Remedy Executive |      | TCI           | TCI                 | Reports, Lessons, Episodes, Episodes 2.0 |
      #| Edit role from Manager to Remedy TCS and verify Products         | Super Admin | test.automatemail | Manager   |      | Reports, Lessons, Episodes, Episodes 2.0 |                   | Learning Pathway 2             | Stamford Hospital | Remedy TCS       |      | TCI           | TCI                 | Reports, Lessons, Episodes, Episodes 2.0           |
      #| Edit role from Physician to Manager and verify Products          | Super Admin | test.automatemail | Physician |   NPI   | Physician Connect                        | Physician Connect | Learning Pathway 2             | Stamford Hospital | Manager          |      | Reports       | Report              | Lessons, Episodes, Episodes 2.0, Physician Connect |

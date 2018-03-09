Feature: hfdkjkas

  Scenario Outline: Verify that Only name displayed for Learning Pathway ID
    Given I am on the login page
   When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "test.automatemail+eYubINGX@gmail.com" in search box for "<user>-<Role>"
    #Then I search for user with role "<User>-<PreviousRole>"
    Then I select user with role "<User>-<PreviousRole>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I click on learning pathway dropdown
    Then I enter "<RemoveLearningPathwaySearchParameter>" in Learning Pathway search box
    Then I remove "<RemoveLearningPathwaySearchParameter>" from the results
    Then I click on learning pathway dropdown
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify that only learning pathway name "<LearningPathwayName>" is displayed

    Examples: 
      | User        | Email             | NPI | Role         | RemoveLearningPathwaySearchParameter | LearningPathwaySearchParameter |LearningPathwayName|
      | Super Admin | test.automatemail |     | Remedy Other | 18h7phZr1h81, HZhmTBQzHtU1           | NFdw0Kts2C01                   |Learning Pathway 2|

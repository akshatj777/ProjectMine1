Feature: Episode 2.0 Add Patient

  Scenario: User can see ec2 patients page and navigate to different fil
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
  
	Scenario: Verify Add Patient button,Patient Card and Total number of pages on Patient Pages
    Then I verify Add Patient button is present on patients page
    Then I verify Add Patient button is clickable on patients page
    Then I verify "20" Patient Cards are present on patients page
    Then I verify Total number of Pages is present on patients page
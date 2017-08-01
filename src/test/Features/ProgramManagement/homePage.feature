Feature: HomePage Test

  Scenario: User verifies home page elements and default org tab selected.
    
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page
    And I verify "Managing" as default organizations tab selected on homepage 
    And I verify "Hospital" in organization type on homepage
    And I verify "PGP" in organization type on homepage
    And I verify "Payor" in organization type on homepage
    And I verify "SNF" in organization type on homepage
    
    
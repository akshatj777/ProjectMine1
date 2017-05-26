Feature: Episode 2.0 Export Patient List cancel Button

Scenario: User should see Patient Cards after clicking on cancel button in export drawer box

   Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    
    Then I verify the total number of patients present on the Patients Page
    Then I verify "Export" button is appearing beside the number of patients present on the patient page
    When I click on Filter button present on Patient Page 
    And I click on Filters button present on Filter Page
    And I click on Last Name present on the Filter Page
    When I type "xzxpy" in the patient search field on patients page
    Then I click on Done button present on the Filter Page
    And I wait for 15000 milli seconds
    Then I scroll the page to bottom by "-100"
    When I click on export button present on the Patient Page
    Then I verify "Cancel" button is appearing in the export drawer box
    Then I click on "Cancel" button appearing on the export drawer box
    And I wait for 3000 milli seconds
    When I click on Filter button present on Patient Page
    And I wait for 5000 milli seconds
    Then I verify "Filters" is appearing on clicking filters on patient page
    
    
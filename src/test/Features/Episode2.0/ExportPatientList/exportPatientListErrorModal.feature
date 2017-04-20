Feature: Episode 2.0 Export Patient List Error Message

Scenario: Verify Error message is appearing on exporting patient list

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
    And I click on Export button present on the Patient Page to export the Patient List
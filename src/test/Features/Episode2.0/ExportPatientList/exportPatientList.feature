Feature: Episode 2.0 Export Patient List

  Scenario: verify Export drawer functionality
    
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
    Then I verify "Export" button is appearing beside the number of patients present on the patient page
    When I click on export button present on the Patient Page
    Then I should see export drawer is appearing on clicking on export button
    And I should see "Export" button is still appearing beside patient count after export drawer opened
    Then I verify patient count and export are alligned in the same place
    Then I verify "Cancel" button is appearing in the export drawer box
    Then I verify "Export" button is appearing in the export drawer box
    Then I verify opened drawer is appearing on the export drawer box
    Then I verify search area is appearing on the export drawer box
    Then I verify filters are appearing in the export drawer box
    Then I verify "Patients with uncompleted attestations will not be included in this export" message is appearing after selecting the filter to export
    And I click on Select All checkbox present on the Patient Page
    And I click on Export button present on export drawer box to export the Patient List
    And I wait for 5000 milli seconds
    
Scenario: To Verify Filters cannot be deleted after clicking on export button

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
    And I wait for 15000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 15000 milli seconds
    Then I scroll the page to bottom by "-100"
    Then I verify "Export" button is appearing beside the number of patients present on the patient page
    When I click on export button present on the Patient Page
    Then I should see export drawer is appearing on clicking on export button
    And I wait for 5000 milli seconds
    Then I verify "xzxpy" is presnt on the applied filters on export drawer box
    And I click on applied filter in export drawer box
    Then I verify "Patients with uncompleted attestations will not be included in this export" message is appearing after selecting the filter to export
    
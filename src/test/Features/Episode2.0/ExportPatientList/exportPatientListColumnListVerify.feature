Feature: Episode 2.0 Export Drawer Column List Verification

Scenario: Verfication of column list in the export drawer box

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
    Then I verify "Select All" is appearing under column list on export drawer box
    Then I verify "Current Facility" appearing under column list on export drawer box
    Then I verify "Readmitted (Yes/No)" appearing under column list on export drawer box
    Then I verify "Current Care Setting" appearing under column list on export drawer box
    Then I verify "Anchor Admission Date" appearing under column list on export drawer box
    Then I verify "Current Bundle" appearing under column list on export drawer box
    Then I verify "First Name" appearing under column list on export drawer box
    Then I verify "Medicare ID" appearing under column list on export drawer box
    Then I verify "Anchor Discharge Date" appearing under column list on export drawer box
    Then I verify "Anchor Facility" appearing under column list on export drawer box
    Then I verify "Date of Birth" appearing under column list on export drawer box
    Then I verify "Final DRG" appearing under column list on export drawer box
    Then I verify "Last Discharge Date" appearing under column list on export drawer box
    Then I verify "Working DRG" appearing under column list on export drawer box
    Then I verify checkbox is present beside each of the column list in export drawer box
    And I wait for 2000 milli seconds
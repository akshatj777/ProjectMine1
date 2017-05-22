Feature: Episode 2.0 Anchor Discharge Facility Filters

  Scenario Outline: verify Admit Reason filter is present under list of Filter options on Patient Page
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Anchor Discharge Facility Filter is displayed under List of Filter Options
    
    When I click on Anchor Discharge Facility Filter present on Filter Page 
    And I wait for 3000 milli seconds
    And I click on Anchor Discharge Facility dropdown to select the Facilty on the Filter Page
    When I type <anchor discharge facility> in the search field to search the Anchor Discharge Facility
    And I wait for 5000 milli seconds
    And I select Stamford hospital checkbox present in the Filter Page
    And I wait for 9000 milli seconds
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify the total number of patients present on the Patients Page
    And I wait for 5000 milli seconds
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    Then I verify <anchor discharge facility> is appearing under selected filters for Anchor Discharge Facility
    Then I verify "(HHH) Stamford Hospital" is appearing on patient card under "anchorFacility" on patient home page
    When I click on the Expand button on the patient card on the patient page
    And I wait for 5000 milli seconds
    Then I Verify "anchorFacility" value is containing "(HHH) Stamford Hospital" under patient summary page
    And I wait for 2000 milli seconds
    
    Examples:
    
    | anchor discharge facility |
    | Stamford Hospital         |  
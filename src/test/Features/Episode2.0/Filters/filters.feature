Feature: Episode 2.0 Filters

  Scenario: verify pre-selected filter under Filter options on Patient Page
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
    Then I verify Date Range is selected as default filter under Filter options
    Then I verify Care Setting is selected as default filter under Filter options
    Then I verify Initiator is selected as default filter under Filter options

    And I click on Filters button present on Filter Page
    Then I verify following filter is displayed under list of filter options
      | Admit Reason              |
      | Anchor Discharge Facility |
      | Care Plan                 |
      | Care Setting              |
      | Cooperation Metric Filter |
      | Current Facility          |
      | Daily Report              |
      | Date Range                |
      | DRG Type                  |
      | Eligibility               |
      | Episode DRG               |
      | Episode Status            |
      | First Name                |
      | Gender                    |
      | Initiator                 |
      | Inpatient Location        |
      | Last Name                 |
      | Medicare ID               |
      | Payer                     |
      | Quality Metric            |
      | Readmission Count         |
      | Risk Assessment           |
      | SSN                       |
      | Tags                      |
    
    
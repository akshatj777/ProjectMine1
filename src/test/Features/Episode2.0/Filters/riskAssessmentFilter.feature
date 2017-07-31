Feature: Episode 2.0 Risk Assessment Filter

  Scenario: verify Risk Assessment filter is present under list of Filter options on Patient Page
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
    Then I verify Risk Assessment Filter is displayed under List of Filter Options
    When I click on Risk Assessment Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I click on "Low Risk" checkbox under risk assessment filter
    And I wait for 9000 milli seconds
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify the total number of patients present on the Patients Page
    And I wait for 5000 milli seconds
    Then I verify "Low Risk" is appearing under selected filters for Risk Assessment
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    When I click on the Expand button on the patient card on the patient page
    And I wait for 5000 milli seconds
    Then I verify "Low Risk" risk status is appearing on the patient summary page
    And I wait for 2000 milli seconds

Feature: Episode 2.0 Cooperation Metric Filters

  Scenario: verify Admit Reason filter is present under list of Filter options on Patient Page
    Given I am on the login page
    When I enter email field qa.tcs@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Cooperation Metric Filter is displayed under List of Filter Options
    When I click on Cooperation Metric Filter present on Filter Page
    And I wait for 4000 milli seconds
    And I Click on "Assigned" checkbox under Cooperation Metric present on the Filter Page
    And I wait for 10000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 15000 milli seconds
    Then I scroll the page to bottom by "-100"
    Then I verify the total number of patients present on the Patients Page
    And I wait for 5000 milli seconds
    Then I verify "Assigned" is appearing under selected filters for Cooperation Metrics
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    When I click on the Expand button on the patient card on the patient page
    And I wait for 10000 milli seconds
    When I click on Hide Summary button present on the patient summary page
    Then I click on "Care Plan" tab appearing under patient summary page to verify care plan created
    And I wait for 5000 milli seconds
    And I switch to ec2 patient summary iframe
    And I wait for 2000 milli seconds
    Then I click on forms tab under careplan on patient summary page
    And I wait for 2000 milli seconds
    Then I verify "assigned" is appearing in forms under careplan on patient summary page
    And I wait for 2000 milli seconds

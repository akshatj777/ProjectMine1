Feature: Episode 2.0 Care Setting Filters

  Scenario: verify Admit Reason filter is present under list of Filter options on Patient Page
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
    Then I verify Care Setting Filter is displayed under List of Filter Options
    Then I click on Inpatient checkbox under care setting present on the Filter Page
    And I wait for 15000 milli seconds
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    And I wait for 10000 milli seconds
    Then I verify the total number of patients present on the Patients Page
    And I wait for 5000 milli seconds
    Then I verify "Inpatient" is appearing under selected filters for care setting
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    When I click on the Expand button on the patient card on the patient page
    And I wait for 10000 milli seconds
    When I click on Hide Summary button present on the patient summary page
    And I switch to ec2 patient summary iframe
    Then I verify "Inpatient" is appearing under admit type column under patient summary transitions
    And I wait for 2000 milli seconds

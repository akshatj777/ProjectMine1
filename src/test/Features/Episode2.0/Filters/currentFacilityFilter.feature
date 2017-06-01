Feature: Episode 2.0 Current Facility Filter

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
    Then I verify Current Facility Filter is displayed under List of Filter Options 

    When I click on Current Facility Filter present on Filter Page 
    And I wait for 3000 milli seconds
    And I click on Current Facility dropdown present on Filter Page 
    When I type <current facility> in the search field to search the Current Facility
    And I wait for 5000 milli seconds
    And I select Stamford hospital checkbox as Anchor Facility present in the Filter Page 
    And I wait for 15000 milli seconds
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify the total number of patients present on the Patients Page  
    And I wait for 5000 milli seconds
    Then I verify <current facility> is appearing under selected filters for Current Facility
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    When I click on the Expand button on the patient card on the patient page
    And I wait for 10000 milli seconds
    When I click on Hide Summary button present on the patient summary page
    And I switch to ec2 patient summary iframe
    Then I verify "(OTHER) Stamford Hospital" is appearing under facility column under patient summary transitions
    And I wait for 4000 milli seconds
    
    Examples:
    
       | current facility  |
       | Stamford Hospital | 
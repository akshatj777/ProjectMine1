Feature: Episode 2.0 Last Name Filter

   Scenario: verify Last Name filter is present under list of Filter options on Patient Page
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
     Then I verify Last Name Filter is displayed under List of Filter Options
     
     When I click on last name Filter present on Filter Page
     And I wait for 2000 milli seconds
     Then I enter "patient" under last name filter
     And I wait for 9000 milli seconds
     Then I verify the total number of patients present on the Patients Page  
     Then I click on Done button present on the Filter Page
     And I wait for 2000 milli seconds
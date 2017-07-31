Feature: Patient status on Home Limited Service Worklist

  Scenario Outline: Verify Patient should be included in Home With Limited Services worklist latest anchor admission's with discharge care setting as HOM/REH(outpatient).pending cancellation M3 episode status.
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 2000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 2000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I wait for 5000 milli seconds
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait for 10000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG No JavaScript
    Then I wait for 3000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "6" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    Then I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    Then I wait for 5000 milli seconds
    Then I click on the Post Acute tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on Home with Limited Services sub tab on the patient Card Page
    Then I wait for 10000 milli seconds
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 4000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 2000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | MTHREEHOMELIMITED |

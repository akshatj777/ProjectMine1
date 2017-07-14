Feature: Notes Activity Date

  Scenario: Verify that upon clicking on Notes - Activity Date, Calendar should appear to select the date manually.
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 15000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 10000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the "Bedside Visit" from the topic drop down on Add Clinical Document on Patient Card
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I click on the centre of the calendar header to select date and month
    Then I click on the next link to select the required year "12/07/2014" on date picker
    Then I select the month "12/07/2014" from calendar from date picker
    Then I select the "12/07/2014" from the calendar from date picker
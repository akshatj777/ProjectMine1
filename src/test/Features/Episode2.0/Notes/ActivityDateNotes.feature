Feature: Notes Activity Date

  Scenario: Verify that upon clicking on Notes - Activity Date, Calendar should appear to select the date manually.
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I wait for 30000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    And I wait for 30000 milli seconds
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the value from the topic drop down on  Add Clinical Document on Patient Card
    And I wait for 25000 milli seconds
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I verify Calendar appears to select the date manually on  Add Clinical Document on Patient Card

  Scenario Outline: Verify that user should be able to select any valid date from the Notes - Activity Date through calendar.
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I wait for 30000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the value from the topic drop down on  Add Clinical Document on Patient Card
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I click on outside of the calendar on Add Clinical Document on Patient Card
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card

    Examples: 
      | date |
      |   17 |

  Scenario Outline: Verify that user should be able to create any date(past/present/future) as Notes - Activity Date.
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the value from the topic drop down on  Add Clinical Document on Patient Card
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    Then I verify Calendar appears to select the date manually on  Add Clinical Document on Patient Card

    Examples: 
      | date |
      |   12 |
      |   21 |
      |   29 |

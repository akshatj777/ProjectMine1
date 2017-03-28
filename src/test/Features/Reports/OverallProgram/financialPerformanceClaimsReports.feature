Feature: Financial Performance claims Overall Program

Scenario Outline: Verify that Financial Performance claims report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    Then I should see performance reports column Tile text as "Participant"
    Then I should see performance reports column Tile text as "Episode Initiator"
    Then I should see performance reports column Tile text as "Anchor Facility"
    Then I should see performance reports column Tile text as "Bundle"
    Then I should see performance reports column Tile text as "Anchor Admission Quarter" 
    
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds

    When I click to "Anchor Admission Month" field filter under "<Level(Names, Categories, etc.)>" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Admission Month" in the header text of filter page
    When I click on "PREVIOUS" under anchor admission month filter
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    
    Examples:
      | email                              |  Level(Names, Categories, etc.) |
      | shutestaug231132a@yopmail.com      |  Anchor Begin Date			         |
      | shutestaug221130a@yopmail.com      |  Anchor Begin Date			         |
      | reptestachmodel2opsfin@yopmail.com |  Anchor Begin Date			         |

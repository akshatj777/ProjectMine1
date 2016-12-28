Feature: Financial Performance claims Overall Program

Scenario Outline: Verify that Performance claims report display data based on provisioning
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

    When I click to "Episode (EPS)" field filter under "Measure" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    
    Then I enter 5 as the value on the tetbox in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "Measure" result in "Episode (EPS)" field column 
    
    When I click to "Forecasted Program Size" field filter under "Measure" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    Then I click on range filter dropdown in the filter modal
    And I selected Less Than from the dropdown menu in the filter modal 
    
    Then I enter 10000 as the value on the tetbox in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "Measure" result in "Forecasted Program Size" field column 
    
    When I click to "Anchor Admission Month" field filter under "Level(Names, Categories, etc.)" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Filter on Anchor Admission Month" in the header text of filter page
    And I should see "<Month>" in the filter value list
    And I click on "<Month>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<Month>" result in "Anchor Admission Month" field column for "Anchor Admission Month" filter field
    
    When I click to "Anchor Admission Quarter" field filter under "Level(Names, Categories, etc.)" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Filter on Anchor Admission Quarter" in the header text of filter page
    And I should see "<Quarter>" in the filter value list
    And I click on "<Quarter>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<Quarter>" result in "Anchor Admission Month" field column for "Anchor Admission Month" filter field
    
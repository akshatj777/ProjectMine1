Feature: Spending claims Overall Program

Scenario Outline: Verify that Spending claims report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
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
    
    When I click to "<Field Measure>" field filter under "Measures" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    Then I click on range filter dropdown and selected Less Than range in the filter modal
    Then I enter "<Value1>" as the value on the textbox in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<Value1>" result in "(Adj Hist) Spending Avg" field column for "Measures" filter field
		
		When I click to "<Anchor Admission Month>" field filter under "<Level(Names, Categories, etc.)>" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Admission Month" in the header text of filter page
    And I click on "<Month>" for the "<Year>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<Month>" result in "Anchor Admission Month" field column for "Anchor Admission Month" filter field
    
       Examples:
      | email                         | Field Measure	  					|Value1			|Value2								| Anchor Admission Month         |Level(Names, Categories, etc.)       | Month                | Year |
      |shutestaug231132a@yopmail.com 	| (Adj Hist) Spending Avg		|5000	 	    | 100000							|		Month												 | Anchor Begin Date									 | Jan									| 2014 |

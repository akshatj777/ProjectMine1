Feature: Next site of care Carl

  Scenario Outline: Verify that Next site of care report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "NSoC"
    Then I click on "CARL" report text for NSoC Reports 
    And I wait for 20000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe

    Then I should see Next site of care reports column Tile text as "Participant"
    Then I should see Next site of care reports column Tile text as "Episode Initiator"
    Then I should see Next site of care reports column Tile text as "Anchor Facility"
    Then I should see Next site of care reports column Tile text as "Bundle"
    Then I should see Next site of care reports column Tile text as "Anchor Admission Quarter" 

    When I click on field-panel-icon button
    And I wait for 4000 milli seconds

    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on "<participant>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field
    
    
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I click on "<anchorFacility2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<anchorFacility2>" result in "Anchor Facility" field column for "Anchor Facility" filter field
    
    When I click to "Anchor Admission Month" field filter under "<Time>" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Admission Month" in the header text of filter page
    And I select "<Range>" from the drop down list on the filter page
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<Month>" result in "Anchor Admission Month" field column for "Anchor Admission Month" filter field
      
    When I switch to default window from iframe
    When I click on close reports cross icon on report page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title  
      
    Examples:
    | email                         | participant |	anchorFacility1       	           | anchorFacility2                  |	episodeInitiator1                | Time										    |			Range									 |	Month	|
    | shutestaug231132a@yopmail.com | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital	  |	Penn Presbyterian Medical Center | Anchor Begin Date					|			Between (and incl.)		 |	Jan		|
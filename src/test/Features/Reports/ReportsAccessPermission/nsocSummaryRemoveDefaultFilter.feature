Feature: Remove the default filters from NSoC Summary Report

Scenario Outline: User should be able to remove default filters from NSoC Summary Report and add Anchor Discharge Month Filter

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports 
    And I wait for 30000 milli seconds
    #Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "isAnchorAdmission" field filter under "isAnchorAdmission" filter field from default filters
    Then I remove "Model" field filter under "Model" filter field from default filters
    Then I remove "Participant ID" field filter under "Episode Initiator" filter field from default filters
    Then I remove "BPID" field filter under "Episode Initiator" filter field from default filters
    Then I remove "CCN" field filter under "Anchor Facility" filter field from default filters
    
    When I click on field-panel-icon button
    And I wait for 2000 milli seconds
    When I click to "Anchor Discharge Month" field filter under "Anchor Discharge Date" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Discharge Month" in the header text of filter page
    Then I select "PREVIOUS" discharge month in anchor discharge month filter
    And I click on ok button from filter
    And I wait for 3000 milli seconds
     
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |

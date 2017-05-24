Feature: EC Reports Verification

Scenario Outline: User should see Model2 and Model3 filter under any report

Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds

    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds

    And I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues                 |
      
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    And I wait for 20000 milli seconds
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I wait for 2000 milli seconds
    
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
    When I click to "Model" field filter under "Model" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Model" in the header text of filter page
    And I should see "2" in the filter value list
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    
    When I click on filter count label to see preselected filters
    And I wait for 2000 milli seconds
    Then I verify "Model" filter is preselected under the filter
    Then I should see "Model includes 2" is present under preselected model filter
    
    Examples:
    
      | email                         | Menu 1      |
      | shutestaug231132a@yopmail.com | Patient ID  |
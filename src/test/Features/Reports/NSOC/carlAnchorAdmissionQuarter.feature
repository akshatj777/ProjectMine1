Feature: Anchor admission quarter filter on CARL report under Next Site of Care

Scenario Outline: Verify Anchor admission quarter filter under CARL reports under Next Site of Care

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports 
    And I wait for 40000 milli seconds
    When I switch to reports embedded iframe
    
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
    
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I wait for 1000 milli seconds
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<anchor admission quarter1>" result in "Anchor Admission Quarter" field column for "Anchor Begin Date" filter field
    
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
      | email                              | anchor admission quarter1 |
      | shutestaug231132a@yopmail.com      | 2017Q2                    |
      | shutestaug221130a@yopmail.com      | 2017Q2                    |
      | shutestaug15252p@yopmail.com       | 2017Q2                    |
      | shutestaug15220p@yopmail.com       | 2017Q2                    |
      | reptestachmodel2opsfin@yopmail.com | 2017Q2                    |
      | shutestaug26212p@yopmail.com       | 2017Q2                    |
      | shutestaug15240p@yopmail.com       | 2017Q2                    |
      | shutestjul26420p@yopmail.com       | 2017Q2                    |
      | shutestjul26415@yopmail.com        | 2017Q2                    |
      | repopsnofintest@yopmail.com        | 2017Q2                    |
      | shutestaug221150a@yopmail.com      | 2017Q2                    |
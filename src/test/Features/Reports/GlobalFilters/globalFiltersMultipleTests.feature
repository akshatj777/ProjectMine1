Feature: Global Filter Verification for different tests

Scenario Outline: Applied global filters are getting selected on Re-opening Global filters page, after clicking 'Clear' button followed by 'Hide Summary' button.

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for 60000 milli seconds
    
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    
    Then I click on <episode initiator1> checkbox under episode initiator for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    
    And I click on Apply filters button for global filters
    And I wait for 20000 milli seconds
    
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    When I click on Clear button to clear the selected filter
    And I wait for 1000 milli seconds
    Then I click on hide Summary button to unhide the available global filters
    And I wait for 1000 milli seconds
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I wait for 2000 milli seconds
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    
    Examples:
    
      | email                         | participant1 | episode initiator1               | anchor facility1                 |
      | shutestaug231132a@yopmail.com | Penn         | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      
Scenario Outline: Filters applied should be displayed after clearing global filters but not applying the changes.

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for 60000 milli seconds
    
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    
    Then I click on <episode initiator1> checkbox under episode initiator for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    
    And I click on Apply filters button for global filters
    And I wait for 20000 milli seconds
    
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    When I click on Clear button to clear the selected filter
    And I wait for 1000 milli seconds
    Then I click on hide Summary button to unhide the available global filters
    And I wait for 1000 milli seconds
    
    When I click on "Physician" tile on the top navigation of reports page
    Then I click on "Volume (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 60000 milli seconds
    Then I verify "Volume (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    
    Examples:
    
      | email                         | participant1 | episode initiator1               | anchor facility1                 |
      | shutestaug231132a@yopmail.com | Penn         | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |    
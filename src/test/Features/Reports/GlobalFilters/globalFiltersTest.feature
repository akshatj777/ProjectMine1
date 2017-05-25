Feature: Global Filters Verification for Multiple Scenarios

Scenario Outline: User should see multiple filters selected in report should redirect in other reports when selected more than 3 filters

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    
    Then I verify "Program Overview" in the reports header page
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
    Then I click on <episode initiator3> checkbox under episode initiator for global filters
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
    
    Then I click on <anchor facility2> checkbox under anchor facility for global filters
    And I verify <anchor facility2> is appearing under applied anchor facility on global filters
    
    And I click on Apply filters button for global filters
    And I wait for 20000 milli seconds
    
    When I see "3" filters applied under global filters applied count
    
    When I switch to reports embedded iframe
    Then I should see <episode initiator3> is applied under filter options in episode initiator dropdown under program overview report
    Then I should see <anchor facility2> is applied under filter options in anchor facility dropdown under program overview report
    When I switch to default window from iframe
        
    When I click on "Overall Program" tile on the top navigation of reports page
    Then I click on "Performance (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Performance (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
    And I verify <anchor facility2> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 18000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    
    When I switch to default window from iframe
    Then I click on Show Summary button to unhide the available global filters
    When I click on Clear button to clear the selected filter
    And I wait for 3000 milli seconds
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I wait for 3000 milli seconds
    Then I click on <episode initiator2> checkbox under episode initiator for global filters
    And I verify <episode initiator2> is appearing under applied episode initiator on global filters
    And I wait for 3000 milli seconds
    Then I click on <episode initiator3> checkbox under episode initiator for global filters
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
    And I wait for 3000 milli seconds
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I wait for 3000 milli seconds
    Then I click on <anchor facility2> checkbox under anchor facility for global filters
    And I verify <anchor facility2> is appearing under applied anchor facility on global filters
    
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    When I see "5" filters applied under global filters applied count
    
    When I click on "Next Site of Care" tile on the top navigation of reports page
    Then I click on "Next Site of Care Summary" report under "Next Site of Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Next Site of Care Summary" in the reports header page
    When I see "5" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
    And I verify <anchor facility2> is appearing under applied anchor facility on global filters
    And I verify <episode initiator2> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    Then I click on Show Summary button to unhide the available global filters
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 4000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> and <bpid2> in the selected filters
    Then I verify anchor facility filter is selected with <ccn1> and <ccn2> in the selected filters
    When I switch to default window from iframe
    
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
       
      | email                         | Menu 1          | participant1 | episode initiator1                                                        | episode initiator2                         | episode initiator3               | anchor facility1                | anchor facility2                 | anchor facility3                               | participantid1 | bpid1    | ccn1   | bpid2    | ccn2   |
      | shutestaug231132a@yopmail.com | Dashboards      | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital of The University of Pennsylvania | Penn Presbyterian Medical Center | Hospital Of Univ Of Pennsylvania| Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys | 441348         | 2070-021 | 390223 | 2070-020 | 390111 |
          
Scenario Outline: User should remove the selected global filter using X mark and that should be reflected in other reports

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 20000 milli seconds
    Then I verify "Program Overview" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    
    When I click on "Overall Program" tile on the top navigation of reports page
    Then I click on "Performance (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I click on Show Summary button to unhide the available global filters
    
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I click on Apply filters button for global filters 
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    When I switch to default window from iframe
    Then I click on Show Summary button to unhide the available global filters
    And I wait for 5000 milli seconds
    When I click on cross mark beside the selected participant filter with <participant1>
    And I wait for 5000 milli seconds
    Then I click on <episode initiator1> checkbox under participant for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I click on Apply filters button for global filters 
    And I wait for 10000 milli seconds
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    When I switch to default window from iframe
    Then I click on Show Summary button to unhide the available global filters
    And I wait for 5000 milli seconds
    When I click on cross mark beside the selected episode initiator filter with <episode initiator1>
    And I wait for 5000 milli seconds
    
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
       | email                        | Menu 1      | participant1 | episode initiator1                                                        | anchor facility1                | participantid1 |
       | shutestaug231132a@yopmail.com| Dashboards  | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital Of Univ Of Pennsylvania| 441348         |
      
Scenario Outline: User should clear the selected filters in global filters

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    
    Then I verify "Program Overview" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    
    Then I click on <participant1> checkbox under participant for global filters
    Then I click on <episode initiator1> checkbox under participant for global filters
    Then I click on <anchor facility1> checkbox under participant for global filters
    When I click on Clear button to clear the selected filter
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I click on Apply filters button for global filters 
    And I wait for 10000 milli seconds
    Then I see "1" filters applied under global filters applied count
    
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
      | email                         | Menu 1     | participant1 | episode initiator1                                                        | anchor facility1                | participantid1 |
      | shutestaug231132a@yopmail.com | Dashboards | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital Of Univ Of Pennsylvania| 441348         |
      
Scenario Outline: User should be able to check multiple checkbox under global filters

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    Then I verify "Program Overview" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    
    Then I click on <episode initiator2> checkbox under participant for global filters
    And I verify <episode initiator2> is appearing under applied episode initiator on global filters
    Then I click on <episode initiator3> checkbox under participant for global filters
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
       
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
      | email                         | Menu 1     | participant1 | episode initiator1                                                        | episode initiator2                         | episode initiator3               |
      | shutestaug231132a@yopmail.com | Dashboards | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital of The University of Pennsylvania | Penn Presbyterian Medical Center |
      
Scenario Outline: User should be able to search for one field on global filters
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    
    Then I verify "Program Overview" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I click on "Participant" search icon to search existing data on global filters
    And I seach with "Pen" under "Participant" filter on global filter
    Then I see <participant1> appearing under participant filter of global filters
    Then I click on <participant1> checkbox under participant for global filters
    And I wait for 5000 milli seconds
    And I verify <participant1> is appearing under applied participant on global filters
    And I click on Apply filters button for global filters 
    And I wait for 18000 milli seconds
    
    When I switch to default window from iframe
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
     Examples:
     
      | email                         | Menu 1     | participant1 |
      | shutestaug231132a@yopmail.com | Dashboards | Penn         |

Scenario Outline: User should be able to search for multiple fields on global filters

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    Then I verify "Program Overview" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I click on "Episode Initiator" search icon to search existing data on global filters
    And I seach with "Presbyterian" under "Episode Initiator" filter on global filter
    Then I see <episode initiator3> appearing under episode initiator filter of global filters
    Then I click on <episode initiator3> checkbox under participant for global filters
    And I wait for 5000 milli seconds
    And I verify <episode initiator3> is appearing under applied episode initiator on global filters
    And I click on Apply filters button for global filters 
    And I wait for 10000 milli seconds
    
    When I switch to default window from iframe
    And I click on reports tile on the top of reports page
    And I wait for 3000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
     | email                         | Menu 1     | participant1 | episode initiator1                                                        | episode initiator2                         | episode initiator3               | bpid1    |
     | shutestaug231132a@yopmail.com | Dashboards | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital of The University of Pennsylvania | Penn Presbyterian Medical Center | 2070-020 |
     
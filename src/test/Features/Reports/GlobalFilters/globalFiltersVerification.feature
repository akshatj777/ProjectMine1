Feature: Global Filters Verification

Scenario Outline: User should be able to see the Global Filters

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
    #Then I should see following Reports text for Dashboards reports
      #| Program Overview |
      
    #When I click on "Program Overview" reports text for "Dashboards" report tile
     Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for 40000 milli seconds
    
    #Then I verify "Program Overview" in the reports header page
     Then I verify "Performance (Claims)" in the reports header page
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
    
    Then I click on <episode initiator1> checkbox under participant for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    
    Then I click on <anchor facility1> checkbox under participant for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I see "3" filters applied under global filters applied count
    
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
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 18000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    
    When I switch to default window from iframe
    When I click on "Overall Program" tile on the top navigation of reports page
    Then I click on "Financial Performance (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Financial Performance (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Patient ID" tile on the top navigation of reports page
    Then I click on "Episode DRG Issues" report under "Patient ID" reports tile on the top of reports page
    And I wait for 60000 milli seconds
    Then I verify "Episode DRG Issues" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Patient ID" tile on the top navigation of reports page
    Then I click on "InPatient Episode Clearing" report under "Patient ID" reports tile on the top of reports page
    And I wait for 60000 milli seconds
    Then I verify "InPatient Episode Clearing" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Post Acute Care" tile on the top navigation of reports page
    Then I click on "Initial SNF Length of Stay Summary" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 40000 milli seconds
    Then I verify "Initial SNF Length of Stay Summary" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Post Acute Care" tile on the top navigation of reports page
    Then I click on "SNF Performance (Claims)" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "SNF Performance (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Post Acute Care" tile on the top navigation of reports page
    Then I click on "Post Acute Care (Claims)" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 60000 milli seconds
    Then I verify "Post Acute Care (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Physician" tile on the top navigation of reports page
    Then I click on "Performance (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "Performance (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Physician" tile on the top navigation of reports page
    Then I click on "Volume (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "Volume (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Physician" tile on the top navigation of reports page
    Then I click on "Spending (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "Spending (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Next Site of Care" tile on the top navigation of reports page
    Then I click on "Next Site of Care Summary" report under "Next Site of Care" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "Next Site of Care Summary" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    
    When I click on "Readmissions" tile on the top navigation of reports page
    Then I click on "Readmissions (Claims)" report under "Readmissions" reports tile on the top of reports page
    And I wait for 30000 milli seconds
    Then I verify "Readmissions (Claims)" in the reports header page
    When I see "3" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    
    When I switch to default window from iframe
    And I click on reports tile on the top of reports page
    And I wait for 5000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
    
      | email                         | Menu 1          | participant1 | episode initiator1               | anchor facility1                   | participantid1 | bpid1    | ccn1   |
      #| shutestaug231132a@yopmail.com | Dashboards | Penn         | Penn Presbyterian Medical Center | Upenn - Penn Presbyterian Hospital | 441348         | 2070-021 | 390223 |
      | shutestaug231132a@yopmail.com | Overall Program | Penn         | Penn Presbyterian Medical Center | Upenn - Penn Presbyterian Hospital | 441348         | 2070-021 | 390223 |
    
    
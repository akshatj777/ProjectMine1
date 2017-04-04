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
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    
    Then I verify "Program Overview" in the reports header page
    When I see "0 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I see <episode initiator2> appearing under episode initiator filter of global filters
    Then I see <episode initiator3> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    Then I see <anchor facility2> appearing under anchor facility filter of global filters
    Then I see <anchor facility3> appearing under anchor facility filter of global filters
    
    Then I click on <participant1> checkbox under participant for global filters
    And I should see "Participant: Penn" under applied filter of global filters
    
    Then I click on <episode initiator3> checkbox under participant for global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    
    Then I click on <anchor facility2> checkbox under participant for global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    And I click on Apply filters button for global filters
    And I wait for 10000 milli seconds
    
    When I see "3 filters applied" under global filters applied count
    
    Then I click on "Performance (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Performance (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Financial Performance (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Financial Performance (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Spending (Claims)" report under "Overall Program" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Spending (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Episode DRG Issues" report under "Patient ID" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Episode DRG Issues" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "InPatient Episode Clearing" report under "Patient ID" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "InPatient Episode Clearing" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Initial SNF Length of Stay Summary" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Initial SNF Length of Stay Summary" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "SNF Performance (Claims)" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "SNF Performance (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "SNF Volume (Claims)" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "SNF Volume (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Post Acute Care (Claims)" report under "Post Acute Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Post Acute Care (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Performance (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Performance (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Volume (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Volume (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Spending (Claims)" report under "Physician" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Spending (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "CARL" report under "Next Site of Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "CARL" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Next Site of Care Summary" report under "Next Site of Care" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Next Site of Care Summary" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Readmissions" report under "Readmissions" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Readmissions" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Then I click on "Readmissions (Claims)" report under "Readmissions" reports tile on the top of reports page
    And I wait for 18000 milli seconds
    Then I verify "Readmissions (Claims)" in the reports header page
    When I see "3 filters applied" under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    And I should see "Participant: Penn" under applied filter of global filters
    And I should see "Episode Initiator: Penn Presbyterian Medical Cente" under applied filter of global filters
    And I should see "Anchor Facility: Upenn - Penn Presbyterian Hospital" under applied filter of global filters
    
    Examples:
    
      | email                         | Menu 1     | participant1 | episode initiator1                                                        | episode initiator2                         | episode initiator3               | anchor facility1                             | anchor facility2                   | anchor facility3              |
      | shutestaug231132a@yopmail.com | Dashboards | Penn         | The Pennsylvania Hospital of The University of Pennsylvania Health System | Hospital of The University of Pennsylvania | Penn Presbyterian Medical Center | Upenn - Hospital Of The Univ. Of Pennsylvania| Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital |
    
    
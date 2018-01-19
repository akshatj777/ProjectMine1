Feature: Verification of Next site of care summmary model3 report

  Scenario Outline: User should see the default filters appearing under nsoc model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify anchor post acute admission year "Anchor Post Acute Admission Year includes previous Anchor Post Acute Admission Year and current Anchor Post Acute Admission Year" is preselected under nsoc model3 report
    Then I verify isAnchorAdmission filter having "isAnchorAdmission includes 1" under preselected nsoc model3 filter

    Examples: 
      | email                           |
      | RPFINM3SNFSabHealQA@yopmail.com |
      | RPFINHHAModel3@yopmail.com      |

  Scenario Outline: User should not see other reports except nsoc model3
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    And I should not see Reports Tile text as "Dashboards"
    And I should not see Reports Tile text as "Overall Program"
    And I should not see Reports Tile text as "Physician"
    And I should not see Reports Tile text as "Post Acute Care"
    And I should not see Reports Tile text as "Readmissions"
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared

    Examples: 
      | email                           |
      | RPFINM3SNFSabHealQA@yopmail.com |
      | RPFINHHAModel3@yopmail.com      |

  Scenario Outline: User should verify default measues appearing unde nsoc model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field

    Examples: 
      | email                      |
      | rmsnfrpfinmod3@yopmail.com |

  Scenario Outline: User should see only 3 value under model filter in nsoc model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "3" in the filter value list
    And I should not see "2" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                      |
      | rmsnfrpfinmod3@yopmail.com |

  Scenario Outline: User should not see nsoc model3 user other than rpfin role user
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    And I should not see Report with text as "Next Site of Care Summary [Model 3]"

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |

  Scenario Outline: Patient drill through of episodes column under nsoc model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column of nsoc model3 report
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Provider" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Provider CCN" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "DOD" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Bundle DRG Code" is appearing under Episodes table
    Then I should verify "Bundle DRG Status" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Admit Date" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Date" is appearing under Episodes table
    Then I should verify "Eps w Readmits" is appearing under Episodes table
    Then I should verify "Total Readmits" is appearing under Episodes table

    Examples: 
      | email                      |
      | rmsnfrpfinmod3@yopmail.com |

  Scenario Outline: Nsoc Model3 report unde nsoc should not appear for the user with model 3 and provider type pgp/ach and model 2 with provider type pgp/ach
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    And I should not see Report with text as "Next Site of Care Summary [Model 3]"

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestaug231132a@yopmail.com |
      | shutestaug15252p@yopmail.com  |

  Scenario Outline: Global filters should be available in nsoc model3 report and should be able to apply the global filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I switch to default window from iframe
    Then I verify "Next Site of Care Summary [Model 3]" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Payer" filter is appearing under global filters
    Then I see <payer1> appearing under payer filter of global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    Then I click on <payer1> checkbox under payer for global filters
    And I verify <payer1> is appearing under applied payer on global filters
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    Then I click on <episode initiator1> checkbox under episode initiator for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    When I switch to default window from iframe
    When I see "4" filters applied under global filters applied count
    When I switch to reports embedded iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    Then I verify payer filter is selected with <payer1> under selected filters
    When I switch to default window from iframe

    Examples: 
      | email                      | payer1   | participant1                       | episode initiator1                        | anchor facility1           | participantid1 | bpid1    | ccn1   |
      | RPFINHHAModel3@yopmail.com | Medicare | United Health Services of New York | UHS - Twin Tier Home Health Care - Vestal | Twin Tier Home Health, Inc | 807551         | 3090-209 | 337181 |

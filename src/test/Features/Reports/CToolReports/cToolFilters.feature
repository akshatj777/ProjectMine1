Feature: CTool Filter Verification

  Scenario Outline: User should be able to select participant filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payers
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I uncheck All option under "participant" filter in the filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I click on "participant" filter in the filter options
    Then I enter <participant> under the "participant" field searchbox
    Then I click the <participant> appearing under "participant" field filter under filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "<selectedparticipant>" is appearing under "participant" filter field after applying filter

    Examples: 
      | email                          | Menu 1     | participant     | selectedparticipant |
      #| Medicare Payer Users|
      | shutestaug231132a@yopmail.com  | Dashboards | Penn            | All                 |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com     | Dashboards | RP Payer Test A | All                 |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com | Dashboards | RP Payer Test A | RP Payer Test A     |

  Scenario Outline: User should be able to select Episode Iniatiator filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I uncheck All option under "initiator" filter in the filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I click on "initiator" filter in the filter options
    Then I enter <episode initiator> under the "initiator" field searchbox
    Then I click the <episode initiator> appearing under "initiator" field filter under filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "<selected episode initiator>" is appearing under "initiator" filter field after applying filter

    Examples: 
      | email                          | Menu 1     | episode initiator                | selected episode initiator       |
      #| Medicare Payer Users|
      | shutestaug231132a@yopmail.com  | Dashboards | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com     | Dashboards | Rp Test Hospital Two             | All                              |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com | Dashboards | Rp Test Hospital Two             | Rp Test Hospital Two             |

  Scenario Outline: User should be able to select Facility filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I uncheck All option under "facility" filter in the filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I click on "facility" filter in the filter options
    Then I enter <anchor facility> under the "facility" field searchbox
    Then I scroll the page to bottom by "500"
    Then I click the <anchor facility> appearing under facility field filter under filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "<selected anchor facility>" is appearing under "facility" filter field after applying filter

    Examples: 
      | email                          | Menu 1     | anchor facility                  | selected anchor facility         |
      #| Medicare Payer Users|
      | shutestaug231132a@yopmail.com  | Dashboards | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com | Dashboards | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |

  Scenario Outline: User should be able to select Bundle filters and changed in Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I uncheck All option under "bundle" filter in the filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I click on "bundle" filter in the filter options
    Then I enter <bundle type> under the "bundle" field searchbox
    Then I click the <bundle type> appearing under "bundle" field filter under filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I verify "<selected bundle type>" is appearing under "bundle" filter field after applying filter

    Examples: 
      | email                          | Menu 1     | bundle type              | selected bundle type     |
      #| Medicare Payer Users|
      | shutestaug231132a@yopmail.com  | Dashboards | Amputation               | Amputation               |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com     | Dashboards | Congestive heart failure | Congestive heart failure |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com | Dashboards | Amputation               | Amputation               |

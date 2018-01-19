Feature: CTool Report Adjusted Historic Button Is not clickable

  Scenario Outline: User should not be able to click on adjusted historic button for RPFIN Role users with Medicare,Emblem and Multiple payers
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
    Then I Click on "Adjusted" button appearing under benchmark in filter options
    And I verify current url is not changed after clicking on adjusted historic button

    Examples: 
      | email                          | Menu 1     |
      #| Medicare Payer Users|
      | shutestaug231132a@yopmail.com  | Dashboards |
      #| Emblem Payer Users  |
      #| emblemachrpfin@yopmail.com     | Dashboards |
      #| Multiple Payer Users|
      #| multipayerachrpfin@yopmail.com | Dashboards |

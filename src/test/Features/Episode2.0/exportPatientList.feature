Feature: Episode 2.0 Expand Patient Card

  Scenario: verify Admit Reason filter is present under list of Filter options on Patient Page
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page 
    And I click on Filters button present on Filter Page
    And I click on Last Name present on the Filter Page
    When I type "xzxpy" in the patient search field on patients page
    Then I click on Done button present on the Filter Page
    And I wait for 15000 milli seconds
    Then I scroll the page to bottom by "-100"
    When I click on export button present on the Patient Page
    Then I verify "Patients with uncompleted attestations will not be included in this export" message is appearing after selecting the filter to export
    And I click on Select All checkbox present on the Patient Page
    And I click on Export button present on the Patient Page to export the Patient List
    And I wait for 5000 milli seconds
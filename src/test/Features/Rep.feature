Feature: Hello

Scenario: Drag and drop of filters into rows from acailable fields
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    And I wait until refresh button is disappeared
    Then I drag and drop "BPID" from available fields to rows under layout
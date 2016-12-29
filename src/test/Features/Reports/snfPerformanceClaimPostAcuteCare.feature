Feature: SNF Performance claims post acute care

  Scenario Outline: Verify that SNF Performance claims report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe

    Then I should see performance reports column Tile text as "Participant"
    Then I should see performance reports column Tile text as "Episode Initiator"
    Then I should see performance reports column Tile text as "Post Acute Facility"
    Then I should see performance reports column Tile text as "Bundle"
    Then I should see performance reports column Tile text as "Anchor Admission Quarter"

    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
    
    
    
    
    Examples:
    | email                         |
    | shutestaug231132a@yopmail.com |
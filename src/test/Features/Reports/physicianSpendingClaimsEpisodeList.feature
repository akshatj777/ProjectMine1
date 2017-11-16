Feature: Verification of spending claims reports episode list drill through under physician

  Scenario Outline: User should be able to click on episode list column and verify the drill through for spending claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
    Then I click on a number under episodes column of spending claims report
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Fracture/Non-Fracture" is appearing under Episodes table
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Begin Date (Key)" is appearing under Episodes table
    Then I should verify "Anchor End Date" is appearing under Episodes table
    Then I should verify "Attending Physician NPI" is appearing under Episodes table
    Then I should verify "Attending Physician Name" is appearing under Episodes table
    Then I should verify "Operating Physician NPI" is appearing under Episodes table
    Then I should verify "Operating Physician Name" is appearing under Episodes table
    Then I should verify "Attributed Physician NPI" is appearing under Episodes table
    Then I should verify "Attributed Physician" is appearing under Episodes table
    Then I should verify "Spending Category" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

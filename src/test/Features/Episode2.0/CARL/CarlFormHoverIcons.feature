Feature: Hover Icon on Carl Form

  Scenario Outline: Hover icon should be present on the Carl form and display the message on hovering
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 10000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I hover on i icon present on Caregiver on TakeOver page
    Then I Verify the text hovering i icon on caregiver
    And I wait for 2000 milli seconds
    Then I Click on Anticipated Discharge Needs on takeover page
    And I wait for 2000 milli seconds
    Then I Click on Physical therapy on Anticipated Discharge Needs page
    Then I hover on i icon present on Restoration on TakeOver page
    Then I Verify the text hovering i icon on Patients Restoration Potential
    
    Examples: 
      | First name | Last name | Medicare ID |
      | PATIENT    | TRISTO    | wa984986    |

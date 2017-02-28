Feature: Patient Transition Verification

  Scenario Outline: Transition Details Verification

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    Then I should see "Dashboard" in the left navigator present on the episode dashboard page
    Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
    Then I should see "Patients" in the left navigator present on the episode dashboard page
    Then I should see "Admin Center" in the left navigator present on the episode dashboard page
    When I click on "Patients" in the left navigator present on the episode dashboard page
    Then I click on "Patient List" present in the Patients dropdown menu
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see "Active" filter tab present on the patients page
    Then I should see "Completed" filter tab present on the patients page
    Then I should see "Canceled" filter tab present on the patients page
    And I wait for 8000 milli seconds
    When I click on Patient under patient list page
    And I wait for 4000 milli seconds
    Then I should see Episode Initiator appearing under transitions table
    Then I should see Facility appearing under transitions table
    Then I should see Admit Date appearing under transitions table
    Then I should see Admit Reason appearing under transitions table
    Then I should see Admit Type appearing under transitions table
    Then I should see Discharge Date appearing under transitions table
    Then I should see Discharge Location appearing under transitions table
    Then I should see PAPs appearing under transitions table
    Then I should see DRGs appearing under transitions table
    Then I should verify Actions symbol is appearing under transition table
    And I wait for 4000 milli seconds
    
    Examples:

      | email                | password  |
      | qa.admin@yopmail.com | Episode1! |
    
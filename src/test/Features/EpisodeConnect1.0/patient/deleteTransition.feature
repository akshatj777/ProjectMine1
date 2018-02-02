Feature: Patient Transition Delete

  Scenario Outline: Delete Patient Transition Details
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    Then I should see "Dashboard" in the left navigator present on the episode dashboard page
    Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
    Then I should see "Patients" in the left navigator present on the episode dashboard page
    When I click on "Patients" in the left navigator present on the episode dashboard page
    Then I click on "Patient List" present in the Patients dropdown menu
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see "Active" filter tab present on the patients page
    Then I should see "Completed" filter tab present on the patients page
    Then I should see "Canceled" filter tab present on the patients page
    When I click on Patient under patient list page
    Then I click on Action symbol is appearing under transition table
    Then I click on delete to delete the transition
    Then I click on ok button

    Examples: 
      | email                    | password  |
      | qa.adminuser@yopmail.com | Episode1! |

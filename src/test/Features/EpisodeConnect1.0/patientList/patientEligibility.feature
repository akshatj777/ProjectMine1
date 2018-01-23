Feature: Patient Eligibility Verification

  Scenario Outline: Check Eligibility

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
    
    When I click on "Patients" in the left navigator present on the episode dashboard page
    Then I click on "Patient List" present in the Patients dropdown menu
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see "Active" filter tab present on the patients page
    Then I should see "Completed" filter tab present on the patients page
    Then I should see "Canceled" filter tab present on the patients page
    And I wait for 8000 milli seconds
    Then I click "Active" filter tab present on the patients page
    And I wait for 4000 milli seconds
    When I click on Patient under patient list page
    And I click agree under attestation page
    Then I should see "Patients" details
    And I wait for 2000 milli seconds
    Then I click on eligibility dropdown
    Then I click on "Not Eligible" status
    And I wait for 5000 milli seconds
    And I search for "Not Eligible" in episodes dropdown
    Then I verify "NOT ELIGIBLE" is present in episode dropdown
    And I wait for 2000 milli seconds
    Then I click on not eligible in the episodes dropdown
    And I wait for 1000 milli seconds
    Then I click on cancel
    And I wait for 2000 milli seconds
    And I search for date in episodes dropdown
    And I wait for 2000 milli seconds
    Then I verify date present in episode dropdown
    Then I click on not eligible in the episodes dropdown
    And I wait for 2000 milli seconds
    Then I verify not eligible patient is present in cancelled section


    Examples:

      | email                | password  |
      | qa.adminuser@yopmail.com | Episode1! |
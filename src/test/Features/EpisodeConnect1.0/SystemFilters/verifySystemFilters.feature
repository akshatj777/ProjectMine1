Feature: Verify System Filters under Patinet List

Scenario Outline: Verify Patinet under System Filters in Patinet List
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes

    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    
    When I click on "Patients" in the left navigator present on the episode dashboard page
    When I click on "Inpatient Episodes" in the Patients dropdown menu
    Then I click on Load filter in "Inpatient Episodes" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    
    When I click on "Post Acute Episodes" in the Patients dropdown menu
    Then I click on Load filter in "Post Acute Episodes" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    When I click on "Readmissions" in the Patients dropdown menu
    Then I click on Load filter in "Readmissions" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    When I click on "Non-BPCI inpatients" in the Patients dropdown menu
    Then I click on Load filter in "Non-BPCI inpatients" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    When I click on "Inpatients with no DRG" in the Patients dropdown menu
    Then I click on Load filter in "Inpatients with no DRG" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    When I click on "Anchor discharges" in the Patients dropdown menu
    Then I click on Load filter in "Anchor discharges" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    When I click on "Discharges from readmission" in the Patients dropdown menu
    Then I click on Load filter in "Discharges from readmission" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    
    When I click on "Canceled episodes" in the Patients dropdown menu
    Then I click on Load filter in "Canceled episodes" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
 
 	When I click on "Discharges with no DRG" in the Patients dropdown menu
    Then I click on Load filter in "Discharges with no DRG" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
 
    Examples:

      | email                | password  |
      | qa.admin@yopmail.com | Episode1! |
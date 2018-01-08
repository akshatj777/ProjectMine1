@EC1Smoke
Feature: Patient Matching Test Plan

  Scenario Outline: Patient Matching - First Phase - SSN, Medicare ID, Second Phase - LastnameMP, FirstnameMP, Gender
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
    When I click on "Patient List" in the Patients dropdown menu
    When I click on Add Patient button present on the ec1 patients page
    And I wait for 15000 milli seconds
    Then I verify "Add Patient" text is present on the add patient page
    Then I verify "Patient Information" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "11/05/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "<facility>" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "123456789" in Medical Record number on Add Patient page
    Then I click on Add new button to add phone number
    And I enter "9856321470" in Number "0" on Add Patient page
    Then I select "Home" in Address Type on Add Patient page
    And I enter "Street" in street on Add Patient page
    And I enter "City" in City on Add Patient page
    Then I select "Arizona" in State on Add Patient page
    And I enter "11011" in Zip on Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I verify "Primary Care Physician Information" text is present on the add patient page
    Then I click on the next button present on the Primary Care Physician Information page
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I click on submit button present on the new filter modal
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter duplicate firstname and lastname on Add Patient modal
    And I enter date of birth "11/06/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter duplicate social security number in the SSN text box field present on Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "<facility>" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "23456789" in Medical Record number on Add Patient page
    Then I select "Work" in Address Type on Add Patient page
    And I enter "Street1" in street on Add Patient page
    And I enter "City1" in City on Add Patient page
    Then I select "Florida" in State on Add Patient page
    And I enter "11012" in Zip on Add Patient page
    Then I click on Add new button to add phone number
    And I enter "9856321407" in Number "0" on Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I should see "Found patient matching your criteria; view the patient page for more information" on patient found on add patient modal

    Examples: 
      | email                | password  | facility          |
      | qa.admin@yopmail.com | Episode1! | Stamford Hospital |

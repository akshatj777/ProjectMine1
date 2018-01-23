@EC1Smoke
Feature: User can add appointment

  Background: Patient creation
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I click on submit button present on the new filter modal

  Scenario Outline: Verify that user is able create an appointment from Patient List page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I click on first patient gear menu
    When I click on "Add Appointment" from patients list patient gear menu
    Then I verify "New Appointment" header on popup
    Then I select "<Appointment_type>" Appointment tye
    Then I fill "Name Test" in "Contact" on Appointment form
    Then I fill "Test" in "Facility" on Appointment form
    Then I fill "9748563210" in "Contact phone" on Appointment form
    And I click on "Schedule Appointment" button
    And I will wait to see "New appointment created." in "p" tag
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowAppointments"
    And I verify "Office Visit" in Appointments under Care Plan on Patient page

    Examples: 
      | Appointment_type |
      | Office Visit     |

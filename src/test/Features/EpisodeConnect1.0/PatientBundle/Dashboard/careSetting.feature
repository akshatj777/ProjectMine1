@EC1Smoke
Feature: Care Setting and Care Plan

  Background: Create Patient
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page

  Scenario Outline: Care Type validation for admitting facility for HHH, Expired, Other
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "<Care Setting>" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait for 4000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I should see "Care type is required for the selected care setting" validation message on Transition modal
    Then I click on the Cancel Button on the New Transition on Add Patient page

    Examples: 
      | Care Setting      |
      | HHH - Hospital    |
      | EXPIRED - Expired |
      | OTHER - Other     |

  Scenario: Verifying the different Care Type options for different Care settings
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I select the "Admit" "caresetting" "EXPIRED - Expired" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I click on "CareType" dropdown on Transition modal
    And I verify "Expired as Inpatient" under dropdown text on Transition modal
    And I verify "Expired at Home" under dropdown text on Transition modal
    And I verify "Expired in a Medical Facility" under dropdown text on Transition modal
    And I verify "Expired at Unknown" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "HOM - Home" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal
    Then I select the "Admit" "caresetting" "HHA - Home Health Agency" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I verify "Skilled services" under dropdown text on Transition modal
    And I verify "Non skilled services" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "HPC - Hospice" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I click on "CareType" dropdown on Transition modal
    And I verify "Inpatient" under dropdown text on Transition modal
    And I verify "Outpatient" under dropdown text on Transition modal
    And I verify "Emergency" under dropdown text on Transition modal
    And I verify "Scheduled" under dropdown text on Transition modal
    And I verify "Observation" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "IRF - Inpatient Rehabilitation" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal
    Then I select the "Admit" "caresetting" "LTC - Long-Term Care Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal
    Then I select the "Admit" "caresetting" "OTHER - Other" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I click on "CareType" dropdown on Transition modal
    And I verify "Acute Care Hospital" under dropdown text on Transition modal
    And I verify "Admitted as an Inpatient to this Hospital" under dropdown text on Transition modal
    And I verify "Another Institution" under dropdown text on Transition modal
    And I verify "Assisted Living" under dropdown text on Transition modal
    And I verify "Critical Access Hospital" under dropdown text on Transition modal
    And I verify "Court/Law Enforcement" under dropdown text on Transition modal
    And I verify "Federal Hospital" under dropdown text on Transition modal
    And I verify "Hospice in Medical Facility" under dropdown text on Transition modal
    And I verify "Hospital-Based Medicare Approved Swing Bed" under dropdown text on Transition modal
    And I verify "Hospice at Home" under dropdown text on Transition modal
    And I verify "Intermediate Care Facility" under dropdown text on Transition modal
    And I verify "Left Against Medical Advice" under dropdown text on Transition modal
    And I verify "Medicaid Certified Nursing Facility" under dropdown text on Transition modal
    And I verify "Psychiatric Hospital/Unit" under dropdown text on Transition modal
    And I verify "Shelter" under dropdown text on Transition modal
    And I verify "Still a Patient" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "PGP - PGP" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal
    Then I select the "Admit" "caresetting" "REH - Rehabilitation" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I click on "CareType" dropdown on Transition modal
    And I verify "Inpatient" under dropdown text on Transition modal
    And I verify "Outpatient" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I click on "CareType" dropdown on Transition modal
    And I verify "Skilled Nursing" under dropdown text on Transition modal
    And I verify "Custodial Care" under dropdown text on Transition modal
    And I verify "TCU" under dropdown text on Transition modal
    And I verify "Leave of Absence" under dropdown text on Transition modal
    Then I select the "Admit" "caresetting" "UNK - Unknown" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    And I should not see "CareType" dropdown on Transition modal

  Scenario: Patient overview status on deleting a transition
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "3" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I click on Create Transition button present on the patient overview page
    Then I click on Action symbol is appearing under transition table
    Then I click on delete to delete the transition
    Then I click on ok button
    And I will wait to see "Admission is deleted successfully!" in "p" tag
    And I reload my page

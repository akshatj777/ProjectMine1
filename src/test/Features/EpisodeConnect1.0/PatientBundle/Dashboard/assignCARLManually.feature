@EC1Smoke
Feature: Assign CARL Tool Manually

  Background: Manually Assign CARL Tool on Patient Overview - Transitions
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "0" in assigned form counter
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click Start CARL tool link "1"
    And I will wait to see "Assign New Form" in "h4" tag
    And I will wait to see "Form Type" in "label" tag
    And I will wait to see "Due Date" in "label" tag
    And I will wait to see "Admission Id" in "label" tag
    When I click "Submit" xpath element "//*[@id='submitButton']"
    And I will wait to see patient's name on patient summary page
    Then I will wait to see CARL Tool
    And I will wait to see "Created on:" in "h7" tag
    And I will wait to see "Due Date:" in "h7" tag
    And I will wait to see "Admission PAN:" in "h7" tag
    And I should see text of "1" in assigned form counter

  Scenario: Editing Manually Assigned CARL Tool
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    When I click "Edit CARL" xpath element "//*[@id='edit_BPNSoCForm']"
    And I will wait to see "CARL Tool" in "h4" tag
    And I will wait to see "Care At the Right Location Calculator" in "h1" tag
    And I will wait to see "Independence" in "a" tag
    Then I select "Caregiver needed" from "Ambulatory Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_ambulatoryStatus']"
    Then I select "Assistance needed for one or more ADLs" from "Activities of Daily Living in Independence" by xpath "//*[@id='bp_nsoc_form_type_activitiesOfDailyLiving']"
    Then I select "Forgetful" from "Cognitive Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_cognitiveStatus']"
    Then I select "24 hours a day (or no caregiver needed)" from "Capable Caregiver Availability in Independence" by xpath "//*[@id='bp_nsoc_form_type_capableCaregiverAvailability']"
    Then I click "Therapies" text in tag "a"
    And I will wait to see "Therapy Needs" in "label" tag
    Then I select "More than one therapy" from "Therapy Needs" by xpath "//*[@id='bp_nsoc_form_type_totalTimeNeeded']"
    Then I click "Skilled Nursing Services" text in tag "a"
    And I will wait to see "Ostomy" in "label" tag
    Then I select "Not needed" from "Ostomy" by xpath "//*[@id='bp_nsoc_form_type_ostomy']"
    Then I select "Not needed" from "Tube Feeding" by xpath "//*[@id='bp_nsoc_form_type_tubeFeeding']"
    Then I select "Not needed" from "Tracheostomy" by xpath "//*[@id='bp_nsoc_form_type_tracheostomy']"
    Then I select "Not needed" from "Catheter" by xpath "//*[@id='bp_nsoc_form_type_catheter']"
    Then I select "Not needed" from "Injectable Meds" by xpath "//*[@id='bp_nsoc_form_type_injectableMeds']"
    Then I select "Not needed" from "Venipuncture Blood Testing" by xpath "//*[@id='bp_nsoc_form_type_venipunctureBloodTesting']"
    Then I select "Not needed" from "Clinical Nursing Oversight" by xpath "//*[@id='bp_nsoc_form_type_clinicalNursingOversight']"
    Then I select "Not needed" from "Teaching And Training Activities" by xpath "//*[@id='bp_nsoc_form_type_teachingAndTrainingActivities']"
    Then I select "Not needed" from "Wound Care" by xpath "//*[@id='bp_nsoc_form_type_woundCare']"
    Then I select "Not needed" from "Oxygen Or Other Respiratory Support" by xpath "//*[@id='bp_nsoc_form_type_oxygenOrOtherRespiratorySupport']"
    Then I click "Proposal" text in tag "a"
    And I will wait to see "Proposal" in "label" tag
    Then I will wait to see the proposal "Home With Limited Services (HOM)*"
    Then I will verify text "Proper Use of the CARL Tool. The CARL Tool provides decision support, which is intended to give qualified healthcare providers guidance when formulating a recommendation for the next site of care for a patient. It should not be used without, or as a substitute for, the judgement of a qualified healthcare provider who has the ability to assess the individual circumstances of each patient's case." in xpath element "//div[@id='disclaimer'][2]"
    Then I will verify text "Patient may benefit from community or home-based services, including Part B PT, personal care attendant, outpatient specialty care or other services." in xpath element "//div[@id='disclaimer'][1]"
    Then I select "Agrees" from "Agrees with Proposal" by xpath "//*[@id='bp_nsoc_form_type_agreesWithRecommendedNSC']"
    When I fill in "Staff Member Name" xpath "//*[@id='bp_nsoc_form_type_hospitalStaffMember']" with "testHospitalStaff"
    When I fill in "Additional comments" xpath "//*[@id='bp_nsoc_form_type_additionalComments']" with "Additional Comments"
    When I click "Submit" xpath element "//*[@id='submitButton']"
    Then I will wait to see CARL Tool "1" on active state
    And I should see text of "1" in active form counter
    And I will wait to see "Home With Limited Services (HOM)*" in "b" tag
    And I will wait to see "testHospitalStaff" in "b" tag
    And I will wait to see "Agrees" in "span" tag

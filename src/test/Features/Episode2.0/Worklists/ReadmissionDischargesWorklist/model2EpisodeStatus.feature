Feature: Patient status on Readmission Discharges Work List

  Scenario Outline: Patient with Episode status as Active through M2 with a Readmission with discharge care setting HHH-Inpatient within last 7 days
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to see and enable the attestation on the "1" patient on the Patient Card page
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the delete button on the transition to delete all the transitions
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "12" days
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "4" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "6" days
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caresetting" "IRF - Inpatient Rehabilitation" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" facility "CHI Saint Luke's Health Memorial Lufkin IRF" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "4" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I will wait to see and click on "Post Acute" followed by "span" tag
    Then I will wait to see and click on "Readmission Discharges" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to the see the visibility of loader to disappear
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name    |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | READMISSIONDISCHARGE |

  Scenario Outline: The 7 calendar days starts at midnight following the Readmission discharge date, Transition earlier than last 7th day
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to see and enable the attestation on the "1" patient on the Patient Card page
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I delete the active transition no "1" to make the patient cancelled
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on datepicker button to select the discharge date on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the centre of the calendar header to select discharge date and month on Transition Page
    Then I click on the previous next link to select the required year "7" on date picker
    Then I wait for 1000 milli seconds
    Then I select the month "7" from calendar from date picker on Discharge
    Then I wait for 1000 milli seconds
    Then I select the calendar date "7" from the calendar from date picker on Transition Page
    Then I wait for 1000 milli seconds
    Then I select the before midinight time from the calendar from datepicker on Transition Page
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the Discharge care setting value "IRF - Inpatient Rehabilitation" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge facility value "CHI Saint Luke's Health Memorial Lufkin IRF" on add a new transition
    Then I wait for 8000 milli seconds
    Then I click on update transition to add a new episode
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I will wait to see and click on "Post Acute" followed by "span" tag
    Then I will wait to see and click on "Readmission Discharges" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to the see the visibility of loader to disappear
    Then I verify the "<Patient Last Name>" patient not present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name    |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | READMISSIONDISCHARGE |

  Scenario Outline: Patient with Episode status as Pending Cancellation M2 with a Readmission with IRF care setting discharge facility within last 7 days
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to see and enable the attestation on the "1" patient on the Patient Card page
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "10" days
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "5" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "IRF - Inpatient Rehabilitation" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "CHI Saint Luke's Health Memorial Lufkin IRF" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I will wait to see and click on "Post Acute" followed by "span" tag
    Then I will wait to see and click on "Readmission Discharges" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to the see the visibility of loader to disappear
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the edit button on the "2" transition to edit the Active transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 2000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "3" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I will wait to see and click on "Post Acute" followed by "span" tag
    Then I will wait to see and click on "Readmission Discharges" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to the see the visibility of loader to disappear
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name    |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | READMISSIONDISCHARGE |

  Scenario Outline: Patient has an episode status other than Active or Pending Cancellation(Completed)
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to see and enable the attestation on the "1" patient on the Patient Card page
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "110" days
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "5" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "IRF - Inpatient Rehabilitation" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "CHI Saint Luke's Health Memorial Lufkin IRF" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I will wait to see and click on "Post Acute" followed by "span" tag
    Then I will wait to see and click on "Readmission Discharges" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    Then I click on Done button present on the Filter Page
    Then I wait to the see the visibility of loader to disappear
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name    |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | READMISSIONDISCHARGE |

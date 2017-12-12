Feature: New Note

  Scenario Outline: Adding new note from Care Plan
    Given I am on the login page
    When I enter email field <email> for login
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I will wait to see patient's name on patient summary page
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see patient's name on patient summary page
    Then I click on Notes tab under care plan
    Then I click on new note button
    Then I should see "New Note" present on the new note page
    Then I select "Baseline" from "Topic" by xpath "//*[@id='bp_personbundle_bpnotetype_topic']"
    When I fill in 'Body' xpath "//*[@id='bp_personbundle_bpnotetype_body']" with "body text in this input"
    Then I click on create note button
    And I will wait to see "Note created." in "p" tag
    And I will wait to see "body text in this input" in "pre" tag

    Examples: 
      | email              |
      | qa.lpn@yopmail.com |
      | qa.prm@yopmail.com |

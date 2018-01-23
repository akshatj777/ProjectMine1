@EC1Smoke
Feature: Filters pinned to dashboard

  Background: Patient Creation
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
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    And I am on "/secure/dashboard"

  Scenario: Verify My patients tab, Pin Filter to dashboard and bookmark.
    		 Also, verify Join Care team functionality form patient dashboard

    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I enter patients fullname in the patient search box under active tab on Dashboard
    And I should see patient first name appearing under search on Dashboard
    And I am on "/secure/pn/patientslist"
    Then I click on "Save As" button
    And I will wait to see "New filter" in "h4" tag
    And I enter "Random filter" in filter name on New filter
    Then I click on "Create & Continue" button
    And I will wait to see "filter saved" in "p" tag
    And I will wait for invisibility of "filter saved" in "p" tag
    And I am on "/secure/pn/patientslist"
    And I click on "Random filter" filter name under patients menu
    And I click on "Pin to dashboard" under open filter
    And I will wait to see "filter pinned to dashboard" in "p" tag
    And I am on "/secure/dashboard"
    And I click on "Random filter" on navigation tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I click on select all checkbox on patient dashboard
    And I click on gear Icon on top on patient dashboard
    And I click on "JOIN CARETEAM" present under gear menu on top on patient dashboard
    And I will wait to see "Assigned to care team" in "p" tag
    And I am on "/secure/pn/patientslist"
    And I click on "Random filter" filter name under patients menu
    And I click on "Unpin from dashboard" under open filter
    And I will wait to see "filter unpinned from dashboard" in "p" tag
    And I will wait for invisibility of "filter unpinned from dashboard" in "p" tag
    And I click on "Pin to bookmarks" under open filter
    And I will wait to see "filter pinned to bookmarks" in "p" tag
    And I am on "/secure/bookmarks"
    And I should see "Random filter" filter under bookmark
    Then I click on gear icon under "Random filter" bookmark
    And I enter "Random filter" in titile field in bookmark
    And I click on "ok" button on edit bookmark
    And I reload my page
    And I should see "Random filter" filter under bookmark
    Then I click on gear icon under "Random filter" bookmark
    And I clear titile field in bookmark
    And I click on "ok" button on edit bookmark
    And I will wait to see "You have some form errors. Please check below." in "p" tag
    And I click on "exit" button on edit bookmark
    And I am on "/secure/pn/patientslist"
    And I click on "Random filter" filter name under patients menu
    And I click on "Unpin from bookmarks" under open filter
    And I will wait to see "filter unpinned from bookmarks" in "p" tag
    And I am on "/secure/pn/patientslist"
    And I click on "Random filter" filter name under patients menu
    And I click on "Delete" under open filter

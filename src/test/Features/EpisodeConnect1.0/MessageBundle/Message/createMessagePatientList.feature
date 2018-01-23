@EC1Smoke
Feature: Messages on patient list

  Scenario: Send message on patients list with success
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I click on first patient gear menu
    When I click on "Send message" from patients list patient gear menu
    Then I verify "New message" header on popup
    When I fill in "Message Body" xpath "//*[@id='bp_msg_form_message']" with "Test Message Functionality"
    And I click on "Send" button
    And I will wait to see "Message sent" in "p" tag
    And I refresh the page
    Then I click on Message Icon on header navigation bar 
    And I click on see all messages under Message on header navigation bar
    And I click on "Sent" under Message tab on Dashboard
    And I click on date sorting under Message
    And I click on date sorting under Message
    And I click on first message under sent box under Message
    And I should see "Test Message Functionality" in message body under Message


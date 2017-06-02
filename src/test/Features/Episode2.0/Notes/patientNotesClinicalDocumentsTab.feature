Feature: Created Patient Note Comparision in EC1 and viewed in EC2 

Scenario Outline: To verify Notes created in EC1 through i framing should only be accessible on EC2 care plan tab should not be seen under Clinical Documents tab .
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    Then I should see Alerts present on the top-nav bar present on the episode dashboard page
    Then I should see Messeges present on the top-nav bar present on the episode dashboard page
    Then I should see Notifications present on the top-nav bar present on the episode dashboard page
    Then I should see user profile present on the top-nav bar present on the episode dashboard page
    Then I should see "Dashboard" in the left navigator present on the episode dashboard page
    Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
    Then I should see "Patients" in the left navigator present on the episode dashboard page
    Then I should see "Admin Center" in the left navigator present on the episode dashboard page
    When I click on "Patients" in the left navigator present on the episode dashboard page
    When I click on "Patient List" in the Patients dropdown menu
    When I click on Add Patient button present on the ec1 patients page
    And I wait for 15000 milli seconds
    Then I verify "Add Patient" text is present on the add patient page
    Then I verify "Patient Information" text is present on the add patient page
    Then I enter "<patient first name>" in the first name text box present on the Add Patient page
    And I enter  "<patient last name>" in the last name text box present on the Add Patient page
    And I enter date of birth "01/05/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 8000 milli seconds
    Then I click on the next button present on the Add Patient page
    And I wait for 15000 milli seconds
    When I click on Calender button present on the Add Patient page
    And I wait for 2000 milli seconds
    And I select today's date as the admission date
    And I wait for 2000 milli seconds
    And I select "Acute Care Hospital" from admission care type drop down menu present on Add Patient page
    And I wait for 4000 milli seconds
    When I click on Add Transition button present on the Add Patient page
    And I wait for 10000 milli seconds
    And I click on Agree button present on the Attestation page
    And I wait for 20000 milli seconds
    Then I should see Care Plan present on the student details page
    Then I click on Care Plan
    And I wait for 2000 milli seconds
    When I click on Notes tab under care plan
    Then I click on new note button
    And I wait for 3000 milli seconds
    Then I should see "New Note" present on the new note page
    And I wait for 2000 milli seconds
    Then I click on topic dropdown under new note
    Then I select value from the topic dropdown
    Then I click on create note button
    And I wait for 15000 milli seconds
    Then I switch back to old window
    And  I wait for 8000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And  I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page 
    And  I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<patient last name>" in the search box on the patients page
    And I wait for 60000 milli seconds
   
    Examples:

      | email                | password  | patient first name | patient last name |
      | qa.admin@yopmail.com | Episode1! |   HHHHZZZZZZ       |   KKKKYYYYYYY     |     

      
Feature: Patent care plan and care team

 Scenario Outline: Assigning care paln and care team
  Given I am on the login page
  When I enter email field <email> for login
  And I enter password field <password> for Login
  Then I click Access button
  And I wait for 2000 milli seconds
  Then I should see Tile text Episodes
  
  And I click on the "Episodes" tile
  And I switch to new window
  Then I should see Episode header text "Dashboard"

  Then I should see "Dashboard" in the left navigator present on the episode dashboard page
  Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
  Then I should see "Patients" in the left navigator present on the episode dashboard page
  Then I should see "Admin Center" in the left navigator present on the episode dashboard page
  
  When I click on "Patients" in the left navigator present on the episode dashboard page
  Then I click on "Patient List" present in the Patients dropdown menu
  Then I should see "Patient" present on the patient list filter page present on the patient list page 
  Then I should see "Active" filter tab present on the patients page
  Then I should see "Completed" filter tab present on the patients page
  Then I should see "Canceled" filter tab present on the patients page
  And I wait for 8000 milli seconds

  When I click on Patient under patient list page
  Then I should see "Patients" details
  And I wait for 2000 milli seconds
  Then I should see Care Plan present on the student details page
  Then I click on Care Plan
  And I wait for 2000 milli seconds
  Then I should see Assign Care Plan under care plan page
  And I wait for 2000 milli seconds
  When I click on Assign Care Plan
  And I wait for 3000 milli seconds
  Then I should see "Asign Care Plan" present on the assign care plan page
  And I wait for 2000 milli seconds
  Then I should see "by Bundle" present in the popup
  Then I should see "by Issue" text on the popup
  Then I should see "Acute Myocardial Infarction" under the plans
  And I wait for 2000 milli seconds
  When I assign "Care Plan Search" with "177"
  And I wait for 1000 milli seconds
  Then I select the checkbox in the plan
  Then I click on Save button
  And I wait for 2000 milli seconds
  Then I click on Appointments under care plan
  Then I should see new apointment button
  Then I click on new appointment button
  And I wait for 3000 milli seconds
  Then I should see "New Appointment" present on the new appointment page
  Then I assign "7847713019" under contact
  Then I assign "St David's Georgetown Hospital" under facility
  Then I assign "7847713019" under contact phone
  Then I click on schedule appointment button
  
  
    Examples:

      |          email            |   password   |
      |  qa.admin@yopmail.com 		|   Episode1!  |
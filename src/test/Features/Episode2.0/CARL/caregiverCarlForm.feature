Feature: To verify the options and functionality of Caregiver section of Carl form

  Scenario Outline: Hover icon should be present on the Carl form and display the message on hovering
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 10000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I Verify that Carl form should appear with White bar with Patient Name "<Last name>" "<First name>" and x icon on the page
    Then I Verify that Carl form should appear with Cancel link
    Then I Verify that Carl form should appear with Save your progress link
    Then I Verify that Carl form should appear with review the form link
    Then I Verify that Carl form should appear Left navigator displaying four sections
    Then I hover on i icon present on Caregiver on TakeOver page
    Then I Verify the text hovering i icon on caregiver
    And I wait for 2000 milli seconds
    Then I verify that Does the patient have a capable caregiver? should appear on takeover page
    And I verfiy that Yes, 24 hours a day option is present under Does the patient have a capable caregiver
    And I verfiy that Yes, has caregiver support less than 24 hours a day option is present under Does the patient have a capable caregiver
    And I verfiy that No caregiver available option is present under Does the patient have a capable caregiver
    And I verfiy that No caregiver needed option is present under Does the patient have a capable caregiver
    Then I click on Yes, 24 hours a day option under Does the patient have a capable caregiver
    Then I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page
    And I wait for 2000 milli seconds
    Then I click on Yes, has caregiver support less than 24 hours a day option under Does the patient have a capable caregiver
    Then I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page
    And I wait for 2000 milli seconds
    Then I click on No caregiver available option under Does the patient have a capable caregiver
    Then I verify that Add Caregiver link should not appear under Choose Caregiver
    Then I click on No caregiver needed option under Does the patient have a capable caregiver
    Then I verify that Add Caregiver link should not appear under Choose Caregiver
    And I wait for 2000 milli seconds
    Then I click on Yes, 24 hours a day option under Does the patient have a capable caregiver
    And I click on Add Caregiver link under Choose Caregiver
    Then I Enter "<F_Name>" and "<L_Name>" on Add Caregiver form
    And I click on Create button to add Caregiver
    And I wait for 5000 milli seconds
    Then I click on close button in dropdown under Choose Caregiver
    And I wait for 3000 milli seconds
    Then I verify that Care Network Member drop down should appear under Choose Caregiver section in Caregiver on takeover page
    Then I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page
    And I wait for 2000 milli seconds
    Then I click on No caregiver needed option under Does the patient have a capable caregiver
    Then I verify that Care Network Member drop down should not appear under Choose Caregiver
    Then I verify that Add Caregiver link should not appear under Choose Caregiver
    Then I click on No caregiver available option under Does the patient have a capable caregiver
    Then I verify that Care Network Member drop down should not appear under Choose Caregiver
    Then I verify that Add Caregiver link should not appear under Choose Caregiver
    And I wait for 2000 milli seconds
    Then I click on Yes, has caregiver support less than 24 hours a day option under Does the patient have a capable caregiver
    And I wait for 2000 milli seconds
    Then I verify that Care Network Member drop down should appear under Choose Caregiver section in Caregiver on takeover page
    Then I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page
    And I wait for 2000 milli seconds
    Then I Verify that Carl form should appear with Save & Continue link
    And I wait for 2000 milli seconds
    Then I click on Anticipated Discharge Needs on side menu option
    Then I Click on Physical therapy on Anticipated Discharge Needs page
    And I wait for 2000 milli seconds
    Then I hover on i icon present on Restoration on TakeOver page
    Then I Verify the text hovering i icon on Patients Restoration Potential
    Then I close the patient summary Page
    And I wait for 2000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 10000 milli seconds
    Then I click on Care Team on navigation bar on patient summary page
    And I wait for 10000 milli seconds
    Then I switch to Patient Care Team frame
    And I click on setting icon to remove the patient under Care Team
    And I wait for 2000 milli seconds
    And I click On Remove to delete the patient
    And I wait for 5000 milli seconds
    And I click on OK button to delete the patient
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page

    Examples: 
      | First name | Last name  | F_Name        | L_Name       |
      | AUTOMATION | DO_NOT_USE | FirstNameTest | LastNameTest |

  Scenario Outline: To verify upon selecting the +Add Caregiver link in the Caregiver page, the user should be able to complete the information on the Caregiver form.
    To add a caregiver by selecting a member from a list of all Care Network Members associated with a patient

    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 10000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on Yes, 24 hours a day option under Does the patient have a capable caregiver
    And I click on Add Caregiver link under Choose Caregiver
    Then I verify first name is mandatory field to a create Caregiver
    Then I verify last name is mandatory field to a create Caregiver
    Then I verify create button is disabled
    Then I Enter "<F_Name>" and "<L_Name>" on Add Caregiver form
    Then I verify create button is enabled
    Then I verify Relationship field to create Caregiver
    Then I verify the label dropdown under Relationship field
    And I wait for 10000 milli seconds
    Then I verify Email field to create Caregiver
    Then I enter "<Email_Id>" in email field
    And I wait for 2000 milli seconds
    Then I verify Primary Phone field to create Caregiver
    Then I verify Home option in primary phone dropdown
    Then I verify Mobile option in primary phone dropdown
    Then I verify Work option in primary phone dropdown
    Then I verify Other option in primary phone dropdown
    Then I verify Home should be as default option
    And I wait for 5000 milli seconds
    Then I enter "9874561230" in Primary Phone field
    And I wait for 2000 milli seconds
    Then I click on Add Phone button for Additional phone number to Create Caredriver
    And I wait for 2000 milli seconds
    Then I verify Addtional Phone field to create Caregiver
    And I click on Create button to add Caregiver
    And I wait for 5000 milli seconds
    Then I click on close button in dropdown under Choose Caregiver
    Then I verify that Care Network Member drop down should appear under Choose Caregiver section in Caregiver on takeover page
    And I verify Select should appear in Care Network Member dropdwon placeholder
    Then I click on Care Network Members dropdown under Choose Caregiver
    And I wait for 5000 milli seconds
    Then I select "LASTNAMETEST, FIRSTNAMETEST" associated Caregiver from the dropdown
    And I wait for 2000 milli seconds
    Then I verify the "LASTNAMETEST, FIRSTNAMETEST" is populated in Care Network Member dropdown
    And I wait for 2000 milli seconds
    Then I verify the "LASTNAMETEST, FIRSTNAMETEST" on caregiver information card
    Then I verify "<Email_Id>" on caregiver information card
    Then I verify "<Phone>" number on caregiver information card
    And I wait for 2000 milli seconds
    
    

    Examples: 
      | First name | Last name  | F_Name        | L_Name       | Email_Id             | Phone        |
      | AUTOMATION | DO_NOT_USE | FirstNameTest | LastNameTest | testuser@yopmail.com | 987-456-1230 |

  Scenario Outline: To verify deleting of the caregiver created
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 10000 milli seconds
    Then I click on Care Team on navigation bar on patient summary page
    And I wait for 10000 milli seconds
    Then I switch to Patient Care Team frame
    And I click on setting icon to remove the patient under Care Team
    And I wait for 2000 milli seconds
    And I click On Remove to delete the patient
    And I wait for 5000 milli seconds
    And I click on OK button to delete the patient
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page

    Examples: 
      | First name | Last name  | F_Name        | L_Name       |
      | AUTOMATION | DO_NOT_USE | FirstNameTest | LastNameTest |

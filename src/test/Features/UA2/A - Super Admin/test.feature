Feature: ghkdjf

  Scenario Outline: Edit locations -<Description>
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I click on "Applications" tab on the left
    Then I select "<EnableApplications>" product
    Then I select "Permissions" tab
    When I deselect "<RemoveLocations>" locations for PTA user
    Then I select "<AddLocations>" locations for PTA user
    Then I click on Submit button while edit for "<User>-<Role>"
    Then I verify health system "<HealthSystemValidation>"
    Then I verify programs "<ProgramsValidation>"
    Then I verify location "<LocationsValidation>"
    And I click on the top user account link
    Then I click on "Log Out" button
    Given I am on the login page
    Then I click on "Log Out" button again
    And I should see Log in widget
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I switch to new window
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Facilities>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I switch to new window
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I switch back to old window
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "<ReportCategory>" for "<User>-<Role>" user
    Then I click on "<ReportName>" report text for Overall Program Reports for "<User>-<Role>" user
    Then I verify "<ReportName>" on the reports main page for "<User>-<Role>" user
    #When I click on field-panel-icon button for "<User>-<Role>" user
    #When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    #And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    #And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    #And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "<FirstName> <LastName>" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "<LearningPathway>" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on Gainsharing Physician Survey tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Gainsharing Physician Survey homepage
    And I redirect to Remedy connect page
    And I click on User Admin tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to User Admin homepage
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
    And I verify "Support" in dropdown on profile icon for "<User>-<Role>" user
    And I verify "Reset Password" in dropdown on profile icon for "<Role>" user
    And I verify "Log Out" in dropdown on profile icon for "<Role>" user
    And I click on "Support" in dropdown on profile icon for "<User>-<Role>" user
    And I verify page header "Login" for "Support" on Remedy Connect for "<User>-<Role>" user
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "We have sent you an e-mail with a link to reset your password."
    And I click Okay button for reset password popup
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Description                            | User                            | FirstName                                 | LastName                                 | Email             | Phone | NPI | Role                      | EnableApplications | Applications               | ApplicationsNotVisible                          | Health System | Programs    | RemoveLocations                                                             | AddLocations                                                                     | Locations                                                                                                        | Roletext | ReportCategory | ReportName                   | BPID | Facilities                                                                         | HealthSystemValidation | ProgramsValidation     | LocationsValidation                                                                                                                            | LearningPathway                                                                                                                                           |
      | Multiple locations to single locations | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail |       |     | Transitional Case Manager | Episodes, Episodes | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician connect | Covenant      | BPCI-Model3 | 3056-i42--Palo Alto Sub, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown |                                                                                  | 3056-i45--Highland Health                                                                                        | ROLE_TCS | Patient ID     | Episode DRG Issues [Model 3] |      | Highland Health                                                                    | Covenant               | Covenant--BPCI Model 3 | Covenant--3056-i45--Highland Health                                                                                                            | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2 |
      | Single locations to multi locations    | Partner Technical Administrator | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |       |     | Manager                   | Episodes, Episodes | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician connect | Covenant      | BPCI-Model3 |                                                                             | 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center | 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-808--Arbor Nursing Center | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center | Covenant               | Covenant--BPCI Model 3 | Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-808--Arbor Nursing Center | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University          |
      | Edit to All Locations                  | Partner Technical Administrator | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |       |     | Manager                   | Episodes, Episodes | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician connect | Covenant      | BPCI-Model3 |                                                                             | All Locations                                                                    |                                                                                                                  | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing And Rehabilitation Center, Carson Nursing And Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare And Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing And Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health And Rehabilitation Center, Clinton House Health And Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing And Rehabilitation Center, Pacific Coast Manor, Sunrise Skilled Nursing & Rehabilitation Cente, Pyramid Point Post-Acute Rehabilitation Center, Hilltop Skilled Nursing, Mccormick'S Creek,    | Covenant               | Covenant--BPCI Model 3 | Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-808--Arbor Nursing Center | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University          |

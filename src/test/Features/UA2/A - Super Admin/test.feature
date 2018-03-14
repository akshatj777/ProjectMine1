Feature: test

  
  Scenario Outline: Edit programs- <Description>
    Given I am on the login page
    When I enter email field test.automatemail+AXODhryS@gmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    #Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I deselect "<RemovePrograms>" programs
    Then I select "<AddPrograms>" programs for existing organisation
    Then I deselect "<RemoveLocations>" locations for PTA user
    Then I select "<AddLocations>" locations for PTA user
    Then I click on Submit button to check for error message
    And I verify that I am navigated to user page
    Then I verify health system "<HealthSystemValidation>"
    Then I verify programs "<ProgramsValidation>"
    Then I verify location "<LocationsValidation>"
    And I click on the top user account link
    Then I click on "Log Out" button


    Examples: 
      | Description                                        | User                            | Role    | Email             | Applications               | ApplicationsNotVisible                               | RemovePrograms | AddPrograms | RemoveLocations | AddLocations                                                  | Facilities                                  | LearningPathway                                                                                                                                  | FirstName | LastName                                 | Roletext | ReportCategory | ReportName                   | HealthSystemValidation | ProgramsValidation                                             | LocationsValidation                                                                                 |
      | Edit single to multiple program                    | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |                | BPCI-Model3 |                 | 3090-066--Herrin Hospital                                     | Herrin Hospital, Evanston Hospital          | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] | Sound Physicians       | Sound Physicians--BPCI Model 3, Sound Physicians--BPCI Model 2 | Sound Physicians--6005-059--Evanston Hospital, Sound Physicians--3090-066--Herrin Hospital          |
      | Edit multiple to single program                    | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI | BPCI-Model3    |             |                 |                                                               | Evanston Hospital                           | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues           | Sound Physicians       | Sound Physicians--BPCI Model 2                                 | Sound Physicians--6005-059--Evanston Hospital                                                       |
      | Remove existing Program and select another Program | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI | BPCI-Model2    | BPCI-Model3 |                 | 3090-066--Herrin Hospital, 3056-b75--Warren Memorial Hospital | Evanston Hospital, Warren Memorial Hospital | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] | Sound Physicians       | Sound Physicians--BPCI Model 3                                 | Sound Physicians--3090-066--Herrin Hospital, Sound Physicians--3056-b75--Warren Memorial Hospital |

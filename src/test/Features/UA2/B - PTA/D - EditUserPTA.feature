Feature: Edit user page for PTA

  Scenario Outline: Change General information, edit apps and remove existing org and add new org
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify the availability of fields "First Name"
    And I fill in First Name with "<FirstName>"
    Then I verify the availability of fields "Last Name"
    Then I fill in Last Name with <LastName>
    Then I verify the availability of fields "Email"
    And I should not be able to edit Email
    Then I verify the availability of fields "Phone"
    And I fill in Phone with <Phone>
    Then I verify the availability of fields "Role"
    Then I verify the availability of field NPI for "<Role>"
    Then I click on Next button
    Then I unselect "<RemoveApplications>" product
    Then I click on Next button
    Then I remove health system "<Remove HealthSystem>"
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
    Then I verify first name "<FirstName>"
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify disabled "<RemoveApplications>"
    Then I verify enabled "<Applications>"
    Then I verify health system "<Health System>"
    Then I verify programs "<ProgramsValidation>"
    Then I verify location "<LocationsValidation>"
    And I click on the top user account link
    Then I click on "Log Out" button
    Given I am on the login page
    Then I click on "Log Out" button again
    And I should see Log in widget

    Examples: 
      | User                            | FirstName       | LastName       | Email             | Phone        | NPI | Role       | RemoveApplications | Applications                         | ApplicationsNotVisible                     | Remove HealthSystem | Health System | Programs    | Locations                                                               | LearningPathwaySearchParameter | Roletext       | ReportCategory | ReportName                   | BPID | Facilities                                          | ProgramsValidation       | LocationsValidation                                                                             | LearningPathway            |
      | Partner Technical Administrator | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Physicians | Reports            | Episodes, Physician Connect, Lessons | Reports, Episodes 2.0, Administration, TCI | Covenant            | TeamHealth    | BPCI-Model3 | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center | Care Coordination External     | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues [Model 3] |      | The Medical Center At Franklin, Rhea Medical Center | TeamHealth--BPCI Model 3 | TeamHealth--3056-q91--The Medical Center At Franklin, TeamHealth--3056-q91--Rhea Medical Center | Care Coordination External |

  Scenario Outline: Add Heath System-2
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
    Then I select "Permissions" tab
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
    Then I verify health system "<Health System>"
    Then I verify programs "<ProgramsValidation>"
    Then I verify location "<LocationsValidation>"
    And I click on the top user account link
    Then I click on "Log Out" button
    Given I am on the login page
    Then I click on "Log Out" button again
    And I should see Log in widget

    Examples: 
      | User                            | FirstName                            | LastName | Email             | Phone        | NPI | Role         | Applications               | ApplicationsNotVisible                               | HasHealthSystem2 | Health System2                     | Programs2   | Locations2                                                    | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName         | BPID | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | ProgramsValidation                                                       | LocationsValidation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | LearningPathway            |
      | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastName | test.automatemail | 996-385-2451 |     | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | Yes              | United Health Services of New York | BPCI-Model2 | 6005-197--United Health Services, 6005-200--Cape Cod Hospital | Care Coordination External     | ROLE_TCS | Patient ID     | Episode DRG Issues |      | United Health Services, Cape Cod Hospital, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center | United Health Services of New York--BPCI Model 2, Covenant--BPCI Model 3 | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--6005-200--Cape Cod Hospital, Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center | Care Coordination External |

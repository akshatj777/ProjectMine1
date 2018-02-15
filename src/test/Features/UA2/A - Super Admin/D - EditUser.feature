Feature: Edit user page for SA

  Scenario Outline: <Description>
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    Then I click on delete icon in mail
    Then I signout from mail account
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    And I enter Phone field with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Programs2>" programs
    Then I select "<Locations2>" locations
    Then I click Add Organization button for "<HasHealthSystem3>" flag
    And I search for health system with <Health System3>
    And I select a <Health System3>
    Then I select "<Programs3>" programs
    Then I select "<Locations3>" locations
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Given I am on the login page
    Then I click on "Log Out" button again
    Given I am on mail login page
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    And I wait for 3000 milli seconds
    Then I verify Account Verification in Inbox in my account
    Then I click on Account Verification mail in Inbox
    Then I verify "Confirm my account!" link in mail content
    Then I click on "Confirm my account!" link in mail content
    And I switch to new window
    Then I enter email to generate password link
    And I click on send mail button
    Then I switch back to old window
    Then I click on Inbox in mail
    Then I verify the unread mail in inbox in my account
    Then I verify Change Password mail in Inbox in my account
    Then I click on Change Password mail in Inbox
    Then I verify "Change my password" link in mail content
    Then I click on "Change my password" link in mail content
    And I switch to new window
    And I enter new password "Testing1" to set new password
    And I enter confirm new password "Testing1" to set new password
    And I click on submit button to set new password

    Examples: 
      | Description                                                                           | User        | UserName                               | Password | FirstName                                 | LastName                                 | Email             | Phone      | Role                            | Applications                                                                     | ApplicationsNotVisible                                                  | NPI | LearningPathwaySearchParameter                                                                                                                                                                      | Health System1                                                         | Programs1                | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | HasHealthSystem2 | Health System2                                       | Programs2                | Locations2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | HasHealthSystem3 | Health System3                                       | Programs3                | Locations3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
      | Login with Super Admin User and create user with Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Executive                       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect, TCI                    |     | i am learning path, Learning Pathway 2, Remedy University                                                                                                                                           | Stamford Hospital                                                      | BPCI-Model2              | 2070-015--Stamford Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Manager role                         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail |            | Manager                         | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect, TCI                    |     | i am learning path, Learning Pathway 2, max-test-052417, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2                                                               | Apple Rehab                                                            | BPCI-Model3              | 3056-i11--Apple - Watertown                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Case Manager role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail | 9988776655 | Case Manager                    | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect, TCI                    |     | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, 5HDc3E6aK_E1                                                                                                            | St. Lukes Health Network, Inc. DBA St. Lukes University Health Network | BPCI-Model2              | 2070-023--Allentown, 2070-023--Bethlehem, 2070-025--Anderson                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Physicians role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Physicians                      | Episodes, Reports, Physician Connect, Lessons                                    | Episodes 2.0, Administration, TCI                                       | NPI | i am learning path, 18h7phZr1h81, n9yn5n0Qa581                                                                                                                                                      | TeamHealth                                                             | BPCI-Model2, BPCI-Model3 | 2070-g14--North Shore Med Center, 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy TCS role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail |            | Remedy TCS                      | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     | Learning Pathway 2, jusUV22erpk1, Clinical Operations Acute Care Hospital Model 2, n9yn5n0Qa581, 18h7phZr1h81                                                                                       | Stamford Hospital                                                      | BPCI-Model2              | 2070-015--Stamford Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Yes              | Altercare                                            | BPCI-Model3              | 3056-m03--Altercare - Alliance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy LPN role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Remedy LPN                      | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     |                                                                                                                                                                                                     | Penn                                                                   | BPCI-Model2              | 2070-020--Upenn - Hospital Of The Univ. Of Pennsylvania, 2070-021--Upenn - Penn Presbyterian Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Yes              | Apple Rehab                                          | BPCI-Model3              | 3056-i11--Apple - Watertown, 3056-i12--Apple - Rocky Hill                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy RN role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail | 9988776655 | Remedy RN                       | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     | New learning Path, Learning Pathway 2, 3hSOHNAnvjc1, max-test-052417, 5HDc3E6aK_E1, p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581                                                          | TeamHealth                                                             | BPCI-Model2, BPCI-Model3 | 2070-g14--North Shore Med Center, 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Yes              | Sound Physicians                                     | BPCI-Model2, BPCI-Model3 | 6005-059--Evanston Hospital, 6005-072--Jackson North Med Center, 3056-b75--Warren Memorial Hospital, 3090-066--Herrin Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Field RN role                 | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail |            | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, jusUV22erpk1, 5HDc3E6aK_E1, p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81                                                                                      | Cardiovascular Associates of The Delaware Valley,p A                   | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 2070-060--East Orange General Hospital, 2070-060--St Lukes Hospital, 2070-060--Community Medical Center - Tom's River, 2070-060--Kennedy Univ Hospital - Stratford And Cherry Hills, 2070-060--Capital Health Medical Center - Hopewell, 2070-060--Bayshore Community Hospital, 2070-060--Rwj University Hospital At New Brunswick, 2070-060--Kennedy Memorial Washington Township, 2070-060--Raritan Bay Medical Center, 2070-060--Holmes Regional Medical Center, 2070-060--Sebastian River Medical Center, 2070-060--Lenox Hill Hospital, 2070-060--Lewistown Hospital, 2070-060--St. Michael's Medical Center, 2070-060--Jackson-madison County General Hospital, 2070-060--Newark Beth Israel Medical Center, 2070-060--Inova Fairfax Hospital, 2070-060--Lourdes Rehab At Camden, 2070-060--Mercy Hospital, 2070-060--Hackensack University Medical Center, 2070-060--Tuomey Healthcare System, 2070-060--223321233, 2070-060--Martin Memorial South, 2070-060--Lourdes Medical Center Of Burlington County, 2070-060--North Shore University Hospital, 2070-060--Virtua Marlton, 2070-060--Cooper University Hospital, 2070-060--Virtua Voorhees, 2070-060--Virtua West Jersey Hospitals Berlin, 2070-060--Howard County General Hospital, 2070-060--Meritus Medical Center, 2070-060--Wuesthoff Medical Center  Rockledge, 2070-060--Wuesthoff Medical Center - Melbourne, 2070-060--Saint Peter's University Hospital - New Brunswick, 2070-060--Martin Memorial North, 2070-060--Jersey Shore University Medical Center, 2070-060--Mount Nittany Medical Center, 2070-060--Deborah Heart And Lung Center, 2070-060--Inspira Medical Center Vineland, 2070-060--Regional Hospital Of Jackson, 2070-060--Saint Barnabas Medical Center, 2070-060--Martin Memorial West, 2070-060--Riverview Medical Center, 2070-060--Riverview Medical Center-rehab, 2070-060--Inspira Medical Center Elmer, 2070-060--Novant Health Prince William Medical Center, 2070-060--Our Lady Of Lourdes Medical Center - Camden, 2070-060--Jfk Medical Ctr - Anthony M. Yelencsics Community, 3056-a08--Howard County General Hospital, 3056-a08--East Orange General Hospital                                                                                                                                                               | Yes              | United Health Services of New York                   | BPCI-Model2, BPCI-Model3 | 6005-197--United Health Services, 6005-197--Binghamton General-sandiford Rehabilitation Center, 6005-198--Chenango Memorial Hospital, 3090-209--Uhs Twin Tier Home Health Inc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy PM role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail |            | Remedy PM                       | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     | HZhmTBQzHtU1, NFdw0Kts2C01, p11D0Vl2FSg1, qfy2xp8zSFc1                                                                                                                                              | Cardiovascular Associates of The Delaware Valley,p A                   | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 3056-a08--Howard County General Hospital, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Yes              | United Health Services of New York                   | BPCI-Model2, BPCI-Model3 | 6005-197--United Health Services, 6005-197--Binghamton General-sandiford Rehabilitation Center, 6005-198--Chenango Memorial Hospital, 6005-200--Avera Mckennan Hospital & University Health Center, 6005-200--Westchester General Hospital , 6005-200--Cayuga Medical Center At Ithaca, 6005-200--Cape Cod Hospital, 6005-200--St  Vincent's Medical Center - Bridgeport, 6005-200--White Plains Hospital Center, 6005-200--North Central Bronx Hospital, 6005-200--Saratoga Hospital, 6005-200--Moses Taylor Hospital, 6005-200--Banner Del E Webb Medical Center, 6005-200--161395906, 6005-200--St. James Mercy Hospital, 6005-200--University Hospital, 6005-200--Cortland Regional Medical Center, 6005-200--Hackettstown Regional Medical Center, 6005-200--St Johns Regional Medical Center, 6005-200--Bayhealth - Kent General Hospital, 6005-200--Howard County General Hospital, 6005-200--Porter Regional Hospital, 6005-200--Arnot Ogden Medical Center, 6005-200--St. Peter's Hospital, 6005-200--Chenango Memorial Hospital, 6005-200--United Health Services, 6005-200--Washington Hospital, 6005-200--Geisinger - Community Medical Center, 6005-200--Scripps Memorial Hospital - Encinitas, 6005-200--Mary Imogene Bassett Hospital, 6005-200--Our Lady Of Lourdes Memorial Hospital, 6005-200--Queens Hospital Center, 6005-200--Tlc Health Network, 6005-200--Menifee Valley Medical Center, 6005-200--Sisters Of Charity Hospital, 6005-200--Albany Medical Center Hospital, 6005-200--Aurelia Osborn Fox Memorial Hospital, 6005-200--Lane Regional Medical Center, 6005-200--Brookhaven Memorial Hospital Medical Center, 6005-200--Banner Boswell Medical Center, 6005-200--Hemet Valley Medical Center, 6005-200--Binghamton General-sandiford Rehabilitation Center, 6005-200--Albany Memorial Hospital, 6005-200--East Jefferson General Hospital, 3090-209--Uhs Twin Tier Home Health Inc.                  | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Sales Team role               | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail |            | Remedy Sales Team               | Reports, TCI, Lessons                                                            | Episodes, Episodes 2.0, Administration, Physician Connect               |     | NFdw0Kts2C01, 3hSOHNAnvjc1, jusUV22erpk1, Clinical Operations Acute Care Hospital Model 2                                                                                                           | Cardiovascular Associates of The Delaware Valley,p A                   | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 2070-060--East Orange General Hospital, 2070-060--St Lukes Hospital, 2070-060--Community Medical Center - Tom's River, 2070-060--Kennedy Univ Hospital - Stratford And Cherry Hills, 2070-060--Capital Health Medical Center - Hopewell, 2070-060--Bayshore Community Hospital, 2070-060--Rwj University Hospital At New Brunswick, 2070-060--Kennedy Memorial Washington Township, 2070-060--Raritan Bay Medical Center, 2070-060--Holmes Regional Medical Center, 2070-060--Sebastian River Medical Center, 2070-060--Lenox Hill Hospital, 2070-060--Lewistown Hospital, 2070-060--St. Michael's Medical Center, 2070-060--Jackson-madison County General Hospital, 2070-060--Newark Beth Israel Medical Center, 2070-060--Inova Fairfax Hospital, 2070-060--Lourdes Rehab At Camden, 2070-060--Mercy Hospital, 2070-060--Hackensack University Medical Center, 2070-060--Tuomey Healthcare System, 2070-060--223321233, 2070-060--Martin Memorial South, 2070-060--Lourdes Medical Center Of Burlington County, 2070-060--North Shore University Hospital, 2070-060--Virtua Marlton, 2070-060--Cooper University Hospital, 2070-060--Virtua Voorhees, 2070-060--Virtua West Jersey Hospitals Berlin, 2070-060--Howard County General Hospital, 2070-060--Meritus Medical Center, 2070-060--Wuesthoff Medical Center  Rockledge, 2070-060--Wuesthoff Medical Center - Melbourne, 2070-060--Saint Peter's University Hospital - New Brunswick, 2070-060--Martin Memorial North, 2070-060--Jersey Shore University Medical Center, 2070-060--Mount Nittany Medical Center, 2070-060--Deborah Heart And Lung Center, 2070-060--Inspira Medical Center Vineland, 2070-060--Regional Hospital Of Jackson, 2070-060--Saint Barnabas Medical Center, 2070-060--Martin Memorial West, 2070-060--Riverview Medical Center, 2070-060--Riverview Medical Center-rehab, 2070-060--Inspira Medical Center Elmer, 2070-060--Novant Health Prince William Medical Center, 2070-060--Our Lady Of Lourdes Medical Center - Camden, 2070-060--Jfk Medical Ctr - Anthony M. Yelencsics Community, 3056-a08--Howard County General Hospital, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center | Yes              | United Health Services of New York                   | BPCI-Model2, BPCI-Model3 | 6005-197--United Health Services, 6005-197--Binghamton General-sandiford Rehabilitation Center, 6005-198--Chenango Memorial Hospital, 6005-200--Avera Mckennan Hospital & University Health Center, 6005-200--Westchester General Hospital , 6005-200--Cayuga Medical Center At Ithaca, 6005-200--Cape Cod Hospital, 6005-200--St  Vincent's Medical Center - Bridgeport, 6005-200--White Plains Hospital Center, 6005-200--North Central Bronx Hospital, 6005-200--Saratoga Hospital, 6005-200--Moses Taylor Hospital, 6005-200--Banner Del E Webb Medical Center, 6005-200--161395906, 6005-200--St. James Mercy Hospital, 6005-200--University Hospital ( Stony Brook ), 6005-200--Cortland Regional Medical Center, 6005-200--Hackettstown Regional Medical Center, 6005-200--St Johns Regional Medical Center, 6005-200--Bayhealth - Kent General Hospital, 6005-200--Howard County General Hospital, 6005-200--Porter Regional Hospital, 6005-200--Arnot Ogden Medical Center, 6005-200--St. Peter's Hospital, 6005-200--Chenango Memorial Hospital, 6005-200--United Health Services, 6005-200--Washington Hospital, 6005-200--Geisinger - Community Medical Center, 6005-200--Scripps Memorial Hospital - Encinitas, 6005-200--Mary Imogene Bassett Hospital, 6005-200--Our Lady Of Lourdes Memorial Hospital, 6005-200--Queens Hospital Center, 6005-200--Tlc Health Network, 6005-200--Menifee Valley Medical Center, 6005-200--Sisters Of Charity Hospital, 6005-200--Albany Medical Center Hospital, 6005-200--Aurelia Osborn Fox Memorial Hospital, 6005-200--Lane Regional Medical Center, 6005-200--Brookhaven Memorial Hospital Medical Center, 6005-200--Banner Boswell Medical Center, 6005-200--Hemet Valley Medical Center, 6005-200--Binghamton General-sandiford Rehabilitation Center, 6005-200--Albany Memorial Hospital,  6005-200--East Jefferson General Hospital, 3090-209--Uhs Twin Tier Home Health Inc. | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Executive role                | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail | 9988776655 | Remedy Executive                | Episodes, Episodes 2.0, Reports, TCI, Lessons                                    | Administration, Physician Connect                                       |     | jusUV22erpk1, New learning Path, n9yn5n0Qa581                                                                                                                                                       | Butler Memorial Hospital                                               | BPCI-Model2, BPCI-CJR    | CJR-1--Butler Memorial Hospital, 2070-a55--Butler Memorial Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Yes              | Cardiovascular Associates of The Delaware Valley,p A | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 3056-a08--Howard County General Hospital, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Prospective Partner Executive role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Prospective Partner Executive   | Lessons                                                                          | Administration, Physician Connect, Episodes, Episodes 2.0, Reports, TCI |     |                                                                                                                                                                                                     | Stamford Hospital                                                      | BPCI-Model2              | 2070-015--Stamford Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail |            | Remedy Other                    | Episodes, Episodes 2.0, TCI, Lessons                                             | Administration, Physician Connect, Reports                              |     | HZhmTBQzHtU1, 18h7phZr1h81                                                                                                                                                                          | Butler Memorial Hospital                                               | BPCI-Model2, BPCI-CJR    | 2070-a55--Butler Memorial Hospital, CJR-1--Butler Memorial Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Yes              | RWJ Barnabas Health, INC                             | BPCI-CJR                 | CJR-10-6--Monmouth Medical Center - Southern Campus                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail |            | Partner Program Administrator   | Episodes, Reports, Physician Connect, Lessons                                    | Administration, TCI                                                     |     | NFdw0Kts2C01, 3hSOHNAnvjc1, jusUV22erpk1, Physician Acute Care Hospital Model 2, Remedy University                                                                                                  | Brookdale                                                              | BPCI-Model3              | 3056-m55--Santa Rosa, 3056-m61--Carlsbad, 3056-m63--Carmel Valley, 3056-m69--Yorba Linda, 3056-m74--Palmer Ranch                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastName                                 | test.automatemail | 9988776655 | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Physician Connect, TCI, Lessons                 | Administration                                                          |     | Learning Pathway 2 , 3hSOHNAnvjc1, max-test-052417, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581                                                                                                        | TeamHealth                                                             | BPCI-Model2, BPCI-Model3 | 2070-g14--North Shore Med Center, 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Yes              | Sound Physicians                                     | BPCI-Model2, BPCI-Model3 | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital, 3056-b75--Warren Memorial Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | Yes              | Cardiovascular Associates of The Delaware Valley,p A | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 2070-060--East Orange General Hospital, 2070-060--St Lukes Hospital, 2070-060--Community Medical Center - Tom's River, 2070-060--Kennedy Univ Hospital - Stratford And Cherry Hills, 2070-060--Capital Health Medical Center - Hopewell, 2070-060--Bayshore Community Hospital, 2070-060--Rwj University Hospital At New Brunswick, 2070-060--Kennedy Memorial Washington Township, 2070-060--Raritan Bay Medical Center, 2070-060--Holmes Regional Medical Center, 2070-060--Sebastian River Medical Center, 2070-060--Lenox Hill Hospital, 2070-060--Lewistown Hospital, 2070-060--St. Michael's Medical Center, 2070-060--Jackson-madison County General Hospital, 2070-060--Newark Beth Israel Medical Center, 2070-060--Inova Fairfax Hospital, 2070-060--Lourdes Rehab At Camden, 2070-060--Mercy Hospital, 2070-060--Hackensack University Medical Center, 2070-060--Tuomey Healthcare System, 2070-060--223321233, 2070-060--Martin Memorial South, 2070-060--Lourdes Medical Center Of Burlington County, 2070-060--North Shore University Hospital, 2070-060--Virtua Marlton, 2070-060--Cooper University Hospital, 2070-060--Virtua Voorhees, 2070-060--Virtua West Jersey Hospitals Berlin, 2070-060--Howard County General Hospital, 2070-060--Meritus Medical Center, 2070-060--Wuesthoff Medical Center  Rockledge, 2070-060--Wuesthoff Medical Center - Melbourne, 2070-060--Saint Peter's University Hospital - New Brunswick, 2070-060--Martin Memorial North, 2070-060--Jersey Shore University Medical Center, 2070-060--Mount Nittany Medical Center, 2070-060--Deborah Heart And Lung Center, 2070-060--Inspira Medical Center Vineland, 2070-060--Regional Hospital Of Jackson, 2070-060--Saint Barnabas Medical Center, 2070-060--Martin Memorial West, 2070-060--Riverview Medical Center, 2070-060--Riverview Medical Center-rehab, 2070-060--Inspira Medical Center Elmer, 2070-060--Novant Health Prince William Medical Center, 2070-060--Our Lady Of Lourdes Medical Center - Camden, 2070-060--Jfk Medical Ctr - Anthony M. Yelencsics Community, 3056-a08--Howard County General Hospital, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Partner Technical Administrator | Episodes, Reports, Physician Connect, Administration, Lessons                    | Episodes 2.0, TCI                                                       |     | HZhmTBQzHtU1, Learning Pathway 2, n9yn5n0Qa581                                                                                                                                                      | Covenant                                                               | BPCI-Model3              | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center,  3056-807--Carson Nursing And Rehabilitation Center,  3056-808--Arbor Nursing Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
      | Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail | 9988776655 | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI, Lessons |                                                                         |     | New learning Path , Learning Pathway 2, i am learning path , max-test-052417, Care Coordination External, Clinical Operations Acute Care Hospital Model 2, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581 | Cardiovascular Associates of The Delaware Valley,p A                   | BPCI-Model2, BPCI-Model3 | 2070-060--All 2070-060, 3056-a08--All 3056-a08                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Yes              | United Health Services of New York                   | BPCI-Model2, BPCI-Model3 | 6005-200--All 6005-200, 6005-197--All 6005-197, 3090-209--Uhs Twin Tier Home Health Inc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Yes              | Butler Memorial Hospital                             | BPCI-Model2, BPCI-CJR    | CJR-1--Butler Memorial Hospital, 2070-a55--Butler Memorial Hospital                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
      | Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Transitional Case Manager       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect, TCI                    |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, 5HDc3E6aK_E1, p11D0Vl2FSg1, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University              | United Health Services of New York                                     | BPCI-Model2, BPCI-Model3 | 6005-197--United Health Services, 6005-200--Cape Cod Hospital, 3090-209--Uhs Twin Tier Home Health Inc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | No               |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |                  |                                                      |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

  Scenario Outline: Verifying editable/non-editable fields of general information tab and editing them
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
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
    Then I verify the availability of fields "NPI"
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify first name "<FirstName>"
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify NPI "<NPI>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | Role       | FirstName       | LastName       | Email             | Phone        | NPI |
      | Super Admin | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI |

  Scenario Outline: Editing user role from <PreviousRole> to <Role>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<PreviousRole>"
    Then I select user with role "<User>-<PreviousRole>"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    And I wait for 3000 milli seconds
    Then I click on Submit button while edit for "<User>-<Role>--<PreviousRole>"
    And I wait for 3000 milli seconds
    Then I verify role "<Role>"
    Then I verify enabled "<Applications>"
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
      | User        | UserName                               | Password | Email             | NPI | PreviousRole | Role                          | EnableApplications | Applications                                                     | ApplicationsNotVisible       | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                                                                       | FirstName | LastName | Facilities        |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | test.automatemail |     | Manager      | Partner Program Administrator | Physician Connect  | Episodes, Reports, Physician Connect, Lessons, Physician Connect | Administration, Episodes 2.0 |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2 | FirstName | LastName | Apple - Watertown |

  Scenario Outline: Changing the products and general details for <Role> and verifying product tile
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    And I wait for 3000 milli seconds
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
    Then I verify role "<Role>"
    Then I verify enabled "<EnableApplications>"
    #Then I verify disabled "<DisableApplications>"
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
      | User        | Role         | Email             | DisableApplications | Applications               | ApplicationsNotVisible                                   | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                                                                                                                                                                                          | Facilities                                                                                                                                                          | FirstName | LastName |
      | Super Admin | Case Manager | test.automatemail | Reports             | Episodes, TCI, Lessons     | Episodes 2.0, Administration, Physician Connect, Reports | ROLE_TCS | Patient ID     | Episode DRG Issues           |      | i am learning path, Learning Pathway 2, max-test-052417, Care Coordination External                                                                                                                                                                      | Allentown, Bethlehem, Anderson                                                                                                                                      | FirstName | LastName |
      | Super Admin | Remedy RN    | test.automatemail | Reports, Episodes   | Episodes 2.0, TCI, Lessons | Reports, Episodes, Administration, Physician Connect     | ROLE_RN  | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | North Shore Med Center, Rhea Medical Center, The Medical Center At Franklin, Evanston Hospital, Jackson North Med Center, Warren Memorial Hospital, Herrin Hospital | FirstName | LastName |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
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
      | Description                          | User        | Role      | Email             | DisableApplications | Applications           | ApplicationsNotVisible                                   | Health System    | Programs    | Locations                                        | Facilities                             | ProgramsValidation            | LocationsValidation                                                | LearningPathway                                           | FirstName                                 | LastName                                 | Roletext | ReportCategory | ReportName         |
      | Remove Existing org and add new org1 | Super Admin | Executive | test.automatemail | Reports             | Episodes, TCI, Lessons | Reports, Episodes 2.0, Administration, Physician Connect | Sound Physicians | BPCI-Model2 | 6005-080--Winchester Medical Center - Rehab Unit | Winchester Medical Center - Rehab Unit | Sound Physicians--BPCI-Model2 | Sound Physicians--6005-080--Winchester Medical Center - Rehab Unit | i am learning path, Learning Pathway 2, Remedy University | FirstNameFirstNameFirstNameFirstNameFirst | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
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
      | Description  | User        | Role                            | Email             | Applications                                    | AppliationNotVisible            | DisableApplications | Locations                        | Programs    | HasHealthSystem2 | Health System | Facilities                                                                                                                                                                              | HealthSystemValidation | ProgramsValidation                              | LocationsValidation                                                                                                                                                                                                                                                                                               | LearningPathway                                          | FirstName | LastName                                 | Roletext | ReportName                   | ReportCategory |
      | Add new org2 | Super Admin | Partner Technical Administrator | test.automatemail | Episodes, Reports, Administration, TCI, Lessons | Physician Connect, Episodes 2.0 | Physician Connect   | 2070-g14--North Shore Med Center | BPCI-Model2 | Yes              | TeamHealth    | North Shore Med Center, Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center,  Carson Nursing and Rehabilitation Center,  Arbor Nursing Center | Covenant, TeamHealth   | TeamHealth--BPCI-Model2, Covenant--BPCI Model 3 | TeamHealth--2070-g14--North Shore Med Center, Covenant--3056-804--Catered Manor Nursing Center, Covenant--3056-805--Downey Care Center, Covenant--3056-806--Encinitas Nursing And Rehabilitation Center,  Covenant--3056-807--Carson Nursing And Rehabilitation Center,  Covenant--3056-808--Arbor Nursing Center | Learning Pathway 2, New learning Path, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Episode DRG Issues [Model 3] | Patient ID     |

  Scenario Outline: Editing locations -<Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click on existing organisation "<Health System>"
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
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
      | Description                                              | User        | Role       | Email             | Applications                                  | ApplicationsNotVisible                          | DisableApplications | Locations                                                                     | Programs    | Health System | Facilities                                                                                                       | ProgramsValidation                                       | LocationsValidation                                                                                                                                                                            | LearningPathway                                                                                                                                | FirstName | LastName                                 | Roletext | ReportCategory | ReportName         |
      | External User-Edit single location to multiple locations | Super Admin | Remedy TCS | test.automatemail | Episodes, Reports, TCI, Lessons               | Episodes 2.0, Administration, Physician Connect | Episodes 2.0        | 3056-m04--Altercare Post-acute Rehab Center, 3056-m05--Altercare - Big Rapids | BPCI-Model3 | Altercare     | Altercare Post-acute Rehab Center, Altercare - Big Rapids, Stamford Hospital, Altercare - Alliance               | Stamford Hospital--BPCI Model 2, Altercare--BPCI Model 3 | Altercare--3056-m04--Altercare Post-acute Rehab Center, Altercare--3056-m05--Altercare - Big Rapids, Stamford Hospital--2070-015--Stamford Hospital, Altercare--3056-m03--Altercare - Alliance | Learning Pathway 2, max-test-052417, Clinical Operations Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastName                                 | ROLE_TCS | Patient ID     | Episode DRG Issues |
      | External User-Edit to All Locations                      | Super Admin | Remedy LPN | test.automatemail | Episodes 2.0, Reports, TCI, Lessons           | Episodes, Administration, Physician Connect     | Episodes            | all locations                                                                 | BPCI-Model2 | Penn          | Upenn - Hospital Of The Univ. Of Pennsylvania, Upenn - Penn Presbyterian Hospital, Upenn - Pennsylvania Hospital | Penn--BPCI-Model2                                        | Penn--2070-020--Upenn - Hospital Of The Univ. Of Pennsylvania, Penn--2070-021--Upenn - Penn Presbyterian Hospital, Penn--2070-022--Upenn - Pennsylvania Hospital                               |                                                                                                                                                | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_LPN | Patient ID     | Episode DRG Issues |
      | External User-Edit All locations to single location      | Super Admin | Remedy LPN | test.automatemail | Episodes, Episodes 2.0, Reports, TCI, Lessons | Administration, Physician Connect               | Episodes            | 2070-020--Upenn - Hospital Of The Univ. Of Pennsylvania                       | BPCI-Model2 | Penn          | Upenn - Hospital Of The Univ. Of Pennsylvania                                                                    | Penn--BPCI-Model2                                        | Penn--2070-020--Upenn - Hospital Of The Univ. Of Pennsylvania                                                                                                                                  |                                                                                                                                                | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_LPN | Patient ID     | Episode DRG Issues |

  Scenario Outline: Edit programs- <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click on existing organisation "<Health System>"
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
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
      | Description                                                    | User        | Role                           | Email             | Applications                                                       | ApplicationsNotVisible            | DisableApplications | Locations                                      | RemovePrograms           | Programs    | Health System                                        | Facilities                                                                                                                                                                             | LearningPathway                                                                                                                                                                                                                                          | FirstName                                 | LastName | Roletext   | ReportCategory | ReportName         |
      | External user-Edit user to Model-2 and select single location  | Super Admin | Remedy Field RN                | test.automatemail | Episodes, Episodes 2.0, Reports, TCI, Lessons                      | Administration, Physician Connect | Episodes, Episodes  | 2070-060--Carolinas Hospital System - Florence | BPCI-Model2, BPCI-Model3 | BPCI-Model2 | Cardiovascular Associates of The Delaware Valley,p A | Carolinas Hospital System - Florence, 6005-197--United Health Services, Binghamton General-sandiford Rehabilitation Center, Chenango Memorial Hospital, Uhs Twin Tier Home Health Inc. | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2                    | FirstNameFirstNameFirstNameFirstNameFirst | LastName | ROLE_FRN   | Patient ID     | Episode DRG Issues |
      | External user-Edit user to Model-3 and select single location  | Super Admin | Remedy Technical Administrator | test.automatemail | Episodes, Reports, Physician Connect, Administration, TCI, Lessons | Episodes 2.0                      | Episodes, Episodes  | 3056-a08--Meritus Medical Center               | BPCI-Model3, BPCI-Model2 | BPCI-Model3 | Cardiovascular Associates of The Delaware Valley,p A | Meritus Medical Center                                                                                                                                                                 | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstNameFirstNameFirstNameFirstNameFirst | LastName | ROLE_ADMIN | Patient ID     | Episode DRG Issues |
      | External user-Edit user to BPCI-CJR and select single location | Super Admin | Remedy Executive               | test.automatemail | Episodes, Episodes 2.0, Reports, TCI, Lessons                      | Administration, Physician Connect | Episodes, Episodes  | CJR-1--Butler Memorial Hospital                | BPCI-Model2, BPCI-CJR    | BPCI-CJR    | Butler Memorial Hospital                             | Butler Memorial Hospital                                                                                                                                                               | max-test-052417, New learning Path, Remedy University                                                                                                                                                                                                    | FirstNameFirstNameFirstNameFirstNameFirst | LastName | ROLE_PRM   | Patient ID     | Episode DRG Issues |

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and Remove existing org and add new org
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify enabled "<EnableApplications>"
    Then I verify health system "<Health System>"
    Then I verify programs "<Health System>--<Programs>"
    Then I verify location "<Health System>--<Locations>"
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
      | User        | UserName                               | Password | FirstName | LastName       | Email             | Phone        | NPI | PreviousRole | Role    | EnableApplications | Applications               | ApplicationsNotVisible                          | Health System    | Programs    | Locations                          | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities               | LearningPathway |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |           | LastNameEdited | test.automatemail | 996-385-2451 |     | Case Manager | Manager | Reports            | Episodes, Reports, Lessons | Administration, Physician Connect, Episodes 2.0 | Sound Physicians | BPCI-Model3 | 3056-b75--Warren Memorial Hospital |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Warren Memorial Hospital |                 |

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and edit Data permissions
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I unselect "<RemoveApplications>" product
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on existing organisation "<Health System>"
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify enabled "<EnableApplications>"
    Then I verify disabled "<RemoveApplications>"
    Then I verify health system "<Health System>"
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
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole              | Role              | EnableApplications | RemoveApplications | Applications | ApplicationsNotVisible            | Health System                      | RemovePrograms           | Programs    | Locations                                                     | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName         | BPID | Facilities                                | ProgramsValidation                              | LocationsValidation                                                                                                                   | LearningPathway |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Transitional Case Manager | Remedy Sales Team | TCI                | Reports            | TCI, Lessons | Administration, Physician Connect | United Health Services of New York | BPCI-Model3, BPCI-Model2 | BPCI-Model2 | 6005-197--United Health Services, 6005-200--Cape Cod Hospital |                                |          | Patient ID     | Episode DRG Issues |      | United Health Services, Cape Cod Hospital | United Health Services of New York--BPCI-Model2 | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--6005-200--Cape Cod Hospital |                 |

  Scenario Outline: Remove phone, Role from <PreviousRole> to <Role> and add new org
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System2>
    And I wait for 3000 milli seconds
    And I select a <Health System2>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify phone "<Phone>"
    Then I verify enabled "<EnableApplications>"
    Then I verify health system "<Health System2>"
    Then I verify programs "<Health System2>--<Programs>"
    Then I verify location "<Health System2>--<Locations>"
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
      | User        | PreviousRole      | Role       | Phone      | NPI | EnableApplications          | Applications                                  | ApplicationsNotVisible       | Email             | HasHealthSystem2 | Health System2 | Programs    | Locations                        | Roletext       | ReportCategory | ReportName         | BPID | Facilities             | LearningPathway |
      | Super Admin | Remedy Sales Team | Physicians | 9999999999 | NPI | Physician Connect, Episodes | Episodes, Reports, Physician Connect, Lessons | Episodes 2.0, Administration | test.automatemail | Yes              | TeamHealth     | BPCI-Model2 | 2070-g14--North Shore Med Center | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues |      | North Shore Med Center |                 |

  Scenario Outline: Edit phone, Role from <PreviousRole> to <Role> and Remove Existing Location and Add new Location
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on existing organisation "<Health System>"
    Then I select "<DisableLocations>" locations
    Then I select "<EnableLocations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify phone "<Phone>"
    Then I verify enabled "<EnableApplications>"
    Then I verify health system "<Health System>"
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
      | User        | PreviousRole | Role                           | Phone      | NPI | EnableApplications                | Applications                                                                     | Email             | Health System                                        | Programs                 | DisableLocations                                                                         | EnableLocations                    | Locations                                                                                                                                                                                                                                | Roletext   | ReportCategory | ReportName         | BPID | Facilities                                                                                                                                                                   | ProgramsValidation                                                                                                           | LocationsValidation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | LearningPathway |
      | Super Admin | Remedy PM    | Remedy Technical Administrator | 1234567890 |     | Physician Connect, Administration | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI, Lessons | test.automatemail | Cardiovascular Associates of The Delaware Valley,p A | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 3056-a08--Howard County General Hospital | 2070-060--Florida Hospital Orlando | 2070-060--Florida Hospital Orlando, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center | ROLE_ADMIN | Patient ID     | Episode DRG Issues |      | Florida Hospital Orlando, East Orange General Hospital, Meritus Medical Center, North Shore University Hospital, St. Michael's Medical Center, Saint Barnabas Medical Center | Cardiovascular Associates of The Delaware Valley--BPCI-Model2, Cardiovascular Associates of The Delaware Valley--BPCI-Model3 | Cardiovascular Associates of The Delaware Valley--2070-060--Florida Hospital Orlando, Cardiovascular Associates of The Delaware Valley--3056-a08--East Orange General Hospital, Cardiovascular Associates of The Delaware Valley--3056-a08--Meritus Medical Center, Cardiovascular Associates of The Delaware Valley--3056-a08--North Shore University Hospital, Cardiovascular Associates of The Delaware Valley--3056-a08--St. Michael's Medical Center, Cardiovascular Associates of The Delaware Valley--3056-a08--Saint Barnabas Medical Center |                 |

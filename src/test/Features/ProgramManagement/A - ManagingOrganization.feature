Feature: Managing organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario: Verification Mandatory and Optional fields available on Create Managing Organization
  When I click on Organization link on Program Management page
  Then I verify "+" button under organization tab
  And I verify "Participant ID" header label under "Managing" organization in Managing Organization
  And I verify "Managing Organization Name" header label under "Managing" organization in Managing Organization
  And I verify "City" header label under "Managing" organization in Managing Organization
  And I verify "State" header label under "Managing" organization in Managing Organization
  And I verify "Postal Code" header label under "Managing" organization in Managing Organization
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  And I verify "*Managing Organization Name" field on create organization page
  And I verify "Contact Person" field on create organization page
  And I verify "Contact Email" field on create organization page
  And I verify "Contact Phone" field on create organization page
  And I verify "*Address 1" field on create organization page
  And I verify "Address 2" field on create organization page
  And I verify "*City" field on create organization page
  And I verify "*State" drop down field on create organization page
  And I verify "*Postal Code" field on create organization page
  Then I click on "Submit" button on create organization page
  And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
  And I verify "Please enter an Address" mandatory field validation message on create organization page
  And I verify "Please enter a City" mandatory field validation message on create organization page
  And I verify "Please select a State" mandatory field validation message on create organization page
  And I verify "Please enter a Zip Code" mandatory field validation message on create organization page
  
  Scenario Outline: Verification of Field validation
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  Then I enter <MO_Name> in "Managing Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <City> in "City" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  Then I click on "Submit" button on create organization page
  And I verify "<ValidationMsg>" mandatory field validation message on create organization page
  
  Examples:
  | MO_Name | Address1 | City | State      | Postal_Code | ValidationMsg                     |
  |         | Address1 | City | California |       10000 | Please enter an Organization Name |
  | MONAME  |          | City | California |       10000 | Please enter an Address           |
  | MONAME  | Address1 |      | California |       10000 | Please enter a City               |
  | MONAME  | Address1 | City |            |       10000 | Please select a State             |
  | MONAME  | Address1 | City | California |             | Please enter a Zip Code           |
  
  Scenario Outline: Verification of Field Charcter Limits and Format
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  Then I enter <MO_Name> in "Managing Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <Contact_Person> in "Contact Person" on create organization page
  And I enter <Address2> in "Address 2" on create organization page
  And I enter <Contact_Email> in "Contact Email" on create organization page
  And I enter <City> in "City" on create organization page
  And I enter <Contact_Phone> in "Contact Phone" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  And I switch the focus to "submit" button
  And I verify "<ValidationOrgName>" mandatory field validation message on create organization page
  And I verify "<ValidationAddress>" mandatory field validation message on create organization page
  And I verify "<ValidationContactPerson>" mandatory field validation message on create organization page
  And I verify "<ValidationAddress2>" mandatory field validation message on create organization page
  And I verify "<ValidationContactEmail>" mandatory field validation message on create organization page
  And I verify "<ValidationCity>" mandatory field validation message on create organization page
  And I verify "<ValidationContactPhone>" mandatory field validation message on create organization page
  And I verify "<ValidationZipCode>" mandatory field validation message on create organization page
  
  Examples:
  | MO_Name                                                                      | Address1                                       | Contact_Person                                 | Address2                                       | Contact_Email                                  | City                                           | Contact_Phone | State      | Postal_Code | ValidationOrgName                                            | ValidationAddress                                             | ValidationContactPerson                                   | ValidationAddress2                                             | ValidationContactEmail                                   | ValidationCity                                  | ValidationContactPhone               | ValidationZipCode             |
  | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |   98745612301 | California | 10000-00000 | The Organization Name may not be greater than 75 characters. | The first address line may not be greater than 45 characters. | The Contact Person may not be greater than 45 characters. | The second address line may not be greater than 45 characters. | The Contact Email may not be greater than 45 characters. | The City may not be greater than 45 characters. | The Contact Phone format is invalid. | Please enter a valid Zip Code |
  | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |                                                |               |            |             | The Organization Name may not be greater than 75 characters. |                                                               |                                                           |                                                                |                                                          |                                                 |                                      |                               |
  |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |                                                |               |            |             |                                                              | The first address line may not be greater than 45 characters. |                                                           |                                                                |                                                          |                                                 |                                      |                               |
  |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |               |            |             |                                                              |                                                               | The Contact Person may not be greater than 45 characters. |                                                                |                                                          |                                                 |                                      |                               |
  |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |               |            |             |                                                              |                                                               |                                                           | The second address line may not be greater than 45 characters. |                                                          |                                                 |                                      |                               |
  |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com |                                                |               |            |             |                                                              |                                                               |                                                           |                                                                | The Contact Email may not be greater than 45 characters  |                                                 |                                      |                               |
  |                                                                              |                                                |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |               |            |             |                                                              |                                                               |                                                           |                                                                |                                                          | The City may not be greater than 45 characters. |                                      |                               |
  |                                                                              |                                                |                                                |                                                |                                                |                                                |   98745612301 |            |             |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 | The Contact Phone format is invalid. |                               |
  |                                                                              |                                                |                                                |                                                |                                                |                                                |               |            | 10000-00000 |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      | Please enter a valid Zip Code |
  | !@2356%124&68jkk*6()$@!                                                      | !@#$%^56%12**4&68jkk*6()$@!                    | %^&*876%6%&^5                                  | %^&*876%6%5                                    | #$76%^7$^&%@yopmail.com                        | @#34&^56                                       |   98745612301 | California | 10000-0000  |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      |                               |
  |                                                                              |                                                |                                                |                                                |                                                |                                                |               |            | abcdefgh    |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      | Please enter a valid Zip Code |
  
  Scenario Outline: Create Managing Organization with Mandatory fields only
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  Then I enter <MO_Name> in "Managing Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <City> in "City" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  Then I click on "Submit" button on create organization page
  Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
  Then I verify <ValidateMsg> after submitting the create ogranization page
  
  Examples:
  | MO_Name        | Contact_Person | Address1 | City | State      | Postal_Code | StateInitials | ParticipantId | ValidateMsg                                                                                      |
  | MONAME         | ContactPerson  | Address1 | City | California |       10000 | CA            |           123 |                                                                                                  |
  | newmo edited12 | ContactPerson  | Address1 | City | California |       10000 | CA            |           123 | There is a conflict error because an entity with similar identifying attributes already existed. |
  
  Scenario Outline: Create a Manging organization with valid data without MO
  (Manadatory + Non-manadatory fields)
  
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  Then I enter <MO_Name> in "Managing Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <Contact_Person> in "Contact Person" on create organization page
  And I enter <Address2> in "Address 2" on create organization page
  And I enter <Contact_Email> in "Contact Email" on create organization page
  And I enter <City> in "City" on create organization page
  And I enter <Contact_Phone> in "Contact Phone" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  Then I click on "Submit" button on create organization page
  Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify <MO_Name> name on the header of view profile
  And I verify Participant Id <ParticipantId> on view profile of "Managing" Organization
  And I verify <Address1> in "address1" on view profile of "Managing" Organization
  And I verify <Address2> in "address2" on view profile of "Managing" Organization
  And I verify <City> in "city" on view profile of "Managing" Organization
  And I verify <StateInitials> in "state" on view profile of "Managing" Organization
  And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
  Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
  And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
  And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization
  And I Verify the count for the associated Organizations
  And I verify "ACH" organization present under "Managing" Organization
  And I verify "PGP" organization present under "Managing" Organization
  And I verify "SNF" organization present under "Managing" Organization
  Then I verify "ACH" organization by default selected under Managing Organization
  And I verify "CCN" header label under "ACH" organization in Managing Organization
  And I verify "ACH Organization Name" header label under "ACH" organization in Managing Organization
  And I verify "City" header label under "ACH" organization in Managing Organization
  And I verify "State" header label under "ACH" organization in Managing Organization
  And I verify "Postal Code" header label under "ACH" organization in Managing Organization
  And I click on "PGP" organization under Managing Organization
  And I verify "TIN/EIN" header label under "PGP" organization in Managing Organization
  And I verify "PGP Organization Name" header label under "PGP" organization in Managing Organization
  And I verify "City" header label under "PGP" organization in Managing Organization
  And I verify "State" header label under "PGP" organization in Managing Organization
  And I verify "Postal Code" header label under "PGP" organization in Managing Organization
  And I click on "SNF" organization under Managing Organization
  And I verify "CCN" header label under "SNF" organization in Managing Organization
  And I verify "SNF Organization Name" header label under "SNF" organization in Managing Organization
  And I verify "City" header label under "SNF" organization in Managing Organization
  And I verify "State" header label under "SNF" organization in Managing Organization
  And I verify "Postal Code" header label under "SNF" organization in Managing Organization
  
  Examples:
  | MO_Name | MO_Name1 | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | StateInitials | ParticipantId |
  | MONAME  | MONAME   | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | NY            | Sample        |
  
  @Smoke
  Scenario Outline: Edit and save changes for all fields of Managing Organization
  When I click on Organization link on Program Management page
  Then I search with <MO_Name> on organization in search box
  And I verify <MO_Name> field in search list on organization page
  And I click <MO_Name> field in search list on organization page
  And I fetch Participant Id assigned to the organization
  And I click on "Edit" button on particular organization
  And I edit "Managing Organization Name" field to <MO_Name1> for organization
  And I edit "Address 1" field to <Address1> for organization
  And I edit "Contact Person" field to <Contact_Person> for organization
  And I edit "Address 2" field to <Address2> for organization
  And I edit "Contact Email" field to <Contact_Email> for organization
  And I edit "City" field to <City> for organization
  And I edit "Contact Phone" field to <Contact_Phone> for organization
  And I edit <State> field for organization
  And I edit "Postal Code" field to <Postal_Code> for organization
  Then I click on "Submit" button on create organization page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify <MO_Name> name on the header of view profile
  And I verify Participant Id <ParticipantId> on view profile of "Managing" Organization
  And I verify <Address1> in "address1" on view profile of "Managing" Organization
  And I verify <Address2> in "address2" on view profile of "Managing" Organization
  And I verify <City> in "city" on view profile of "Managing" Organization
  And I verify <StateInitials> in "state" on view profile of "Managing" Organization
  And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
  Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
  And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
  And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization
  And I verify "ACH" organization present under "Managing" Organization
  And I verify "PGP" organization present under "Managing" Organization
  And I verify "SNF" organization present under "Managing" Organization
  Then I verify "ACH" organization by default selected under Managing Organization
  And I verify "CCN" header label under "ACH" organization in Managing Organization
  And I verify "ACH Organization Name" header label under "ACH" organization in Managing Organization
  And I verify "City" header label under "ACH" organization in Managing Organization
  And I verify "State" header label under "ACH" organization in Managing Organization
  And I verify "Postal Code" header label under "ACH" organization in Managing Organization
  And I click on "PGP" organization under Managing Organization
  And I verify "TIN/EIN" header label under "PGP" organization in Managing Organization
  And I verify "PGP Organization Name" header label under "PGP" organization in Managing Organization
  And I verify "City" header label under "PGP" organization in Managing Organization
  And I verify "State" header label under "PGP" organization in Managing Organization
  And I verify "Postal Code" header label under "PGP" organization in Managing Organization
  And I click on "SNF" organization under Managing Organization
  And I verify "CCN" header label under "SNF" organization in Managing Organization
  And I verify "SNF Organization Name" header label under "SNF" organization in Managing Organization
  And I verify "City" header label under "SNF" organization in Managing Organization
  And I verify "State" header label under "SNF" organization in Managing Organization
  And I verify "Postal Code" header label under "SNF" organization in Managing Organization
  
  Examples:
  | MO_Name | MO_Name1 | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | StateInitials | ParticipantId |
  | MONAME  | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | NY            | Sample        |
  
  Scenario Outline: Cancel the process of creating new Managing organization
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  Then I enter <MO_Name> in "Managing Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <Contact_Person> in "Contact Person" on create organization page
  And I enter <Address2> in "Address 2" on create organization page
  And I enter <Contact_Email> in "Contact Email" on create organization page
  And I enter <City> in "City" on create organization page
  And I enter <Contact_Phone> in "Contact Phone" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  Then I click on "Cancel" button on create organization page
  And A confirmation pop-up should appear for cancellation
  And I click on Yes button and Observe the page
  And After click on the Yes button, Create a new Managing Organization process is terminated
  And User navigated to home page of Manage organization
  
  Examples:
  | MO_Name | MO_Name1 | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | StateInitials | ParticipantId |
  | MONAME  | MONAME   | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | NY            | Sample        |
  
  Scenario Outline: View managing organization
  When I click on Organization link on Program Management page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify <MO_Name> name on the header of view profile
  And I verify Participant Id <ParticipantId> on view profile of "Managing" Organization
  And I verify <Address1> in "address1" on view profile of "Managing" Organization
  And I verify <Address2> in "address2" on view profile of "Managing" Organization
  And I verify <City> in "city" on view profile of "Managing" Organization
  And I verify <StateInitials> in "state" on view profile of "Managing" Organization
  And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
  Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
  And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
  And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization
  And I verify "ACH" organization present under "Managing" Organization
  And I verify "PGP" organization present under "Managing" Organization
  And I verify "SNF" organization present under "Managing" Organization
  Then I verify "ACH" organization by default selected under Managing Organization
  And I verify "CCN" header label under "ACH" organization in Managing Organization
  And I verify "ACH Organization Name" header label under "ACH" organization in Managing Organization
  And I verify "City" header label under "ACH" organization in Managing Organization
  And I verify "State" header label under "ACH" organization in Managing Organization
  And I verify "Postal Code" header label under "ACH" organization in Managing Organization
  And I verify the count associated with the ACH organization
  Then I click on create new Organization button on Program Management homepage
  And I enter <Hosp_Org_Name> in "Hospital Organization Name" on create organization page
  And I enter <Address1> in "Address 1" on create organization page
  And I enter <Short_Name> in "Short Name" on create organization page
  And I enter <Address2> in "Address 2" on create organization page
  And I enter <City> in "City" on create organization page
  And I select <State> in State on create organization page
  And I enter <Postal_Code> in "Postal Code" on create organization page
  And I provide unique CCN in "CCN" on create organization page
  And I provide unique EIN in "EIN" on create organization page
  And I provide unique NPI in "NPI" on create organization page
  Then I verify "Location 1" on "create" SNF organization page
  And I enter location name <Loc_Name> for Location "1" on "create" organization page
  And I enter address1 <LAddress1> for Location "1" on "create" organization page
  And I enter location type <Loc_Type> for Location "1" on "create" organization page
  And I enter address2 <LAddress2> for Location "1" on "create" organization page
  And I enter region <LRegion> for Location "1" on "create" organization page
  And I enter city <LCity> for Location "1" on "create" organization page
  And I enter market <LMarket> for Location "1" on "create" organization page
  And I enter state <LState> for Location "1" on "create" organization page
  And I enter zip <LPostal_Code> for Location "1" on "create" organization page
  Then I click on "Submit" button on create organization page
  Then I verify "Success! Hospital Organization Successfully Created." after submitting the create ogranization page
  When I click on Organization link on Program Management page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify the count associated with the ACH organization
  And I click on "PGP" organization under Managing Organization
  And I verify "TIN/EIN" header label under "PGP" organization in Managing Organization
  And I verify "PGP Organization Name" header label under "PGP" organization in Managing Organization
  And I verify "City" header label under "PGP" organization in Managing Organization
  And I verify "State" header label under "PGP" organization in Managing Organization
  And I verify "Postal Code" header label under "PGP" organization in Managing Organization
  And I click on "SNF" organization under Managing Organization
  And I verify "CCN" header label under "SNF" organization in Managing Organization
  And I verify "SNF Organization Name" header label under "SNF" organization in Managing Organization
  And I verify "City" header label under "SNF" organization in Managing Organization
  And I verify "State" header label under "SNF" organization in Managing Organization
  And I verify "Postal Code" header label under "SNF" organization in Managing Organization
  
  Examples:
  | MO_Name             | Hosp_Org_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | CCN | EIN | NPI | Loc_Name | LAddress1 | Loc_Type | LAddress2 | LRegion | LCity | LMarket | LState | LPostal_Code | StateInitials | ParticipantId |  |
  | Automate Manag Orgg | ACH           | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | CCN | EIN | NPI |          |           |          |           |         |       |         |        |              | NY            | Sample        |  |
  
  Scenario Outline: View managing organization and click on the cross button
  When I click on Organization link on Program Management page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify <MO_Name> name on the header of view profile
  And I click on the cross button
  And user should get redirected to the managing organization tab page
  
  Examples:
  | MO_Name             |
  | Automate Manag Orgg |
  
  Scenario Outline: Searching Organizations on Managing Profile Page with associated organization
  When I click on Organization link on Program Management page
  When I search with <MO_Name> on organization in search box
  And I click <MO_Name> field in search list on organization page
  And I verify "ACH" organization present under "Managing" Organization
  And I verify "PGP" organization present under "Managing" Organization
  And I verify "SNF" organization present under "Managing" Organization
  Then I verify "ACH" organization by default selected under Managing Organization
  When I search with <Org_Name> on organization in search box
  And I click <Org_Name> field in search list on organization page
  
  Examples:
  | MO_Name             | Org_Name              | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | CCN | EIN | NPI | Loc_Name | LAddress1 | Loc_Type | LAddress2 | LRegion | LCity | LMarket | LState | LPostal_Code | StateInitials | ParticipantId |
  | Automate Manag Orgg | Automate Manag Org    | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | CCN | EIN | NPI |          |           |          |           |         |       |         |        |              | NY            | Sample        |
  | Automate Manag Orgg | Automate PGP Org Name | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | CCN | EIN | NPI |          |           |          |           |         |       |         |        |              | NY            | Sample        |
  | Automate Manag Orgg | SNF                   | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | CCN | EIN | NPI |          |           |          |           |         |       |         |        |              | NY            | Sample        |
  Scenario Outline: Edit operations performed on MO
    When I click on Organization link on Program Management page
    Then I search with <MO_Name> on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I fetch Participant Id assigned to the organization
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <MO_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on create organization page
    Then I verify <ValidateMsg> after submitting the create ogranization page

    Examples: 
      | MO_Name             | MO_Name1 | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | StateInitials | ParticipantId | ValidateMsg                   |
      | Automate Manag Orgg | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | NY            | Sample        |                               |
      | Automate Manag Orgg | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |        1000 | NY            | Sample        | Please enter a valid Zip Code |
      | Automate Manag Orgg | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 |            | New York |       10001 | NY            | Sample        | Please enter a City           |
      | Automate Manag Orgg | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | NY            | Sample        |                               |

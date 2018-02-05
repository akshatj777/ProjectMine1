Feature: Edit Hospital organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    Then I verify "+" button under "Managing" organization page
    Then I click on "+" button on "Managing" organization page
    And I verify "Create Managing Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create MO" organization page

    Examples: 
      | Description                                            | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | Message                                     |
      | Create Managing Organization with all available fields | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | Managing Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "ACH - <CCN>" in "CCN" on create organization page
    And I provide unique "ACH - <EIN>" in "EIN" on create organization page
    And I provide unique "ACH - <NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I select location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I select region <Loc_Region> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "1" on "create" organization page
    And I select state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create ACH - <Has_MO>" organization page

    Examples: 
      | Description                                                             | Has_MO | Managing_Org | Hosp_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                     |
      | Create Hospital Organization with all the available fields - Without MO | NO     |              | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Hospital Organization Successfully Created. |
      | Create Hospital Organization with all the available fields - With MO    | YES    | MONAME       | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Hospital Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit Hospital Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit ACH - <Has_MO>" organization page
    And I verify "*Hospital Organization Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Short Name" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "ccn" identifier is not editable
    And I verify "ein" identifier is not editable
    And I verify "npi" identifier is not editable
    And I verify "*Location Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Location Type" dropdown field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "Region" dropdown field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "Market" dropdown field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    Then I verify "+" button under "Edit Hospital" organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                       | Has_MO | Hosp_Name |
      | Verification of availability of all the fields on Edit Hospital Organization page | NO     | ACHNAME   |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Org_Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMessage>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                     | Has_MO | Hosp_Name | Edited_Hospital_Name | Address1 | City | State      | Org_Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State  | Loc_Postal_Code | ValidationMessage                 |
      | Check validation for blank ACH name             | NO     | ACHNAME   |                      | Address1 | City | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Organization Name |
      | Check validation for blank Address1             | NO     | ACHNAME   | ACHNAME              |          | City | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank City                 | NO     | ACHNAME   | ACHNAME              | Address1 |      | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a City               |
      | Check validation for blank State                | NO     | ACHNAME   | ACHNAME              | Address1 | City |            |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please select a State             |
      | Check validation for blank Postal code          | NO     | ACHNAME   | ACHNAME              | Address1 | City | California |                 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a Zip Code           |
      | Check validation for blank Location name        | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |           10000 |          | LAddress1    | LCity    | California |           10001 | Please enter a Location Name      |
      | Check validation for blank Location Address1    | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |           10000 | LocName  |              | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank Location City        | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |           10000 | LocName  | LAddress1    |          | California |           10001 | Please enter a City               |
      | Check validation for blank Location State       | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |           10000 | LocName  | LAddress1    | LCity    |            |           10001 | Please select a State             |
      | Check validation for blank Location Postal code | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |           10000 | LocName  | LAddress1    | LCity    | California |                 | Please enter a Zip Code           |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Org_Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Org_Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Postal Code" field to "<Org_Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "address2" field to <Loc_Address2> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on edit organization page

    Examples: 
      | Description                                                                                | Has_MO | Hosp_Name | Edited_Hospital_Name                                                         | Org_Address1                                              | Short_Name                                     | Org_Address2                                              | City                                           | Org_Postal_Code | Loc_Name                                                                       | Loc_Address1                                              | Loc_Address2                                              | Loc_City                                       | Loc_Postal_Code | ValidationMessage                                              |
      | Check Character Limit for ACH name field on Edit Hospital Organization page                | NO     | ACHNAME   | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                           |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field on Edit Hospital Organization page                | NO     | ACHNAME   |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Short Name field on Edit Hospital Organization page              | NO     | ACHNAME   |                                                                              |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field on Edit Hospital Organization page                | NO     | ACHNAME   |                                                                              |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The second address line may not be greater than 55 characters. |
      | Check Character Limit for City field on Edit Hospital Organization page                    | NO     | ACHNAME   |                                                                              |                                                           |                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 |                                                                                |                                                           |                                                           |                                                |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field on Edit Hospital Organization page             | YES    | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                | 10000-00000     |                                                                                |                                                           |                                                           |                                                |                 | Please enter a valid Zip Code                                  |
      | Check Character Limit for Location name field on Edit Hospital Organization page           | YES    | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcdefghijklmnopqrstuvwxyzabcasf |                                                           |                                                           |                                                |                 | The Location Name may not be greater than 75 characters.       |
      | Check Character Limit for Location Address1 field on Edit Hospital Organization page       | YES    | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 |                                                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                           |                                                |                 | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Location Address2 field on Edit Hospital Organization page       | YES    | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 |                                                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                 | The second address line may not be greater than 55 characters. |
      | Check Character Limit for Location City field on Edit Hospital Organization page           | YES    | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Location Postal code field on Edit Hospital Organization page    | NO     | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                | 10000-00000     | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Postal code field on Edit Hospital Organization page          | NO     | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                | abcdefghij      |                                                                                |                                                           |                                                           |                                                |                 | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Location Postal code field on Edit Hospital Organization page | NO     | ACHNAME   |                                                                              |                                                           |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                | abcdefghij      | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Org_Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Org_Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Org_Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <Loc_Type> for Location "1" for organization
    And I edit "address2" field to <Loc_Address1> for Location "1" for organization
    And I edit Region dropdown field to <Loc_Region> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit Market dropdown field to <Loc_Market> for Region "<Loc_Region>" for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit ACH - <Has_MO>" organization page

    Examples: 
      | Description                                                                                                           | Has_MO | Hosp_Name | Edited_Hospital_Name | Org_Address1                                            | Short_Name                                    | Org_Address2                                            | City                                          | State      | Org_Postal_Code | Loc_Name                                                                    | Loc_Address1                                            | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2                                            | Loc_City                                      | Loc_State  | Loc_Postal_Code | Message                                                                                          |
      | Check Character Limit edge condition for ACH Name field on Edit Hospital Organization - Without MO                    | NO     | ACHNAME   | equalsTo75Characters | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Address1 field on Edit Hospital Organization - Without MO                    | NO     | ACHNAME   | ACHNAME              | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabcdefghijklm | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Short Name field on Edit Hospital Organization - Without MO                  | NO     | ACHNAME   | ACHNAME              | Address1                                                | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabc | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Address2 field on Edit Hospital Organization - Without MO                    | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabcdefghijklm | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for City field on Edit Hospital Organization - Without MO                        | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabc | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Postal code field on Edit Hospital Organization - Without MO                 | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California | 10000-6325      | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Location name field on Edit Hospital Organization - Without MO               | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabcdefghijklmilcomabcdefghijklmab | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Location Address1 field on Edit Hospital Organization - Without MO           | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabcdefghijklm | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Location Address2 field on Edit Hospital Organization - Without MO           | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabcdefghijklm | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Location City field on Edit Hospital Organization - Without MO               | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | abcdefghijklmnopqrstuvwxyzabcdefgopmailcomabc | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Check Character Limit edge condition for Location Postal code field on Edit Hospital Organization - Without MO        | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California | 10001-4562      | Hospital Organization Successfully Updated.                                                      |
      | To check the Allowed characters for the available fields in Edit Hospital Organization - Without MO                   | NO     | ACHNAME   | AllowedCharatcters   | a!@$%^&()_+{}:<>?,./;=Address1                    | a!@$%^&()_{}:<>?,./;[]\/=+Short_Name        | !@$%^()_+{}:<>?,./;[]\\/=Address2                    | a!@$%^&()_+{}:<>?,./;[]\\/=City123           | California |           10000 | !@$%^&()_+{}:<>?,./;[]\\/=Loc_Name123                                     | !@$%^&()_+{}:<>?,./;[]\\/=Loc_Address1                | Inpatient | Midwest    | Chicago    | !@$%^&()_+{}:<>?,./;[]\\/=Loc_Address2                | !@$%^&()_+{}:<>?,./;[]\/=Loc_City123       | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields - Without MO                                                         | NO     | ACHNAME   | ACHNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + ShortName - Without MO                                             | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + Address2 - Without MO                                              | NO     | ACHNAME   | ACHNAME              | Address1                                                |                                               | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + Location Type - Without MO                                         | NO     | ACHNAME   | ACHNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + Location Address2 - Without MO                                     | NO     | ACHNAME   | ACHNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + Location Region - With MO                                          | YES    | ACHNAME   | ACHNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           | Midwest    |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + ShortName + Location Type - With MO                                | YES    | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + ShortName + Address2 + Location Type - With MO                     | YES    | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + ShortName + Address2 + Location Region + Location Market - With MO | YES    | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           | Midwest    | Chicago    |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields + Address2 + Location Type + Location Address2 - Without MO          | NO     | ACHNAME   | ACHNAME              | Address1                                                |                                               | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient |            |            | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with Mandatory fields - With MO                                                            | YES    | ACHNAME   | ACHNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit duplicate Hospital Organization name with Mandatory fields - Without MO                                          | NO     | ACHNAME   | DUPLICATE_ACH        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit duplicate Hospital Organization name with Mandatory fields - With MO                                             | YES    | ACHNAME   | DUPLICATE_ACH        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |           |            |            |                                                         | Loc_City                                      | California |           10000 | There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit Hospital Organization with all the available fields - Without MO                                                 | NO     | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |
      | Edit Hospital Organization with all the available fields - With MO                                                    | YES    | ACHNAME   | ACHNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Inpatient | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | Hospital Organization Successfully Updated.                                                      |

  Scenario Outline: Edit a Hospital Organization With Mandatory Fields Missing
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name>" for organization
    And I edit "Address 1" field to "<Org_Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Org_Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "Please enter an Organization Name" mandatory field validation message on edit organization page
    And I verify "Please enter an Address" mandatory field validation message on edit organization page
    And I verify "Please enter a City" mandatory field validation message on edit organization page
    And I verify "Please select a State" mandatory field validation message on edit organization page
    And I verify "Please enter a Zip Code" mandatory field validation message on edit organization page
    And I verify "Please enter a Location Name" mandatory field validation message on edit organization page
    And I verify "Please enter an Address" mandatory field validation message on edit organization page
    And I verify "Please enter a City" mandatory field validation message on edit organization page
    And I verify "Please select a State" mandatory field validation message on edit organization page
    And I verify "Please enter a Zip Code" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                | Has_MO | Hosp_Name | Edited_Hospital_Name | Org_Address1 | City | State | Org_Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State | Loc_Postal_Code |
      | Edit a Hospital Organization With Mandatory Fields Missing | NO     | ACHNAME   |                      |              |      |       |                 |          |              |          |           |                 |

  Scenario Outline: Add one more Location details on Edit Hospital Organization
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    Then I click on "+" button on "Edit Hospital" organization page
    Then I verify "Location 2" on "Edit" organization page
    And I enter location name <Loc_Name> for Location "2" on "Edit" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "Edit" organization page
    And I select location type <Loc_Type> for Location "2" on "Edit" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "Edit" organization page
    And I select region <Loc_Region> for Location "2" on "Edit" organization page
    And I enter city <Loc_City> for Location "2" on "Edit" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "2" on "Edit" organization page
    And I select state <Loc_State> for Location "2" on "Edit" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "Edit" organization page
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit ACH - <Has_MO>" organization page

    Examples: 
      | Description                                                 | Has_MO | Hosp_Name | Loc_Name      | Loc_Address1  | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2  | Loc_City  | Loc_State  | Loc_Postal_Code | Message                                     |
      | Add one more Location details on Edit Hospital Organization | NO     | ACHNAME   | Loc_Name new1 | Loc_Address14 | Inpatient | Midwest    | Chicago    | Loc_Address24 | Loc_City1 | California |           10001 | Hospital Organization Successfully Updated. |

  Scenario Outline: Edit a Hospital Organization with duplicate Location details
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I verify "2" location count on view "Hospital" organization page
    And I click on "Edit" button on particular organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <Loc_Type> for Location "1" for organization
    And I edit "address2" field to <Loc_Address2> for Location "1" for organization
    And I edit Region dropdown field to <Loc_Region> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit Market dropdown field to <Loc_Market> for Region "<Loc_Region>" for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I verify "Location 2" on "Edit" organization page
    And I edit "Location Name" field to <Loc_Name> for Location "2" for organization
    And I edit "address1" field to <Loc_Address1> for Location "2" for organization
    And I edit Location Type dropdown field to <Loc_Type> for Location "2" for organization
    And I edit "address2" field to <Loc_Address2> for Location "2" for organization
    And I edit Region dropdown field to <Loc_Region> for Location "2" for organization
    And I edit "city" field to <Loc_City> for Location "2" for organization
    And I edit Market dropdown field to <Loc_Market> for Region "<Loc_Region>" for Location "2" for organization
    And I edit State dropdown field to <Loc_State> for Location "2" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "2" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit ACH - <Has_MO>" organization page
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I verify "1" location count on view "Hospital" organization page

    Examples: 
      | Description                                                  | Has_MO | Hosp_Name | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | Message                                     |
      | Edit a Hospital Organization with duplicate Location details | NO     | ACHNAME   | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | Hospital Organization Successfully Updated. |

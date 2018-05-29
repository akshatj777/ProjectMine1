Feature: Edit SNF organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
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
    When I click on "SNF" organization tab on organization dashboard
    Then I click on "+" button on "SNF" organization page
    And I verify "Create SNF Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <SNF_Name> in "SNF Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "SNF - <CCN>" in "CCN" on create organization page
    And I provide unique "SNF - <EIN>" in "EIN" on create organization page
    And I provide unique "SNF - <NPI>" in "NPI" on create organization page
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
    Then I verify "<Message>" after submitting the "create SNF - <Has_MO>" organization page

    Examples: 
      | Description                                                        | Has_MO | Managing_Org | SNF_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                |
      | Create SNF Organization with all the available fields - Without MO | NO     |              | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | SNF Organization Successfully Created. |
      | Create SNF Organization with all the available fields - With MO    | YES    | MONAME       | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | SNF Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit SNF Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit SNF - <Has_MO>" organization page
    And I verify "*SNF Organization Name" field on edit organization page
    And I verify "Short Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "ccn" identifier is not editable
    And I verify "ein" identifier is not editable
    And I verify "npi" identifier is not editable
    And I verify "+" button under "edit SNF" organization page
    And I verify "*Location Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Location Type" dropdown field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "Region" dropdown field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "Market" dropdown field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                  | Has_MO | SNF_Name |
      | Verification of availability of all the fields on Edit SNF Organization page | NO     | SNFNAME  |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit SNF Organization" header text on edit organization page
    And I edit "SNF Organization Name" field to "<Edited_SNF_Name>" for organization
    And I edit "Address 1" field to "<Org_Address1>" for organization
    And I edit "City" field to "<Org_City>" for organization
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
      | Description                                     | Has_MO | SNF_Name | Edited_SNF_Name | Org_Address1 | Org_City | State      | Org_Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State  | Loc_Postal_Code | ValidationMessage                 |
      | Check validation for blank SNF name             | NO     | SNFNAME  |                 | Address1     | City     | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Organization Name |
      | Check validation for blank Address1             | NO     | SNFNAME  | SNFNAME         |              | City     | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank City                 | NO     | SNFNAME  | SNFNAME         | Address1     |          | California |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a City               |
      | Check validation for blank State                | NO     | SNFNAME  | SNFNAME         | Address1     | City     |            |           10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please select a State             |
      | Check validation for blank Postal code          | NO     | SNFNAME  | SNFNAME         | Address1     | City     | California |                 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a Postal Code        |
      | Check validation for blank Location name        | YES    | SNFNAME  | SNFNAME         | Address1     | City     | California |           10000 |          | LAddress1    | LCity    | California |           10001 | Please enter a Location Name      |
      | Check validation for blank Location Address1    | YES    | SNFNAME  | SNFNAME         | Address1     | City     | California |           10000 | LocName  |              | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank Location City        | YES    | SNFNAME  | SNFNAME         | Address1     | City     | California |           10000 | LocName  | LAddress1    |          | California |           10001 | Please enter a City               |
      | Check validation for blank Location State       | YES    | SNFNAME  | SNFNAME         | Address1     | City     | California |           10000 | LocName  | LAddress1    | LCity    |            |           10001 | Please select a State             |
      | Check validation for blank Location Postal code | NO     | SNFNAME  | SNFNAME         | Address1     | City     | California |                 | LocName  | LAddress1    | LCity    | California |                 | Please enter a Postal Code        |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit SNF Organization" header text on edit organization page
    And I edit "SNF Organization Name" field to "<Edited_SNF_Name> - <Has_MO>" for organization
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
      | Description                                                                           | Has_MO | SNF_Name | Edited_SNF_Name                                                              | Org_Address1                                             | Short_Name                                     | Org_Address2                                              | City                                           | Org_Postal_Code | Loc_Name                                                                       | Loc_Address1                                              | Loc_Address2                                              | Loc_City                                       | Loc_Postal_Code | ValidationMessage                                              |
      | Check Character Limit for SNF name field on Edit SNF Organization page                | NO     | SNFNAME  | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                          |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field on Edit SNF Organization page                | NO     | SNFNAME  |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrsthijklmnopq |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Short Name field on Edit SNF Organization page              | NO     | SNFNAME  |                                                                              |                                                          | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field on Edit SNF Organization page                | NO     | SNFNAME  |                                                                              |                                                          |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                 |                                                                                |                                                           |                                                           |                                                |                 | The second address line may not be greater than 55 characters. |
      | Check Character Limit for City field on Edit SNF Organization page                    | NO     | SNFNAME  |                                                                              |                                                          |                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 |                                                                                |                                                           |                                                           |                                                |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field on Edit SNF Organization page             | YES    | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                | 10000-00000     |                                                                                |                                                           |                                                           |                                                |                 | Please enter a valid Postal Code                               |
      | Check Character Limit for Location name field on Edit SNF Organization page           | YES    | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcdefghijklmnopqrstuvwxyzabcasf |                                                           |                                                           |                                                |                 | The Location Name may not be greater than 75 characters.       |
      | Check Character Limit for Location Address1 field on Edit SNF Organization page       | YES    | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 |                                                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                           |                                                |                 | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Location Address2 field on Edit SNF Organization page       | YES    | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 |                                                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                 | The second address line may not be greater than 55 characters. |
      | Check Character Limit for Location City field on Edit SNF Organization page           | YES    | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Location Postal code field on Edit SNF Organization page    | NO     | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                | 10000-00000     | Please enter a valid Postal Code                               |
      | Check Allowed Characters for Postal code field on Edit SNF Organization page          | NO     | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                | abcdefghij      |                                                                                |                                                           |                                                           |                                                |                 | Please enter a valid Postal Code                               |
      | Check Allowed Characters for Location Postal code field on Edit SNF Organization page | NO     | SNFNAME  |                                                                              |                                                          |                                                |                                                           |                                                |                 |                                                                                |                                                           |                                                           |                                                | abcdefghij      | Please enter a valid Postal Code                               |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit SNF Organization" header text on edit organization page
    And I edit "SNF Organization Name" field to "<Edited_SNF_Name> - <Has_MO>" for organization
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
    Then I verify "<Message>" after submitting the "edit SNF - <Has_MO>" organization page

    Examples: 
      | Description                                                                                                      | Has_MO | SNF_Name | Edited_SNF_Name      | Org_Address1                                            | Short_Name                                    | Org_Address2                                            | City                                          | State      | Org_Postal_Code | Loc_Name                                                                    | Loc_Address1                                            | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2                                            | Loc_City                                      | Loc_State  | Loc_Postal_Code | Message                                |
      | Check Character Limit edge condition for SNF Organization Name field on Edit SNF Organization page - Without MO  | NO     | SNFNAME  | equalsTo75Characters | add1                                                    | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Address1 field on Edit SNF Organization page - Without MO               | NO     | SNFNAME  | SNFNAME              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrsjklmnopqrs | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Short Name field on Edit SNF Organization page - Without MO             | NO     | SNFNAME  | SNFNAME              | Address1                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrs | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Address2 field on Edit SNF Organization page - Without MO               | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrsjklmnopqrs | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for City field on Edit SNF Organization page - Without MO                   | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrs | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Postal code field on Edit SNF Organization page - Without MO            | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California | 10000-0000      | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Location Name field on Edit SNF Organization page - Without MO          | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrszabcdefghijklmnopqrsjklmnopqrs | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Location Address1 field on Edit SNF Organization page - Without MO      | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrszabcdefghi | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Location Address2 field on Edit SNF Organization page - Without MO      | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrszabcdefghi | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Location city field on Edit SNF Organization page - Without MO          | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqsd | California |           10000 | SNF Organization Successfully Updated. |
      | Check Character Limit edge condition for Location postal code field on Edit SNF Organization page - Without MO   | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California | 10000-2345      | SNF Organization Successfully Updated. |
      #| To check the Allowed characters for the available fields in Edit SNF Organization - Without MO                   | NO     | SNFNAME  | AllowedCharatcters   | a!@$%^&*()_+{}:<>?,./;'[]/\\=Address1                   | !@$%^&*()_+{}:<>?,./;'[]/\\=Short_Name        | !@$%^&*()_+{}:<>?,./;'[]/\\=Address2                    | !@$%^&*()_+{}:<>?,./;'[]/\\=City123           | California |           10000 | !@$%^&*()_+{}:<>?,./;'[]/\\=Loc_Name123                                     | !@$%^&*()_+{}:<>?,./;'[]/\\=Loc_Address1                | Skilled Nursing | Midwest    | Chicago    | !@$%^&*()_+{}:<>?,./;'[]/\\=Loc_Address2                | !@$%^&*()_+{}:<>?,./;'[]/\\=Loc_City123       | California |           10000 | SNF Organization Successfully Updated.                                                           |
      | Edit SNF Organization with Mandatory fields - Without MO                                                         | NO     | SNFNAME  | SNFNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + ShortName - Without MO                                             | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + Address2 - Without MO                                              | NO     | SNFNAME  | SNFNAME              | Address1                                                |                                               | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + Location Type - Without MO                                         | NO     | SNFNAME  | SNFNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + Location Address2 - Without MO                                     | NO     | SNFNAME  | SNFNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + Location Region - With MO                                          | YES    | SNFNAME  | SNFNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 | Midwest    |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + ShortName + Location Type - With MO                                | YES    | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + ShortName + Address2 + Location Type - With MO                     | YES    | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + ShortName + Address2 + Location Region + Location Market - With MO | YES    | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 | Midwest    | Chicago    |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields + Address2 + Location Type + Location Address2 - Without MO          | NO     | SNFNAME  | SNFNAME              | Address1                                                |                                               | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing |            |            | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with Mandatory fields - With MO                                                            | YES    | SNFNAME  | SNFNAME              | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with all the available fields - Without MO                                                 | NO     | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit SNF Organization with all the available fields - With MO                                                    | YES    | SNFNAME  | SNFNAME              | Address1                                                | Short_Name                                    | Address2                                                | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            | Skilled Nursing | Midwest    | Chicago    | Loc_Address2                                            | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit duplicate SNF Organization name with Mandatory fields - Without MO                                          | NO     | SNFNAME  | DUPLICATE_SNF        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit duplicate SNF Organization name with Mandatory fields - With MO                                             | YES    | SNFNAME  | DUPLICATE_SNF        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit duplicate SNF Organization name with Mandatory fields - Without MO                                          | NO     | SNFNAME  | DUPLICATE_SNF        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |
      | Edit duplicate SNF Organization name with Mandatory fields - With MO                                             | YES    | SNFNAME  | DUPLICATE_SNF        | Address1                                                |                                               |                                                         | City                                          | California |           10000 | Loc_Name                                                                    | Loc_Address1                                            |                 |            |            |                                                         | Loc_City                                      | California |           10000 | SNF Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit SNF Organization" header text on edit organization page
    And I edit "SNF Organization Name" field to "<Edited_SNF_Name>" for organization
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
    And I verify "Please enter a Postal Code" mandatory field validation message on edit organization page
    And I verify "Please enter a Location Name" mandatory field validation message on edit organization page
    And I verify "Please enter an Address" mandatory field validation message on edit organization page
    And I verify "Please enter a City" mandatory field validation message on edit organization page
    And I verify "Please select a State" mandatory field validation message on edit organization page
    And I verify "Please enter a Postal Code" mandatory field validation message on edit organization page

    Examples: 
      | Description                                           | Has_MO | SNF_Name | Edited_SNF_Name | Org_Address1 | City | State | Org_Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State | Loc_Postal_Code |
      | Edit a SNF Organization With Mandatory Fields Missing | NO     | SNFNAME  |                 |              |      |       |                 |          |              |          |           |                 |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
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
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit SNF" organization page

    Examples: 
      | Description                                                    | Has_MO | SNF_Name | Loc_Name     | Loc_Address1  | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2  | Loc_City    | Loc_State  | Loc_Postal_Code | Message                                |
      | Edit and Save an existing Location details on SNF Organization | NO     | SNFNAME  | Loc_Name new | Loc_Address12 | Skilled Nursing | Midwest    | Chicago    | Loc_Address22 | Loc_City11S | California |           10001 | SNF Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    Then I click on "+" button on "SNF" organization page
    And I verify "Location 2" on "Create SNF" organization page
    And I enter location name <Loc_Name> for Location "2" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "create" organization page
    And I select location type <Loc_Type> for Location "2" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "create" organization page
    And I select region <Loc_Region> for Location "2" on "create" organization page
    And I enter city <Loc_City> for Location "2" on "create" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "2" on "create" organization page
    And I select state <Loc_State> for Location "2" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create SNF - <Has_MO>" organization page

    Examples: 
      | Description                                                | Has_MO | SNF_Name | Loc_Name   | Loc_Address1 | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | Message                                |
      | Add one more location Location details on SNF Organization | NO     | SNFNAME  | Loc_Name12 | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | SNF Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I verify "Location" tab present under "SNF" Organization
    And I click on "Location" tab on view profile of "SNF" Organization
    And I verify "2" location count on view "SNF" organization page
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
    Then I click on "Submit" button on "Edit" organization page
    #And I verify duplicate Location Message "Duplicate Location"

    Examples: 
      | Description                                             | Has_MO | SNF_Name | Loc_Name | Loc_Address1 | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | Message                                |
      | Edit a SNF Organization with duplicate Location details | NO     | SNFNAME  | Loc_Name | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | SNF Organization Successfully Updated. |

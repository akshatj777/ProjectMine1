Feature: Create Hospital organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "Hospital" organization tab on organization dashboard

  Scenario: Verification of availability of all the fields on Create Hospital Organization page
    Then I verify "+" button under "Hospital" organization page
    And I verify "CCN" header label under "Hospital" organization
    And I verify "ACH Organization Name" header label under "Hospital" organization
    And I verify "City" header label under "Hospital" organization
    And I verify "State" header label under "Hospital" organization
    And I verify "Postal Code" header label under "Hospital" organization
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I verify "*Hospital Organization Name" field on create organization page
    And I verify "Has a Management Organization" radio button on create organization page
    And I verify "No Management Organization" radio button on create organization page
    And I verify "Short Name" field on create organization page
    And I verify "*Address 1" field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "*City" field on create organization page
    And I verify "*State" drop down field on create organization page
    And I verify "*Postal Code" field on create organization page
    And I verify "CCN" field on create organization page
    And I verify "EIN" field on create organization page
    And I verify "NPI" field on create organization page
    And I verify "*Location Name" field on create organization page
    And I verify "*Address 1" field on create organization page
    And I verify "Location Type" dropdown field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "Region" dropdown field on create organization page
    And I verify "*City" field on create organization page
    And I verify "Market" dropdown field on create organization page
    And I verify "*State" drop down field on create organization page
    And I verify "*Postal Code" field on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

  Scenario Outline: <Description>
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "<CCN>" in "CCN" on create organization page
    And I provide unique "<EIN>" in "EIN" on create organization page
    And I provide unique "<NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I enter state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                                     | Hosp_Name | Address1 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | ValidationMsg                           |
      | Check validation for blank ACH name             |           | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please enter an Organization Name       |
      | Check validation for blank Address1             | ACHNAME   |          | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please enter an Address                 |
      | Check validation for blank City                 | ACHNAME   | Address1 |      | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please enter a City                     |
      | Check validation for blank State                | ACHNAME   | Address1 | City |            |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please select a State                   |
      | Check validation for blank Postal code          | ACHNAME   | Address1 | City | California |             | LocName  | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please enter a Zip Code                 |
      | Check validation for blank Location name        | ACHNAME   | Address1 | City | California |       10000 |          | LAddress1    | LCity    | California |           10001 | CCN | EIN | NPI | Please enter a Location Name            |
      | Check validation for blank Location Address1    | ACHNAME   | Address1 | City | California |       10000 | LocName  |              | LCity    | California |           10001 | CCN | EIN | NPI | Please enter an Address                 |
      | Check validation for blank Location City        | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    |          | California |           10001 | CCN | EIN | NPI | Please enter a City                     |
      | Check validation for blank Location State       | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    |            |           10001 | CCN | EIN | NPI | Please select a State                   |
      | Check validation for blank Location Postal code | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |                 | CCN | EIN | NPI | Please enter a Zip Code                 |
      | Check validation for blank Identifiers          | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 |     |     |     | At least one identification is required |

  Scenario Outline: <Description>
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "<CCN>" in "CCN" on create organization page
    And I provide unique "<EIN>" in "EIN" on create organization page
    And I provide unique "<NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                          | Hosp_Name                                                                    | Address1                                       | Short_Name                                     | Address2                                       | City                                           | Postal_Code | Loc_Name                                       | Loc_Address1                                   | Loc_Address2                                   | Loc_City                                       | Loc_Postal_Code | CCN           | EIN           | NPI           | ValidationMessage                                              |
      | Check Character Limit for ACH name field             | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               |               |               | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field             |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               |               |               | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for Short Name field           |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               |               |               | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field             |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |             |                                                |                                                |                                                |                                                |                 |               |               |               | The second address line may not be greater than 45 characters. |
      | Check Character Limit for City field                 |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             |                                                |                                                |                                                |                                                |                 |               |               |               | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field          |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 |                                                |                                                |                                                |                                                |                 |               |               |               | Please enter a valid Zip Code                                  |
      | Check Character Limit for Location name field        |                                                                              |                                                |                                                |                                                |                                                |             | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |                 |               |               |               | The locationName may not be greater than 45 characters.        |
      | Check Character Limit for Location Address1 field    |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |             |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                 |               |               |               | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for Location Address2 field    |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |             |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                 |               |               |               | The second address line may not be greater than 45 characters. |
      | Check Character Limit for Location City field        |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 |               |               |               | The City may not be greater than 45 characters.                |
      | Check Character Limit for Location Postal code field |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 |                                                |                                                |                                                |                                                | 10000-00000     |               |               |               | Please enter a valid Zip Code                                  |
      | Check Character Limit for CCN field                  |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | lessThan6     |               |               | The CCN must be at least 6 characters.                         |
      | Check Character Limit for CCN field                  |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | greaterThan10 |               |               | The CCN may not be greater than 10 characters.                 |
      | Check Character Limit for EIN field                  |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               | greaterThan10 |               | The EIN may not be greater than 10 characters.                 |
      | Check Character Limit for NPI field                  |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               |               | greaterThan10 | The NPI may not be greater than 10 characters.                 |
      | Check Allowed Characters for CCN field               |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | @$%^&6!*&57   |               |               | The CCN field must be alphanumeric.                            |
      | Check Allowed Characters for EIN field               |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               | $@^&*%67$^&   |               | The EIN field must be alphanumeric.                            |
      | Check Allowed Characters for NPI field               |                                                                              |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 |               |               | *@$%^93%#^&4  | The NPI field must be alphanumeric.                            |

  Scenario Outline: <Description>
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "<CCN>" in "CCN" on create organization page
    And I provide unique "<EIN>" in "EIN" on create organization page
    And I provide unique "<NPI>" in "NPI" on create organization page
    And I verify "Location 1" on "Create Hospital" organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I enter location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I enter region <Loc_Region> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I enter market <Loc_Market> for Location "1" on "create" organization page
    And I enter state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create ACH" organization page
    Then I click on "+" button on "Hospital" organization page
    And I verify "Location 2" on "Create Hospital" organization page
    And I enter location name <Loc_Name> for Location "2" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "create" organization page
    And I enter location type <Loc_Type> for Location "2" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "create" organization page
    And I enter region <Loc_Region> for Location "2" on "create" organization page
    And I enter city <Loc_City> for Location "2" on "create" organization page
    And I enter market <Loc_Market> for Location "2" on "create" organization page
    And I enter state <Loc_State> for Location "2" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create ACH" organization page

    Examples: 
      | Description                                                      | Has_MO | Hosp_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                              |
      | Create Hospital Organization with multiple location - Without MO | false  | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Success! Hospital Organization Successfully Created. |

  Scenario Outline: <Description>
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "<CCN>" in "CCN" on create organization page
    And I provide unique "<EIN>" in "EIN" on create organization page
    And I provide unique "<NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I enter location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I enter region <Loc_Region> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I enter market <Loc_Market> for Location "1" on "create" organization page
    And I enter state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create ACH" organization page

    Examples: 
      | Description                                                                                                             | Has_MO | Hosp_Name     | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                                                                                 |
      | Create Hospital Organization with all the available fields - Without MO                                                 | NO     | ACHNAME       | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields - Without MO                                                         | NO     | ACHNAME       | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN |     |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + ShortName - Without MO                                             | NO     | ACHNAME       | Address1 | Short_Name |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN |     |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + Address2 - Without MO                                              | NO     | ACHNAME       | Address1 |            | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + Location Type - Without MO                                         | NO     | ACHNAME       | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            |              | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + Location Address2 - Without MO                                     | NO     | ACHNAME       | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + Location Region - With MO                                          | YES    | ACHNAME       | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           | Midwest    |            |              | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + ShortName + Location Type - With MO                                | YES    | ACHNAME       | Address1 | Short_Name |          | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            |              | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + ShortName + Address2 + Location Type - With MO                     | YES    | ACHNAME       | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + ShortName + Address2 + Location Region + Location Market - With MO | YES    | ACHNAME       | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 |           | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields + Address2 + Location Type + Location Address2 - Without MO          | NO     | ACHNAME       | Address1 |            | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            | oc_Address2  | Loc_City | California |           10000 | CCN | EIN |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Hospital Organization with Mandatory fields - With MO                                                            | YES    | ACHNAME       | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN |     |     | Success! Hospital Organization Successfully Created.                                                    |
      | Create Duplicate Hospital Organization with Mandatory fields - Without MO                                               | NO     | DUPLICATE_ACH | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN |     |     | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Create Duplicate Hospital Organization with Mandatory fields - With MO                                                  | YES    | DUPLICATE_ACH | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | CCN |     |     | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Create Hospital Organization with all the available fields - With MO                                                    | YES    | ACHNAME       | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Success! Hospital Organization Successfully Created.                                                    |

  Scenario Outline: Identifiers - <Description>
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I provide unique "<CCN>" in "CCN" on create organization page
    And I provide unique "<EIN>" in "EIN" on create organization page
    And I provide unique "<NPI>" in "NPI" on create organization page
    And I switch the focus to "submit" button
    And I verify "<Message>" field validation message on create organization page
    And I verify "<Message1>" field validation message on create organization page

    Examples: 
      | Description                                                              | CCN           | EIN           | NPI           | Message                            | Message1                           |
      | Verify Validation Message of Hospital Organization with same CCN and EIN |    1234567890 |    1234567890 |               | The CCN and ein must be different. | The EIN and ccn must be different. |
      | Verify Validation Message of Hospital Organization with same CCN and NPI |    1234567890 |               |    1234567890 | The CCN and npi must be different. | The NPI and ccn must be different. |
      | Verify Validation Message of Hospital Organization with same EIN and NPI |               |    1234567890 |    1234567890 | The EIN and npi must be different. | The NPI and ein must be different. |
      | Verify Validation of Hospital Organization with duplicate CCN            | DUPLICATE_CCN |               |               | CCN Id already taken               |                                    |
      | Verify Validation of Hospital Organization with duplicate EIN            |               | DUPLICATE_EIN |               | EIN Id already taken               |                                    |
      | Verify Validation of Hospital Organization with duplicate NPI            |               |               | DUPLICATE_NPI | NPI Id already taken               |                                    |

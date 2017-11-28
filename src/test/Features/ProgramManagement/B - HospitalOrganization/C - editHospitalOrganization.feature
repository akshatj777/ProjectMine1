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
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMessage>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                     | Has_MO | Hosp_Name | Edited_Hospital_Name | Address1 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State  | Loc_Postal_Code | ValidationMessage                 |
      | Check validation for blank ACH name             | NO     | ACHNAME   |                      | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Organization Name |
      | Check validation for blank Address1             | NO     | ACHNAME   | ACHNAME              |          | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank City                 | NO     | ACHNAME   | ACHNAME              | Address1 |      | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a City               |
      | Check validation for blank State                | NO     | ACHNAME   | ACHNAME              | Address1 | City |            |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please select a State             |
      | Check validation for blank Postal code          | NO     | ACHNAME   | ACHNAME              | Address1 | City | California |             | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a Zip Code           |
      | Check validation for blank Location name        | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |       10000 |          | LAddress1    | LCity    | California |           10001 | Please enter a Location Name      |
      | Check validation for blank Location Address1    | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |       10000 | LocName  |              | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank Location City        | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |       10000 | LocName  | LAddress1    |          | California |           10001 | Please enter a City               |
      | Check validation for blank Location State       | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    |            |           10001 | Please select a State             |
      | Check validation for blank Location Postal code | YES    | ACHNAME   | ACHNAME              | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |                 | Please enter a Zip Code           |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short Name>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "address2" field to <Loc_Address2> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on edit organization page

    Examples: 
      | Description                                                                                | Has_MO | Hosp_Name | Edited_Hospital_Name                                                         | Address1                                       | Short_Name                                     | Address2                                       | City                                           | Postal_Code | Loc_Name                                       | Loc_Address1                                   | Loc_Address2                                   | Loc_City                                       | Loc_Postal_Code | ValidationMessage                                              |
      | Check Character Limit for ACH name field on Edit Hospital Organization page                | NO     | ACHNAME   | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field on Edit Hospital Organization page                | NO     | ACHNAME   |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for Short Name field on Edit Hospital Organization page              | NO     | ACHNAME   |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |             |                                                |                                                |                                                |                                                |                 | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field on Edit Hospital Organization page                | NO     | ACHNAME   |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |             |                                                |                                                |                                                |                                                |                 | The second address line may not be greater than 45 characters. |
      | Check Character Limit for City field on Edit Hospital Organization page                    | NO     | ACHNAME   |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             |                                                |                                                |                                                |                                                |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field on Edit Hospital Organization page             | YES    | ACHNAME   |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 |                                                |                                                |                                                |                                                |                 | Please enter a valid Zip Code                                  |
      | Check Character Limit for Location name field on Edit Hospital Organization page           | YES    | ACHNAME   |                                                                              |                                                |                                                |                                                |                                                |             | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |                 | The locationName may not be greater than 45 characters.        |
      | Check Character Limit for Location Address1 field on Edit Hospital Organization page       | YES    | ACHNAME   |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |             |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                 | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for Location Address2 field on Edit Hospital Organization page       | YES    | ACHNAME   |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |             |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                 | The second address line may not be greater than 45 characters. |
      | Check Character Limit for Location City field on Edit Hospital Organization page           | YES    | ACHNAME   |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                 | The City may not be greater than 45 characters.                |
      | Check Character Limit for Location Postal code field on Edit Hospital Organization page    | NO     | ACHNAME   |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 |                                                |                                                |                                                |                                                | 10000-00000     | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Postal code field on Edit Hospital Organization page          | NO     | ACHNAME   |                                                                              |                                                |                                                |                                                |                                                | abcdefghij  |                                                |                                                |                                                |                                                | 10000-00000     | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Location Postal code field on Edit Hospital Organization page | NO     | ACHNAME   |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 |                                                |                                                |                                                |                                                | abcdefghij      | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short Name>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <Loc_Type> for Location "1" for organization
    And I edit "address2" field to <Loc_Address1> for Location "1" for organization
    And I edit Region dropdown field to <Loc_Region> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit Market dropdown field to <Loc_Market> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit ACH - <Has_MO>" organization page

    Examples: 
      | Description                                                                                                           | Has_MO | Hosp_Name | Edited_Hospital_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | Message                                              |
      | Edit Hospital Organization with Mandatory fields - Without MO                                                         | NO     | ACHNAME   | ACHNAME              | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + ShortName - Without MO                                             | NO     | ACHNAME   | ACHNAME              | Address1 | Short_Name |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + Address2 - Without MO                                              | NO     | ACHNAME   | ACHNAME              | Address1 |            | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + Location Type - Without MO                                         | NO     | ACHNAME   | ACHNAME              | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + Location Address2 - Without MO                                     | NO     | ACHNAME   | ACHNAME              | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + Location Region - With MO                                          | YES    | ACHNAME   | ACHNAME              | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           | Midwest    |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + ShortName + Location Type - With MO                                | YES    | ACHNAME   | ACHNAME              | Address1 | Short_Name |          | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + ShortName + Address2 + Location Type - With MO                     | YES    | ACHNAME   | ACHNAME              | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + ShortName + Address2 + Location Region + Location Market - With MO | YES    | ACHNAME   | ACHNAME              | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 |           | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields + Address2 + Location Type + Location Address2 - Without MO          | NO     | ACHNAME   | ACHNAME              | Address1 |            | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient |            |            | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with Mandatory fields - With MO                                                            | YES    | ACHNAME   | ACHNAME              | Address1 |            |          | City | California |       10000 | Loc_Name | Loc_Address1 |           |            |            |              | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with all the available fields - Without MO                                                 | NO     | ACHNAME   | ACHNAME              | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |
      | Edit Hospital Organization with all the available fields - With MO                                                    | YES    | ACHNAME   | ACHNAME              | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |

  Scenario Outline: Edit a Hospital Organization With Mandatory Fields Missing
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "Location Address1" field to <Loc_Address1> for Location "1" for organization
    And I edit "Location City" field to <Loc_City> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "Location Postal_code" field to <Loc_Postal_Code> for Location "1" for organization
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
      | Description                                                | Has_MO | Hosp_Name | Edited_Hospital_Name | Address1 | City | State | Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State | Loc_Postal_Code |
      | Edit a Hospital Organization With Mandatory Fields Missing | NO     | ACHNAME   |                      |          |      |       |             |          |              |          |           |                 |

  Scenario Outline: Verification of Cancel Button Functionality on edit a Managing Organization page
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I click on "Cancel" button on "Edit" organization page
    Then User navigated to "Hospital" view page
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization

    Examples: 
      | Description                                 | Has_MO | Hosp_Name | Address1 | City |
      | Verification of cancel button functionality | YES    | ACHNAME   | Address1 | City |

  Scenario Outline: Edit a Hospital Organization with duplicate Location details
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I verify "1" location count on view "Hospital" organization page
    And I click on "Edit" button on particular organization
    And I edit "Location Name" field to <Loc_Name> for Location "1" for organization
    And I edit "address1" field to <Loc_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <Loc_Type> for Location "1" for organization
    And I edit "address2" field to <Loc_Address1> for Location "1" for organization
    And I edit Region dropdown field to <Loc_Region> for Location "1" for organization
    And I edit "city" field to <Loc_City> for Location "1" for organization
    And I edit Market dropdown field to <Loc_Market> for Location "1" for organization
    And I edit State dropdown field to <Loc_State> for Location "1" for organization
    And I edit "postalCode" field to <Loc_Postal_Code> for Location "1" for organization
    Then I click on "+" button on "Edit Hospital" organization page
    Then I verify "Location 2" on "Edit" organization page
    And I enter location name <Loc_Name> for Location "2" on "Edit" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "Edit" organization page
    And I select location type <Loc_Type> for Location "2" on "Edit" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "Edit" organization page
    And I select region <Loc_Region> for Location "2" on "Edit" organization page
    And I enter city <Loc_City> for Location "2" on "Edit" organization page
    And I select market <Loc_Market> for Location "2" on "Edit" organization page
    And I select state <Loc_State> for Location "2" on "Edit" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "Edit" organization page
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit MO" organization page
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I verify "1" location count on view "Hospital" organization page

    Examples: 
      | Description                                                  | Has_MO | Hosp_Name | Edited_Hospital_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | Message                                              |
      | Edit a Hospital Organization with duplicate Location details | NO     | ACHNAME   | ACHNAME              | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | Success! Hospital Organization Successfully Updated. |

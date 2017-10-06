Feature: Functionality tests for HHA organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "HHA" organization tab on organization dashboard
    And I verify header name "CCN" for "HHA" organization
    And I verify header name "HHA Organization Name" for "HHA" organization
    And I verify header name "City" for "HHA" organization
    And I verify header name "State" for "HHA" organization
    And I verify header name "Postal Code" for "HHA" organization

  #
  #Scenario: Verification Mandatory and Optional fields available on Create HHA Organization
  #Then I click on create new Organization button on Program Management homepage
  #And I verify "Create HHA Organization" header text on create organization page
  #And I verify "*HHA Organization Name" field on create organization page
  #And I verify "Short Name" field on create organization page
  #And I verify "*Address 1" field on create organization page
  #And I verify "Address 2" field on create organization page
  #And I verify "*City" field on create organization page
  #And I verify "*State" drop down field on create organization page
  #And I verify "*Postal Code" field on create organization page
  #And I verify "CCN" field on create organization page
  #And I verify "EIN" field on create organization page
  #And I verify "NPI" field on create organization page
  #Then I click on "Submit" button on create organization page
  #And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
  #And I verify "Please enter an Address" mandatory field validation message on create organization page
  #And I verify "Please enter a City" mandatory field validation message on create organization page
  #And I verify "Please select a State" mandatory field validation message on create organization page
  #And I verify "Please enter a Zip Code" mandatory field validation message on create organization page
  #And I verify "The CCN field is required when npi, ein are empty." mandatory field validation message on create organization page
  #And I verify "The EIN field is required when npi, ccn are empty." mandatory field validation message on create organization page
  #And I verify "The NPI field is required when ccn, ein are empty." mandatory field validation message on create organization page
  #
  #Scenario Outline: Create a HHA organization with valid data without MO
    #(Manadatory + Non-manadatory fields)
#
    #Then I click on create new Organization button on Program Management homepage
    #And I verify "Create HHA Organization" header text on create organization page
    #And I select "No Management Organization" radio button for managing organization
    #And I enter <HHA_Org_Name> in "HHA Organization Name" on create organization page
    #And I enter <Address1> in "Address 1" on create organization page
    #And I enter <Short_Name> in "Short Name" on create organization page
    #And I enter <Address2> in "Address 2" on create organization page
    #And I enter <City> in "City" on create organization page
    #And I select <State> in State on create organization page
    #And I enter <Postal_Code> in "Postal Code" on create organization page
    #And I provide unique CCN in "CCN" on create organization page
    #And I provide unique EIN in "EIN" on create organization page
    #And I provide unique NPI in "NPI" on create organization page
    #Then I click on "Submit" button on create organization page
    #Then I verify "Success! HHA Organization Successfully Created." after submitting the create ogranization page
    #Then I search with <HHA_Org_Name> on organization in search box
    #And I click <HHA_Org_Name> field in search list on organization page
    #And I verify <Address1> in "address1" on view profile of "HHA" Organization
    #And I verify <City> in "city" on view profile of "HHA" Organization
    #And I verify <StateVerification> in "state" on view profile of "HHA" Organization
    #And I verify <Postal_Code> in "zip" on view profile of "HHA" Organization
    #And I verify CCN <CCN> on view profile of "HHA" organization
    #And I verify EIN/TIN id <EIN/TIN> on view profile of "HHA" organization
    #And I verify NIP number <NPI> on view profile of "HHA" organization
#
    #Examples: 
      #| MO_Name | HHA_Org_Name | Address1 | Short_Name | Address2  | City | State      | Postal_Code | Loc_Name | LAddress1 | Loc_Type  | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code | CCN | EIN | NPI | StateVerification |
      #| MONAME  | HHA          | Address1 | Short      | Addresss2 | City | California |       10000 | LocName  | LAddress1 | Swing bed | LAddress2 | West    | LCity | Oil States | New York |        10000 | CCN | EIN | NPI | CA                |
#
  #Scenario Outline: Edit HHA organization without MO
    #Then I search with <HHA_Org_Name> on organization in search box
    #And I click <HHA_Org_Name> field in search list on organization page
    #And I click on "Edit" button on particular organization
    #And I edit "HHA Organization Name" field to <HHA_Name1> for organization
    #And I edit "Address 1" field to <Address1> for organization
    #And I edit "Address 2" field to <Address2> for organization
    #And I edit "City" field to <City> for organization
    #And I edit <State> field for organization
    #And I edit "Postal Code" field to <Postal_Code> for organization
    #And I provide unique CCN in "CCN" on create organization page
    #And I provide unique EIN in "EIN" on create organization page
    #And I provide unique NPI in "NPI" on create organization page
    #Then I click on "Submit" button on create organization page
    #Then I search with <HHA_Name1> on organization in search box
    #And I click <HHA_Name1> field in search list on organization page
    #And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    #And I verify <City> in "city" on view profile of "Hospital" Organization
    #And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    #And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    #And I verify CCN <CCN> on view profile of "Hospital" organization
    #And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    #And I verify NIP number <NPI> on view profile of "Hospital" organization
#
    #Examples: 
      #| HHA_Org_Name | HHA_Name1 | Address1       | Short_Name | Address2       | City       | State   | Postal_Code | CCN | EIN | NPI | StateVerification |
      #| HHA          | HHA       | EditedAddress1 | ShortName  | EditedAddress2 | EditedCity | Arizona |       10001 | CCN | EIN | NPI | AZ                |

  Scenario Outline: Create a HHA organization with valid data with MO
    (Manadatory + Non-manadatory fields)

    Then I click on create new Organization button on Program Management homepage
    And I verify "Create HHA Organization" header text on create organization page
    And I select "Has a Management Organization" radio button for managing organization
    Then I select <MO_Name> managing organization name in Has a Management Organization drop down
    And I enter <HHA_Org_Name> in "HHA Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique CCN in "CCN" on create organization page
    And I provide unique EIN in "EIN" on create organization page
    And I provide unique NPI in "NPI" on create organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! HHA Organization Successfully Created." after submitting the create ogranization page
    Then I search with <HHA_Org_Name> on organization in search box
    And I click <HHA_Org_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "HHA" Organization
    And I verify <City> in "city" on view profile of "HHA" Organization
    And I verify <StateVerification> in "state" on view profile of "HHA" Organization
    And I verify <Postal_Code> in "zip" on view profile of "HHA" Organization
    And I verify CCN <CCN> on view profile of "HHA" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "HHA" organization
    And I verify NIP number <NPI> on view profile of "HHA" organization

    Examples: 
      | MO_Name | HHA_Org_Name | Address1 | Short_Name | Address2  | City | State      | Postal_Code | Loc_Name | LAddress1 | Loc_Type  | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code | CCN | EIN | NPI | StateVerification |
      | MONAME  | HHA          | Address1 | Short      | Addresss2 | City | California |       10000 | LocName  | LAddress1 | Swing bed | LAddress2 | West    | LCity | Oil States | New York |        10000 | CCN | EIN | NPI | CA                |

  Scenario Outline: Edit HHA organization with MO
    Then I search with <HHA_Org_Name> on organization in search box
    And I click <HHA_Org_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "HHA Organization Name" field to <HHA_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I provide unique CCN in "CCN" on create organization page
    And I provide unique EIN in "EIN" on create organization page
    And I provide unique NPI in "NPI" on create organization page
    Then I click on "Submit" button on create organization page
    Then I search with <HHA_Name1> on organization in search box
    And I click <HHA_Name1> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN <CCN> on view profile of "Hospital" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    And I verify NIP number <NPI> on view profile of "Hospital" organization

    Examples: 
      | HHA_Org_Name | HHA_Name1 | Address1       | Short_Name | Address2       | City       | State   | Postal_Code | CCN | EIN | NPI | StateVerification |
      | HHA          | HHA       | EditedAddress1 | ShortName  | EditedAddress2 | EditedCity | Arizona |       10001 | CCN | EIN | NPI | AZ                |
  
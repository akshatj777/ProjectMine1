Feature: Cover the basic smoke test for create one org, edit one og and view one org

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario: User verifies home page elements and default org tab selected.
    And I verify "Managing" as default organizations tab selected on homepage
    And I verify "Hospital" in organization type on homepage
    And I verify "PGP" in organization type on homepage
    And I verify "Payor" in organization type on homepage
    And I verify "SNF" in organization type on homepage


  Scenario Outline: Create Managing Organization with all the available fields
    When I click on create new Organization button on Program Management homepage
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
    
    Examples: 
      | MO_Name    | Contact_Person | Contact_Email                | Contact_Phone | Address1  | Address2 | City | State      | Postal_Code |
      | MOAutoName | AutoCPerson    | autocontactemail@yopmail.com |    1213141516 | Street XX | Block XX | City | California |       10000 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of PGP organization
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <PGP_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "PGP Organization Name" field to <PGP_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Short Name" field to <Short_Name> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I enter <Region> in Region on "edit" organization page
    And I edit "City" field to <City> for organization
    And I enter <Market> in Market on "edit" organization page
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | PGP_Name                   | PGP_Name1       | Short_Name | Address1 | Address2 | Region  | City     | Market  | State    | Postal_Code | EIN    | NPI    |
      | Automate Edit PGP Org Name | AutoTestNamePGP | Auto PGP   | Block Z  | Road X   | Midwest | New Town | Chicago | Nebraska |       10065 | 123852 | 852741 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of PGP organization to its previous state
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Name1> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <PGP_Name1> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "PGP Organization Name" field to <PGP_Name> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Short Name" field to <Short_Name> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | PGP_Name1       | PGP_Name                   | Short_Name   | Address1       | Address2      | Region  | City      | Market  | State   | Postal_Code | EIN     | NPI     |
      | AutoTestNamePGP | Automate Edit PGP Org Name | Automate PGP | Auto Street AB | Auto Block AB | Midwest | Auto City | Chicago | Florida |       11002 | 1518191 | 1518196 |

  @Smoke
  Scenario Outline: Verify view profile details of Hospital Organization
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with <Hosp_Name> on organization in search box
    And I click <Hosp_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <State> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN <CCN> on view profile of "Hospital" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    And I verify NIP number <NPI> on view profile of "Hospital" organization
    And I verify Region name <Region> on view profile of "Hospital" organization
    And I verify Market name <Market> on view profile of "Hospital" organization
    And I verify Managing Organization name <MO_Name> on view profile of "Hospital" organization
    And I verify Participant Id <Participant_Id> on view profile of "Hospital" Organization
    And I verify header name "ID" under "Location" for "Hospital" organization
    And I verify header name "Location Name" under "Location" for "Hospital" organization
    And I verify header name "Address" under "Location" for "Hospital" organization
    And I verify header name "Type" under "Location" for "Hospital" organization
    And I verify header name "Region" under "Location" for "Hospital" organization
    And I verify header name "Market" under "Location" for "Hospital" organization

    Examples: 
      | Hosp_Name             | Address1  | Address2 | City  | State | Postal_Code | CCN      | EIN/TIN  | NPI      | Region    | Market  | MO_Name            | Participant_Id |
      | Automate Hospital Org | ABC Block | X Street | New A | CT    |       50002 | 10121314 | 10111213 | 10121213 | SouthEast | Florida | Automate Manag Org |             26 |

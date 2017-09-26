Feature: User completes inputting PGP Organization details during creation,
         submit the information for validation and creation

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Create a PGP organization with valid data (With Managing Organization)
                    (Manadatory + Non-manadatory fields)

    When I click on "PGP" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I select "Has a Management Organization" radio button for managing organization
    Then I select <MO_Name> managing organization name in Has a Management Organization drop down
    And I enter <PGP_Org_Name> in "PGP Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Region> in Region on "create" organization page
    And I enter <City> in "City" on create organization page
    And I enter <Market> in Market on "create" organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique EIN in "EIN" on create organization page
    And I provide unique NPI in "NPI" on create organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! PGP Organization Successfully Created." after submitting the create ogranization page
    Then I search with <PGP_Org_Name> on organization in search box
    #And I see "1 Organization" search count on organization
    And I click <PGP_Org_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "PGP" Organization
    And I verify <Address2> in "address2" on view profile of "PGP" Organization
    And I verify <City> in "city" on view profile of "PGP" Organization
    And I verify <State_verification> in "state" on view profile of "PGP" Organization
    And I verify <Postal_Code> in "zip" on view profile of "PGP" Organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "PGP" organization
    And I verify NIP number <NPI> on view profile of "PGP" organization
    And I verify Managing Organization name <MO_Name> on view profile of "PGP" organization
    And I verify Participant Id <ParticipantId> on view profile of "PGP" Organization

    Examples: 
      | MO_Name               | PGP_Org_Name | Short_Name | Region | Market     | Address1  | Address2   | City | State    | Postal_Code | State_verification |
      | 26 Automate Manag Org | PGP          | ShrtName  | West   | Oil States | Floor 9th | Building E | Test | New York |       10000 | NY                 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of PGP organization
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Org_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <PGP_Org_Name> field in search list on organization page
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
      | Region  | PGP_Org_Name | PGP_Name1 | Address1 | Short_Name | Address2 | Region  | City     | Market  | State    | Postal_Code | EIN    | NPI    |
      | Midwest | PGP          | PGPtest   | Block Z  | NameTPGP   | Road X   | Midwest | New Town | Chicago | Nebraska |       10065 | 123852 | 852741 |

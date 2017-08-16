Feature: User edit details of existing Payor organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Edit and save changes for all fields of Managing Organization
    Then I search with <Payor_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <Payor_Name> field in search list on organization page
    And I click <Payor_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Payor Organization Name" field to <Payor_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | Payor_Name    | Payor_Name1  | Address1   | Contact_Person | Address2    | Contact_Email         | City       | Contact_Phone | State  | Postal_Code | EIN        |
      | Test Payorone | PayoroneTest | OneAddress | OneCPerson     | OneAddressA | Onecemail@yopmail.com | New Castle |    1237894560 | Nevada |       40045 | 7894561230 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of Managing Organization
    Then I search with <Payor_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <Payor_Name> field in search list on organization page
    And I click <Payor_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Payor Organization Name" field to <Payor_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | Payor_Name   | Payor_Name1   | Address1   | Contact_Person | Address2 | Contact_Email      | City   | Contact_Phone | State    | Postal_Code | EIN        |
      | PayoroneTest | Test Payorone | Addressone | cpersonone     | AddressA | cemail@yopmail.com | Albany |    1234567890 | New York |       45006 | 7845128754 |

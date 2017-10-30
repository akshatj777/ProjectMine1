Feature: Edit the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

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
    Then I verify <ValidateMsg> after submitting the create ogranization page

    Examples: 
      | MO_Name             | MO_Name1   | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | ValidateMsg                                            |
      | Automate Manag Orgg | MONAME1230 | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | Success! Management Organization Successfully Updated. |
      | MONAME1230          | MONAME1234 | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |      100010 | Please enter a valid Zip Code                          |
     
   Scenario Outline: Edit, remove non-mandatory fields and save changes
    When I click on Organization link on Program Management page
    Then I search with <MO_Name> on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I fetch Participant Id assigned to the organization
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <MO_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on create organization page
    Then I verify <ValidateMsg> after submitting the create ogranization page

    Examples: 
      | MO_Name             | MO_Name1   | Address1       | City       | State    | Postal_Code | ValidateMsg                                            |
      | Automate Manag Orgg | MONAME1230 | EditedAddress1 | EditedCity | New York |       10001 | Success! Management Organization Successfully Updated. |
    

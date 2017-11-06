Feature: Edit the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: Create a Manging organization with all fields i.e. mandatory as well as non-mandatory fields
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

    Examples: 
      | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code |
      | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 |

  Scenario Outline: Edit and save changes for all fields of Managing Organization
    When I click on Organization link on Program Management page
    Then I search with <MO_Name> on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
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
      | MO_Name | MO_Name1 | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | ValidateMsg                                            |
      | MONAME  | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | Success! Management Organization Successfully Updated. |

  Scenario Outline: Edit a Managing Organization Cancel Button Functionality
    When I click on Organization link on Program Management page
    Then I search with <MO_Name> on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I click on cancel button on create organization page
    Then User navigated to view page
    And I verify <Contact_Email> name on the header of view profile

    Examples: 
      | MO_Name | MO_Name1 | Contact_Person    | Contact_Email            | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code |
      | MONAME  | MONAME   | ContactPersonTest | SampleEdited@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 |

  Scenario Outline: Edit managing Organization With Invalid Data (Contact Phone, Contact Email, Postal Code) and missing all manadatory field
    When I click on Organization link on Program Management page
    Then I search with <MO_Name> on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <MO_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I click on State Clear cross button
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on create organization page
    And I verify "<ValidationOrgName>" mandatory field validation message on create organization page
    And I verify "<ValidationAddress>" mandatory field validation message on create organization page
    And I verify "<ValidationState>" mandatory field validation message on create organization page
    And I verify "<ValidationContactEmail>" mandatory field validation message on create organization page
    And I verify "<ValidationCity>" mandatory field validation message on create organization page
    And I verify "<ValidationContactPhone>" mandatory field validation message on create organization page
    And I verify "<ValidationZipCode>" mandatory field validation message on create organization page

    Examples: 
      | MO_Name | MO_Name1 | Contact_Person    | Contact_Email            | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | ValidationOrgName                 | ValidationAddress       | ValidationContactPerson | ValidationAddress2 | ValidationContactEmail               | ValidationCity      | ValidationContactPhone               | ValidationState       | ValidationZipCode             |
      | MONAME  |          | ContactPersonTest | Sample11@yopmail.com     |    5555599999 |                | EditedAddress2 |            |          |             | Please enter an Organization Name | Please enter an Address |                         |                    |                                      | Please enter a City |                                      | Please select a State | Please enter a Zip Code       |
      | MONAME  | MONAME   | ContactPersonTest | @$%%6%^7$^&%@yopmail.com |   98745612301 | EditedAddress1 | EditedAddress2 | EditedCity | New York | abcdefg     |                                   |                         |                         |                    | The Contact Email format is invalid. |                     | The Contact Phone format is invalid. |                       | Please enter a valid Zip Code |

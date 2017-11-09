Feature: Edit the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: Edit a managing organization with all available fileds
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
      | Description                                            | MO_Name | MO_Name1 | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | ValidateMsg                                            |
      | Edit a Managing Organization With all available fields | MONAME  | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | Success! Management Organization Successfully Updated. |

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
      | Description                                               | MO_Name | MO_Name1 | Contact_Person    | Contact_Email            | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | ValidationOrgName                 | ValidationAddress       | ValidationContactEmail               | ValidationCity      | ValidationContactPhone               | ValidationState       | ValidationZipCode             |
      | Edit a Managing Organization With Mandatory Field Missing | MONAME  |          | ContactPersonTest | Sample11@yopmail.com     |    5555599999 |                | EditedAddress2 |            |          |             | Please enter an Organization Name | Please enter an Address |                                      | Please enter a City |                                      | Please select a State | Please enter a Zip Code       |
      | Edit a Managing Organization With Invalida Data           | MONAME  | MONAME   | ContactPersonTest | @$%%6%^7$^&%@yopmail.com |   98745612301 | EditedAddress1 | EditedAddress2 | EditedCity | New York | abcdefg     |                                   |                         | The Contact Email format is invalid. |                     | The Contact Phone format is invalid. |                       | Please enter a valid Zip Code |

  Scenario Outline: Verification of Cancel Button Functionality on edit a Managing Organization page
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
      | Description                              | MO_Name | Contact_Email            |
      | Verification of cancel button functionality | MONAME  | SampleEdited@yopmail.com |

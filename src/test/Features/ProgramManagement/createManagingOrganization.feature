Feature: Create a Managing Organization, verify the details fields
  and Verifying successfull creation message

  Background: 
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario: Verification Mandatory and Optional fields available on Create Managing Organization
  When I click on Organization link on Program Management page
  Then I click on create new Organization button on Program Management homepage
  And I verify "Create Management Organization" header text on create organization page
  And I verify "*Managing Organization Name" field on create organization page
  And I verify "Contact Person" field on create organization page
  And I verify "Contact Email" field on create organization page
  And I verify "Contact Phone" field on create organization page
  And I verify "*Address 1" field on create organization page
  And I verify "Address 2" field on create organization page
  And I verify "*City" field on create organization page
  And I verify "*State" drop down field on create organization page
  And I verify "*Postal Code" field on create organization page
  Then I click on "Submit" button on create organization page
  And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
  And I verify "Please enter an Address" mandatory field validation message on create organization page
  And I verify "Please enter a City" mandatory field validation message on create organization page
  And I verify "Please select a State" mandatory field validation message on create organization page
  And I verify "Please enter a Zip Code" mandatory field validation message on create organization page
  
  Scenario Outline: Create Managing Organization with mandatory fields
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
    And I search <MO_Name> managing organization in search box

    Examples: 
      | MO_Name | Address1 | City | State      | Postal_Code |
      | MO_Name | Address  | ABCd | California |       10000 |

  Scenario Outline: Create Managing Organization with all the available fields
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
      | MO_Name | Contact_Person | Contact_Email | Contact_Phone | Address1 | Address2 | City | State | Postal_Code |
      | MO_Name | Contact_Person | Contact_Email | Contact_Phone | Address1 | Address2 | City | California |       10000 |

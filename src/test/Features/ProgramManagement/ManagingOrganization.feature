Feature: Create a Managing Organization, verify the details fields
  and Verifying successfull creation message

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  #Scenario: Verification Mandatory and Optional fields available on Create Managing Organization
  #When I click on Organization link on Program Management page
  #Then I click on create new Organization button on Program Management homepage
  #And I verify "Create Management Organization" header text on create organization page
  #And I verify "*Managing Organization Name" field on create organization page
  #And I verify "Contact Person" field on create organization page
  #And I verify "Contact Email" field on create organization page
  #And I verify "Contact Phone" field on create organization page
  #And I verify "*Address 1" field on create organization page
  #And I verify "Address 2" field on create organization page
  #And I verify "*City" field on create organization page
  #And I verify "*State" drop down field on create organization page
  #And I verify "*Postal Code" field on create organization page
  #Then I click on "Submit" button on create organization page
  #And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
  #And I verify "Please enter an Address" mandatory field validation message on create organization page
  #And I verify "Please enter a City" mandatory field validation message on create organization page
  #And I verify "Please select a State" mandatory field validation message on create organization page
  #And I verify "Please enter a Zip Code" mandatory field validation message on create organization page
  #
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
      | MO_Name | Contact_Person | Contact_Email   | Contact_Phone | Address1 | Address2 | City | State      | Postal_Code |
      | MOName  | ContactPerson  | reddy@gmail.com |    9563569366 | Address1 | Address2 | City | California |       10000 |

  @Smoke
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
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I verify Participant Id <ParticipantId> on view profile of "Managing" Organization
    And I verify <Address1> in "address1" on view profile of "Managing" Organization
    And I verify <Address2> in "address2" on view profile of "Managing" Organization
    And I verify <City> in "city" on view profile of "Managing" Organization
    And I verify <StateInitials> in "state" on view profile of "Managing" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
    Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
    And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
    And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization

    Examples: 
      | MO_Name   | MO_Name1 | Contact_Person    | Contact_Email             | Contact_Phone | Address1  | Address2  | City | State      | Postal_Code | StateInitials |ParticipantId|
      | MONAME | MONAME   | ContactPersonTest | contact_email@yopmail.com |    4567891230 | 7th Floor | Street XI | Test | California |       10000 | CA           |123|

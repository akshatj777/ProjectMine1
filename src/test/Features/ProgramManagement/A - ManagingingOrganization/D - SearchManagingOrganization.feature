Feature: Search the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify the Search bar on "Managing" organization page
    Then I search "<SearchParam>" and verify with search list options on organization search box

    Examples: 
      | Description                                             | SearchParam |
      | Search Managing Organization with Postal Code           |       10001 |
      | Search Managing Organization with State                 | NY          |
      | Search Managing Organization with City                  | City        |
      | Search Managing Organization with Managing Organization | MONAME      |
      | Search Managing Organization with Paticipant ID         | PID         |
  
  Scenario Outline: Search for a managing organization after editing the Managing organization name
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify <MO_Name> field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <Edited_MO_Name> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on "create" organization page
    Then I verify "Success! Management Organization Successfully Updated." after submitting the "edit MO" organization page
    When I search with "<Edited_MO_Name>" on organization in search box
    And I click "<Edited_MO_Name>" field in search list on organization page
    And I verify "<Edited_MO_Name>" name on the header of view profile

    Examples: 
      | Description                                                                     | MO_Name | Edited_MO_Name | Contact_Person    | Contact_Email        | Contact_Phone | Address1       | Address2        | City       | State    | Postal_Code |
      | Search for a managing organization after editing the Managing organization name | MONAME  | MONAME         | ContactPersonTest | Sample11@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress12 | EditedCity | New York |       10001 |

  Scenario Outline: Verification of error message if an organization is not found in search box
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    Then I verify the No Matches message
    And I verify the Create New Managing Organization link

    Examples: 
      | Description                                                                 | MO_Name   |
      | Verification of error message if an organization is not found in search box | searchorg |

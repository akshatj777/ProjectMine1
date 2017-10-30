Feature: Search the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: Search Managing Organization
    When I click on Organization link on Program Management page
    Then I search and verify with search list options on organization search box
      | PostalCode     | <Postal_Code>   |
      | State          | <StateInitials> |
      | City           | <City>          |
      | MOName         | <MO_Name>       |
      | Participant_Id | <ParticipantId> |

    Examples: 
      | MO_Name | City | State    | Postal_Code | StateInitials | ParticipantId |
      | MONAME  | City | New York |       10001 | NY            | Sample        |

      
   Scenario Outline: Search after editing the Managing organization name
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
  | MO_Name | MO_Name1 | Contact_Person    | Contact_Email       | Contact_Phone | Address1       | Address2       | City       | State    | Postal_Code | StateInitials | ParticipantId |
  | MONAME  | MONAME   | ContactPersonTest | Sample1@yopmail.com |    5555599999 | EditedAddress1 | EditedAddress2 | EditedCity | New York |       10001 | NY            | Sample        |
 
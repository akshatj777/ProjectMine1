Feature: User completes entering Payor Organization details during creation process,
     	 submit the information for validation and creation

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Create a Payor organization with valid data
                    (Manadatory + Non-manadatory fields)

    When I click on "Payor" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Payor Organization" header text on create organization page
    And I enter <Payor_Org_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique EIN in "EIN" on create organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! Payor Organization Successfully Created." after submitting the create ogranization page
    #When I click on "Payor" organization tab on organization dashboard
    Then I search with <Payor_Org_Name> on organization in search box
    #And I see "1 Organization" search count on organization
    And I click <Payor_Org_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Payor" Organization
    And I verify <Address2> in "address2" on view profile of "Payor" Organization
    And I verify <City> in "city" on view profile of "Payor" Organization
    And I verify <State_verification> in "state" on view profile of "Payor" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Payor" Organization
    Then I verify <Contact_Person> in "contact-name" on view profile of "Payor" Organization
    And I verify <Contact_Phone> in "contact-phone" on view profile of "Payor" Organization
    And I verify <Contact_Email> in "contact-email" on view profile of "Payor" Organization

    Examples: 
      | Payor_Org_Name | Contact_Person    | Contact_Email                | Contact_Phone | Address1 | Address2  | City      | State    | Postal_Code | State_verification |
      | PAYOR          | TestContactPerson | contactemailtest@example.com |    9742569870 | Block C  | Street XV | New jersy | New York |       10045 | NY                 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of Payor Organization
    When I click on "Payor" organization tab on organization dashboard
    Then I search with <Payor_Org_Name> on organization in search box
    And I see "1 Organization" search count on organization
    # And I verify <Payor_Name> field in search list on organization page
    And I click <Payor_Org_Name> field in search list on organization page
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
    Then I search with <Payor_Name1> on organization in search box
    #And I see "1 Organization" search count on organization
    And I click <Payor_Name1> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Payor" Organization
    And I verify <Address2> in "address2" on view profile of "Payor" Organization
    And I verify <City> in "city" on view profile of "Payor" Organization
    And I verify <State_verification> in "state" on view profile of "Payor" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Payor" Organization
    Then I verify <Contact_Person> in "contact-name" on view profile of "Payor" Organization
    And I verify <Contact_Phone> in "contact-phone" on view profile of "Payor" Organization
    And I verify <Contact_Email> in "contact-email" on view profile of "Payor" Organization

    Examples: 
      | Payor_Org_Name | Payor_Name1 | Address1   | Contact_Person | Address2    | Contact_Email         | City       | Contact_Phone | State  | Postal_Code | EIN        | State_verification |
      | PAYOR          | PAYOR       | OneAddress | OneCPerson     | OneAddressA | Onecemail@yopmail.com | New Castle |    1237894560 | Nevada |       40045 | 7894561230 | NV                 |

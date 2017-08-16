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

  @Smoke
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
    And I enter <EIN> in "EIN" on create organization page

    #Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
    Examples: 
      | Payor_Org_Name | Contact_Person    | Contact_Email                | Contact_Phone | Address1 | Address2  | City      | State    | Postal_Code | EIN    |
      | OrgPayor       | TestContactPerson | contactemailtest@example.com |    1234569870 | Block C  | Street XV | New jersy | New York |       10045 | 155646 |

  @Smoke
  Scenario Outline: Create a Payor organization with valid data
                    (Only Mandatory fields)

    When I click on "Payor" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Payor Organization" header text on create organization page
    And I enter <Payor_Org_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    #Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page

    Examples: 
      | Payor_Org_Name | Address1 | City       | State    | Postal_Code |
      | PayorOrg       | BLock A  | New Castle | New York |       10045 |

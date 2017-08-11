Feature: User completes inputting PGP Organization details during creation,
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
  Scenario Outline: Submit PGP organization without error(when managing organization is added) and PGP organization is created
           Verify user is navigated to homepage - PGP org tab and success message

    When I click on "PGP" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I select "Has a Management Organization" radio button for managing organization
    Then I select <MO_Name> managing organization name in Has a Management Organization drop down
    And I enter <PGP_Org_Name> in "PGP Organization Name" on create PGP organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Region> in Region on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Market> in Market on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I enter <EIN> in "EIN" on create organization page
    And I enter <NPI> in "NPI" on create organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page

    Examples: 
      | MO_Name    | PGP_Org_Name | Short_Name | Region | Market     | Address1  | Address2   | City | State    | Postal_Code | EIN        | NPI        |
      | MONameTest | PGP1ORG      | Shrt1Name  | West   | Oil States | Floor 9th | Building E | Test | New York |       10000 | 1234567890 | 7894561230 |

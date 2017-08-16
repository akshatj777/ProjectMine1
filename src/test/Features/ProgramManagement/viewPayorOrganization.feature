Feature: verify the UI under Payor organization for profile page , edit page and after clicking on cross button

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Verify the UI of profile page of Payor organization
    When I click on "Payor" organization tab on organization dashboard
    Then I search with <Payor_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <Payor_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Payor" Organization
    And I verify <City> in "city" on view profile of "Payor" Organization
    And I verify <State> in "state" on view profile of "Payor" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Payor" Organization
    Then I verify <C_Name> in "contact-name" on view profile of "Payor" Organization
    And I verify <C_Phone> in "contact-phone" on view profile of "Payor" Organization
    And I verify <C_Email> in "contact-email" on view profile of "Payor" Organization

    Examples: 
      | Payor_Name    | Address1   | City   | State | Postal_Code | C_Name     | C_Phone | C_Email            |
      | Test Payorone | Addressone | Albany | NY    |       45006 | cpersonone | Cperson | cemail@yopmail.com |

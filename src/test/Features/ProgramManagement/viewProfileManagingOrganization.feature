Feature: User is able tto view a Managing Organization's Profile

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Verify view profile details of Managing Organization
    When I search with <MO_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I verify Participant Id <ParticipantId> on view profile of Managing Organization
    And I verify <Address1> in "address1" on view profile of Managing Organization
    And I verify <Address2> in "address2" on view profile of Managing Organization
    And I verify <City> in "city" on view profile of Managing Organization
    And I verify <State> in "sate" on view profile of Managing Organization
    And I verify <Postal_Code> in "zip" on view profile of Managing Organization
    Then I verify <C_Name> in "contact-name" on view profile of Managing Organization
    And I verify <C_Phone> in "contact-phone" on view profile of Managing Organization
    And I verify <C_Email> in "contact-email" on view profile of Managing Organization

    Examples: 
      | MO_Name    | C_Name       | C_Phone    | C_Email                  | ParticipantId | Address1  | Address2 | City      | State      | Postal_Code |
      | MONameTest | C_PersonTest | 7894561230 | c_persontest@yopmail.com |       4571271 | Address1, | Street2, | New York, | California |       10000 |

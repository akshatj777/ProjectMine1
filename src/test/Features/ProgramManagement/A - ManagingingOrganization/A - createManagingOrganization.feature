Feature: Create Managing organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario: Verification of availability of all the fields on Create Managing Organization page
    When I click on Organization link on Program Management page
    Then I verify "+" button under "Managing" organization page
    And I verify "Participant ID" header label under "Managing" organization
    And I verify "Managing Organization Name" header label under "Managing" organization
    And I verify "City" header label under "Managing" organization
    And I verify "State" header label under "Managing" organization
    And I verify "Postal Code" header label under "Managing" organization
    Then I click on "+" button on "Managing" organization page
    And I verify "Create Management Organization" header text on create organization page
    And I verify "*Managing Organization Name" field on create organization page
    And I verify "Contact Person" field on create organization page
    And I verify "Contact Email" field on create organization page
    And I verify "Contact Phone" field on create organization page
    And I verify "*Address 1" field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "*City" field on create organization page
    And I verify "*State" dropdown field on create organization page
    And I verify "*Postal Code" field on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify "+" button under "Manaing" organization page
    Then I click on "+" button on "Managing" organization page
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                            | MO_Name | Address1 | City | State      | Postal_Code | ValidationMsg                     |
      | Check validation for blank MO name     |         | Address1 | City | California |       10000 | Please enter an Organization Name |
      | Check validation for blank Address1    | MONAME  |          | City | California |       10000 | Please enter an Address           |
      | Check validation for blank City        | MONAME  | Address1 |      | California |       10000 | Please enter a City               |
      | Check validation for blank State       | MONAME  | Address1 | City |            |       10000 | Please select a State             |
      | Check validation for blank Postal code | MONAME  | Address1 | City | California |             | Please enter a Zip Code           |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify "+" button under "Manaing" organization page
    Then I click on "+" button on "Managing" organization page
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
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                     | MO_Name                                                                      | Address1                                       | Contact_Person                                 | Address2                                       | Contact_Email                                  | City                                           | Contact_Phone | State | Postal_Code | ValidationMessage                                              |
      | Check Character Limit for MoName field          | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |                                                |               |       |             | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field        |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |                                                |               |       |             | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for ContactPerson field   |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |               |       |             | The Contact Person may not be greater than 45 characters.      |
      | Check Character Limit for Address2 field        |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |               |       |             | The second address line may not be greater than 45 characters. |
      | Check Character Limit for ContactEmail field    |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com |                                                |               |       |             | The Contact Email may not be greater than 45 characters.       |
      | Check Character Limit for City field            |                                                                              |                                                |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |               |       |             | The City may not be greater than 45 characters.                |
      | Check Character Limit for ContactPhone field    |                                                                              |                                                |                                                |                                                |                                                |                                                |   98745612301 |       |             | The Contact Phone format is invalid.                           |
      | Check Character Limit for Postal code field     |                                                                              |                                                |                                                |                                                |                                                |                                                |               |       | 10000-00000 | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for ContactEmail field |                                                                              |                                                |                                                |                                                | @$%%6%^7$^&%@yopmail.com                       |                                                |               |       |             | The Contact Email format is invalid.                           |
      | Check Allowed Characters for ContactPhone field |                                                                              |                                                |                                                |                                                |                                                |                                                |   98745612301 |       |             | The Contact Phone format is invalid.                           |
      | Check Allowed Characters for PostalCode field   |                                                                              |                                                |                                                |                                                |                                                |                                                |               |       | abcdefgh    | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify "+" button under "Managing" organization page
    Then I click on "+" button on "Managing" organization page
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
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create MO" organization page

    Examples: 
      | Description                                                                                    | MO_Name      | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | Message                                                                                                 |
      | Create Managing Organization with Mandatory fields                                             | MONAME       |                   |                    |               | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + Address2                                  | MONAME       |                   |                    |               | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactName                               | MONAME       | ContactPersonTest |                    |               | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactEmail                              | MONAME       |                   | Sample@yopmail.com |               | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactPhone                              | MONAME       |                   |                    |    5555599999 | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + Address2 + ContactName                    | MONAME       | ContactPersonTest |                    |               | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + Address2 +  ContactEmail                  | MONAME       |                   | Sample@yopmail.com |               | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields  + Address2 + ContactPhone                  | MONAME       |                   |                    |    5555599999 | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + Address2 + ContactName + ContactEmail     | MONAME       | ContactPersonTest | Sample@yopmail.com |               | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactEmail + ContactName + ContactPhone | MONAME       | ContactPersonTest | Sample@yopmail.com |               | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactEmail + ContactName                | MONAME       | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactEmail + ContactPhone               | MONAME       |                   | Sample@yopmail.com |               | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactPhone + ContactName                | MONAME       | ContactPersonTest |                    |    5555599999 | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with Mandatory fields + ContactPhone + ContactName + Address2     | MONAME       | ContactPersonTest |                    |    5555599999 | Address1 |          | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create Managing Organization with all available fields                                         | MONAME       | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | Success! Management Organization Successfully Created.                                                  |
      | Create using duplicate Managing Organization Name                                              | DUPLICATE_MO | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
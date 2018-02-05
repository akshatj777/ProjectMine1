Feature: Create Payor organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "Payor" organization tab on organization dashboard

  Scenario: Verification of availability of all the fields on Create Payor Organization page
    Then I verify "+" button under "Payor" organization page
    And I verify "Participant ID" header label under "Payor" organization
    And I verify "Payor Organization Name" header label under "Payor" organization
    And I verify "City" header label under "Payor" organization
    And I verify "State" header label under "Payor" organization
    And I verify "Postal Code" header label under "Payor" organization
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    And I verify "*Payor Organization Name" field on create organization page
    And I verify "Contact Person" field on create organization page
    And I verify "Contact Email" field on create organization page
    And I verify "Contact Phone" field on create organization page
    And I verify "*Address 1" field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "*City" field on create organization page
    And I verify "*State" dropdown field on create organization page
    And I verify "*Postal Code" field on create organization page
    And I verify "EIN" field on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

  Scenario Outline: <Description>
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    Then I enter <Payor_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                            | Payor_Name | Address1 | City | State      | Postal_Code | ValidationMsg                     |
      | Check validation for blank Payor name  |            | Address1 | City | California |       10000 | Please enter an Organization Name |
      | Check validation for blank Address1    | PAYORNAME  |          | City | California |       10000 | Please enter an Address           |
      | Check validation for blank City        | PAYORNAME  | Address1 |      | California |       10000 | Please enter a City               |
      | Check validation for blank State       | PAYORNAME  | Address1 | City |            |       10000 | Please select a State             |
      | Check validation for blank Postal code | PAYORNAME  | Address1 | City | California |             | Please enter a Zip Code           |

  Scenario Outline: <Description>
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    Then I enter <Payor_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "Payor - <EIN>" in "EIN" on create organization page
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                     | Payor_Name                                                                   | Address1                                                  | Contact_Person                                 | Address2                                                   | Contact_Email                                  | City                                           | Contact_Phone      | State | Postal_Code | EIN           | ValidationMessage                                              |
      | Check Character Limit for PayorName field       | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                           |                                                |                                                            |                                                |                                                |                    |       |             |               | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field        |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcdefghijk |                                                |                                                            |                                                |                                                |                    |       |             |               | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for ContactPerson field   |                                                                              |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                            |                                                |                                                |                    |       |             |               | The Contact Person may not be greater than 45 characters.      |
      | Check Character Limit for Address2 field        |                                                                              |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcdefghijkl |                                                |                                                |                    |       |             |               | The second address line may not be greater than 55 characters. |
      | Check Character Limit for ContactEmail field    |                                                                              |                                                           |                                                |                                                            | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com |                                                |                    |       |             |               | The Contact Email may not be greater than 45 characters.       |
      | Check Character Limit for City field            |                                                                              |                                                           |                                                |                                                            |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                    |       |             |               | The City may not be greater than 45 characters.                |
      | Check Character Limit for ContactPhone field    |                                                                              |                                                           |                                                |                                                            |                                                |                                                |  98745612301548963 |       |             |               | The Contact Phone format is invalid.                           |
      | Check Character Limit for Postal code field     |                                                                              |                                                           |                                                |                                                            |                                                |                                                |                    |       | 10000-00000 |               | Please enter a valid Zip Code                                  |
      | Check Character Limit for Identifier(EIN)       |                                                                              |                                                           |                                                |                                                            |                                                |                                                |                    |       |             | greaterThan10 | The EIN may not be greater than 10 characters.                 |
      | Check Allowed Characters for ContactEmail field |                                                                              |                                                           |                                                |                                                            | @$%%6%^7$^&%@yopmail.com                       |                                                |                    |       |             |               | The Contact Email format is invalid.                           |
      | Check Allowed Characters for ContactPhone field |                                                                              |                                                           |                                                |                                                            |                                                |                                                | 997956893569789635 |       |             |               | The Contact Phone format is invalid.                           |
      | Check Allowed Characters for PostalCode field   |                                                                              |                                                           |                                                |                                                            |                                                |                                                |                    |       | abcdefgh    |               | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for EIN field          |                                                                              |                                                           |                                                |                                                            |                                                |                                                |                    |       |             | @&^%*&#       | The EIN field must be alphanumeric.                            |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    Then I enter <Payor_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
    And I verify "Please enter an Address" mandatory field validation message on create organization page
    And I verify "Please enter a City" mandatory field validation message on create organization page
    And I verify "Please select a State" mandatory field validation message on create organization page
    And I verify "Please enter a Zip Code" mandatory field validation message on create organization page

  Scenario Outline: <Description>
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    Then I enter <Payor_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "Payor - <EIN>" in "EIN" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Payor" organization page

    Examples: 
      | Description                                                                                   | Payor_Name           | Contact_Person                                | Contact_Email                                 | Contact_Phone  | Address1                                                | Address2                                                | City                                          | State    | Postal_Code | EIN | Message                                                                                          |
      | Check Character Limit edge condition for PayorName field                                      | equalsTo75Characters | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for Address1 field                                       | MONAME               | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasabcd | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for ContactPerson field                                  | MONAME               | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqab | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for Address2 field                                       | MONAME               | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasabcd | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for ContactEmail field                                   | MONAME               | ContactPersonTest                             | abcdefghijklmnopqrstuvwxyzabcdefg@yopmail.com |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for City field                                           | MONAME               | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | abcdefghijklmnopqrstuvwxyzabcdefgayopmailccom | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for ContactPhone field                                   | MONAME               | ContactPersonTest                             | Sample@yopmail.com                            |     9988956468 | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Check Character Limit edge condition for Postal code field                                    | MONAME               | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York | 10001-5623  | EIN | Payor Organization Successfully Created.                                                         |
      | To check the Allowed characters for the available fields                                      | AllowedCharatcters   | !@$% ^&*()+}{;:<>?=-\\/.,Contact_person001    | !$%^&*'.-=+Contact_Email001@gmail.com         | 1(235)526 5236 | !@$test% ^&2356*()_+}{;:<>?=-\\/.,Address1              | !@$test% ^&2356*()_+}{;:<>?=-\\/.,Address2              | !@$test% ^&2356*()_+}{;:<>?=-\\/.,City        | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields                                               | PAYORNAME            |                                               |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + Address2                                    | PAYORNAME            |                                               |                                               |                | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactPerson                               | PAYORNAME            | ContactPersonTest                             |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactEmail                                | PAYORNAME            |                                               | Sample@yopmail.com                            |                | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactPhone                                | PAYORNAME            |                                               |                                               |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + Address2 + ContactPerson + EIN              | PAYORNAME            | ContactPersonTest                             |                                               |                | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + Address2 +  ContactEmail                    | PAYORNAME            |                                               | Sample@yopmail.com                            |                | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields  + Address2 + ContactPhone                    | PAYORNAME            |                                               |                                               |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + Address2 + ContactPerson + ContactEmail     | PAYORNAME            | ContactPersonTest                             | Sample@yopmail.com                            |                | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactEmail + ContactPerson + ContactPhone | PAYORNAME            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactEmail + ContactPerson                | PAYORNAME            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactEmail + ContactPhone                 | PAYORNAME            |                                               | Sample@yopmail.com                            |                | Address1                                                |                                                         | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + EIN                                         | PAYORNAME            |                                               |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with Mandatory fields + ContactPhone + ContactPerson + Address2     | PAYORNAME            | ContactPersonTest                             |                                               |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | Payor Organization Successfully Created.                                                         |
      | Create Payor Organization with all available fields                                           | PAYORNAME            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | EIN | Payor Organization Successfully Created.                                                         |
      | Create using duplicate Payor Organization Name                                                | DUPLICATE_PAYORNAME  | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 |     | There is a conflict error because an entity with similar identifying attributes already existed. |

  Scenario Outline: <Description>
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    And I provide unique "Payor - <EIN>" in "EIN" on create organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "<Message>" field validation message on create organization page

    Examples: 
      | Description                                                        | EIN           | Message              |
      | Verify Validation Message of Payor Organization with duplicate EIN | DUPLICATE_EIN | EIN Id already taken |

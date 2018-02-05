Feature: Edit the Managing organization functionality test

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify "+" button under "Managing" organization page
    Then I click on "+" button on "Managing" organization page
    And I verify "Create Managing Organization" header text on create organization page
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
      | Description                                            | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | Message                                     |
      | Create Managing Organization with all available fields | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | Managing Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit Managing Organization" header text on edit organization page
    And I verify "*Managing Organization Name" field on edit organization page
    And I verify "Contact Person" field on edit organization page
    And I verify "Contact Email" field on edit organization page
    And I verify "Contact Phone" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                       | MO_Name |
      | Verification of availability of all the fields on Edit Managing Organization page | MONAME  |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMessage>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                                     | MO_Name | Edited_MO_Name | Address1 | City | State      | Postal_Code | ValidationMessage                 |
      | Check validation for blank MO name field on Edit Managing Organization page     | MONAME  |                | Address1 | City | California |       10000 | Please enter an Organization Name |
      | Check validation for blank Address1 field on Edit Managing Organization page    | MONAME  | MONAME         |          | City | California |       10000 | Please enter an Address           |
      | Check validation for blank City field on Edit Managing Organization page        | MONAME  | MONAME         | Address1 |      | California |       10000 | Please enter a City               |
      | Check validation for blank State field on Edit Managing Organization page       | MONAME  | MONAME         | Address1 | City |            |       10000 | Please select a State             |
      | Check validation for blank Postal code field on Edit Managing Organization page | MONAME  | MONAME         | Address1 | City | California |             | Please enter a Zip Code           |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Contact Person" field to "<Contact_Person>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "Contact Email" field to "<Contact_Email>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Contact Phone" field to "<Contact_Phone>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on edit organization page

    Examples: 
      | Description                                                                        | MO_Name | Edited_MO_Name                                                               | Address1                                                  | Contact_Person                                 | Address2                                                  | Contact_Email                                  | City                                           | Contact_Phone | State | Postal_Code | ValidationMessage                                              |
      | Check Character Limit for MoName field on Edit Managing Organization page          | MONAME  | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                           |                                                |                                                           |                                                |                                                |               |       |             | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field on Edit Managing Organization page        | MONAME  |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                                                           |                                                |                                                |               |       |             | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for ContactPerson field on Edit Managing Organization page   | MONAME  |                                                                              |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                           |                                                |                                                |               |       |             | The Contact Person may not be greater than 45 characters.      |
      | Check Character Limit for Address2 field on Edit Managing Organization page        | MONAME  |                                                                              |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                                                |               |       |             | The second address line may not be greater than 55 characters. |
      | Check Character Limit for ContactEmail field on Edit Managing Organization page    | MONAME  |                                                                              |                                                           |                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com |                                                |               |       |             | The Contact Email may not be greater than 45 characters.       |
      | Check Character Limit for City field on Edit Managing Organization page            | MONAME  |                                                                              |                                                           |                                                |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |               |       |             | The City may not be greater than 45 characters.                |
      | Check Character Limit for ContactPhone field on Edit Managing Organization page    | MONAME  |                                                                              |                                                           |                                                |                                                           |                                                |                                                |   98745612301 |       |             | The Contact Phone format is invalid.                           |
      | Check Character Limit for Postal code field on Edit Managing Organization page     | MONAME  |                                                                              |                                                           |                                                |                                                           |                                                |                                                |               |       | 10000-00000 | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for ContactEmail field on Edit Managing Organization page | MONAME  |                                                                              |                                                           |                                                |                                                           | @$%%6%^7$^&%@yopmail.com                       |                                                |               |       |             | The Contact Email format is invalid.                           |
      | Check Allowed Characters for ContactPhone field on Edit Managing Organization page | MONAME  |                                                                              |                                                           |                                                |                                                           |                                                |                                                |   98745612301 |       |             | The Contact Phone format is invalid.                           |
      | Check Allowed Characters for PostalCode field on Edit Managing Organization page   | MONAME  |                                                                              |                                                           |                                                |                                                           |                                                |                                                |               |       | abcdefgh    | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Contact Person" field to "<Contact_Person>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "Contact Email" field to "<Contact_Email>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Contact Phone" field to "<Contact_Phone>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "Please enter an Organization Name" mandatory field validation message on edit organization page
    And I verify "Please enter an Address" mandatory field validation message on edit organization page
    And I verify "Please enter a City" mandatory field validation message on edit organization page
    And I verify "Please select a State" mandatory field validation message on edit organization page
    And I verify "Please enter a Zip Code" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                | MO_Name | Edited_MO_Name | Address1 | Contact_Person | Address2 | Contact_Email | City | Contact_Phone | State | Postal_Code |
      | Edit a Managing Organization With Mandatory Fields Missing | MONAME  |                |          |                |          |               |      |               |       |             |

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Contact Person" field to "<Contact_Person>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "Contact Email" field to "<Contact_Email>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Contact Phone" field to "<Contact_Phone>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit MO" organization page

    Examples: 
      | Description                                                                                    | MO_Name | Edited_MO_Name                    | Contact_Person                                | Contact_Email                                 | Contact_Phone  | Address1                                                | Address2                                                | City                                          | State    | Postal_Code | Message                                     |
      | Check Character Limit edge condition for MOName field on Edit Managing Organization            | MONAME  | equalsTo75CharactersonMONAMEField | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for Address1 field on Edit Managing Organization          | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasabcd | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for ContactPerson field on Edit Managing Organization     | MONAME  | MONAME                            | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqab | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for Address2 field on Edit Managing Organization          | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasabcd | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for ContactEmail field on Edit Managing Organization      | MONAME  | MONAME                            | ContactPersonTest                             | abcdefghijklmnopqrstuvwxyzabcdefg@yopmail.com |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for City field on Edit Managing Organization              | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | abcdefghijklmnopqrstuvwxyzabcdefgayopmailccom | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for ContactPhone field on Edit Managing Organization      | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     9988956468 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Check Character Limit edge condition for Postal code field on Edit Managing Organization       | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York | 10001-5623  | Managing Organization Successfully Updated. |
      | To check the Allowed characters for the available fields                                       | MONAME  | AllowedCharatctersonMONAMEField   | !@$% ^&*()+}{;:<>?=-\\/.,Contact_person001    | !$%^&*'.-=+Contact_Email001@gmail.com         | 1(235)526 5236 | !@$test% ^&2356*()_+}{;:<>?=-\\/.,Address1              | !@$test% ^&2356*()_+}{;:<>?=-\\/.,Address2              | !@$test% ^&2356*()_+}{;:<>?=-\\/.,City        | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields                                             | MONAME  | MONAME                            |                                               |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + Address2                                  | MONAME  | MONAME                            |                                               |                                               |                | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactName                               | MONAME  | MONAME                            | ContactPersonTest                             |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactEmail                              | MONAME  | MONAME                            |                                               | Sample@yopmail.com                            |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + Address2 + ContactName                    | MONAME  | MONAME                            | ContactPersonTest                             |                                               |                | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactPhone                              | MONAME  | MONAME                            |                                               |                                               |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + Address2 +  ContactEmail                  | MONAME  | MONAME                            |                                               | Sample@yopmail.com                            |                | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + Address2 + ContactName + ContactEmail     | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |                | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields  + Address2 + ContactPhone                  | MONAME  | MONAME                            |                                               |                                               |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactEmail + ContactName + ContactPhone | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactEmail + ContactName                | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactEmail + ContactPhone               | MONAME  | MONAME                            |                                               | Sample@yopmail.com                            |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactPhone + ContactName                | MONAME  | MONAME                            | ContactPersonTest                             |                                               |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields + ContactPhone + ContactName + Address2     | MONAME  | MONAME                            | ContactPersonTest                             |                                               |     5555599999 | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization with Mandatory fields                                             | MONAME  | MONAME                            |                                               |                                               |                | Address1                                                |                                                         | City                                          | New York |       10001 | Managing Organization Successfully Updated. |
      | Edit a Managing Organization duplicate Managing Organization Name                              | MONAME  | MONAME                            | ContactPersonTest                             | Sample@yopmail.com                            |     5555599999 | Address1                                                | Address2                                                | City                                          | New York |       10001 | Managing Organization Successfully Updated. |

  Scenario Outline: Verification of Cancel Button Functionality on edit a Managing Organization page
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Contact Email" field to "<Contact_Email>" for organization
    And I click on "Cancel" button on "Edit" organization page
    Then User navigated to "Managing" view page
    And I verify "<Contact_Email>" name on the header of view profile

    Examples: 
      | Description                                 | MO_Name | Contact_Email            |
      | Verification of cancel button functionality | MONAME  | SampleEdited@yopmail.com |

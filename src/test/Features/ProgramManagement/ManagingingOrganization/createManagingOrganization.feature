Feature: Create Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario: Verification Mandatory and Optional fields available on Create Managing Organization
    When I click on Organization link on Program Management page
    Then I verify "+" button under organization tab
    And I verify "Participant ID" header label under "Managing" organization in Managing Organization
    And I verify "Managing Organization Name" header label under "Managing" organization in Managing Organization
    And I verify "City" header label under "Managing" organization in Managing Organization
    And I verify "State" header label under "Managing" organization in Managing Organization
    And I verify "Postal Code" header label under "Managing" organization in Managing Organization
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    And I verify "*Managing Organization Name" field on create organization page
    And I verify "Contact Person" field on create organization page
    And I verify "Contact Email" field on create organization page
    And I verify "Contact Phone" field on create organization page
    And I verify "*Address 1" field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "*City" field on create organization page
    And I verify "*State" drop down field on create organization page
    And I verify "*Postal Code" field on create organization page
    Then I click on "Submit" button on create organization page
    And I verify "Please enter an Organization Name" mandatory field validation message on create organization page
    And I verify "Please enter an Address" mandatory field validation message on create organization page
    And I verify "Please enter a City" mandatory field validation message on create organization page
    And I verify "Please select a State" mandatory field validation message on create organization page
    And I verify "Please enter a Zip Code" mandatory field validation message on create organization page

  Scenario Outline: Verification of Field validation
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on create organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | MO_Name | Address1 | City | State      | Postal_Code | ValidationMsg                     |
      |         | Address1 | City | California |       10000 | Please enter an Organization Name |
      | MONAME  |          | City | California |       10000 | Please enter an Address           |
      | MONAME  | Address1 |      | California |       10000 | Please enter a City               |
      | MONAME  | Address1 | City |            |       10000 | Please select a State             |
      | MONAME  | Address1 | City | California |             | Please enter a Zip Code           |

  Scenario Outline: Verification of Field Charcter Limits and Format
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
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
    And I verify "<ValidationOrgName>" mandatory field validation message on create organization page
    And I verify "<ValidationAddress>" mandatory field validation message on create organization page
    And I verify "<ValidationContactPerson>" mandatory field validation message on create organization page
    And I verify "<ValidationAddress2>" mandatory field validation message on create organization page
    And I verify "<ValidationContactEmail>" mandatory field validation message on create organization page
    And I verify "<ValidationCity>" mandatory field validation message on create organization page
    And I verify "<ValidationContactPhone>" mandatory field validation message on create organization page
    And I verify "<ValidationZipCode>" mandatory field validation message on create organization page

    Examples: 
      | MO_Name                                                                      | Address1                                       | Contact_Person                                 | Address2                                       | Contact_Email                                  | City                                           | Contact_Phone | State      | Postal_Code | ValidationOrgName                                            | ValidationAddress                                             | ValidationContactPerson                                   | ValidationAddress2                                             | ValidationContactEmail                                   | ValidationCity                                  | ValidationContactPhone               | ValidationZipCode             |
      | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |   98745612301 | California | 10000-00000 | The Organization Name may not be greater than 75 characters. | The first address line may not be greater than 45 characters. | The Contact Person may not be greater than 45 characters. | The second address line may not be greater than 45 characters. | The Contact Email may not be greater than 45 characters. | The City may not be greater than 45 characters. | The Contact Phone format is invalid. | Please enter a valid Zip Code |
      | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |                                                |               |            |             | The Organization Name may not be greater than 75 characters. |                                                               |                                                           |                                                                |                                                          |                                                 |                                      |                               |
      |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |                                                |               |            |             |                                                              | The first address line may not be greater than 45 characters. |                                                           |                                                                |                                                          |                                                 |                                      |                               |
      |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |               |            |             |                                                              |                                                               | The Contact Person may not be greater than 45 characters. |                                                                |                                                          |                                                 |                                      |                               |
      |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |               |            |             |                                                              |                                                               |                                                           | The second address line may not be greater than 45 characters. |                                                          |                                                 |                                      |                               |
      |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefgh@yopmail.com |                                                |               |            |             |                                                              |                                                               |                                                           |                                                                | The Contact Email may not be greater than 45 characters. |                                                 |                                      |                               |
      |                                                                              |                                                |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |               |            |             |                                                              |                                                               |                                                           |                                                                |                                                          | The City may not be greater than 45 characters. |                                      |                               |
      |                                                                              |                                                |                                                |                                                |                                                |                                                |   98745612301 |            |             |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 | The Contact Phone format is invalid. |                               |
      |                                                                              |                                                |                                                |                                                |                                                |                                                |               |            | 10000-00000 |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      | Please enter a valid Zip Code |
      | !@2356%124&68jkk*6()$@!                                                      | !@$%^56%12**4&68jkk*6()$@!                     | %^&*876%6%&^5                                  | %^&*876%6%5                                    | #$76%^7$^&%@yopmail.com                        | @#34&^56                                       |   98745612301 | California | 10000-0000  |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      |                               |
      |                                                                              |                                                |                                                |                                                |                                                |                                                |               |            | abcdefgh    |                                                              |                                                               |                                                           |                                                                |                                                          |                                                 |                                      | Please enter a valid Zip Code |

  Scenario Outline: Create Managing Organization with Mandatory fields only and Create using duplicate Manging Organization Name.

    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on create organization page
    #Then I verify <ValidateMsg> after submitting the create ogranization page

    Examples: 
      | MO_Name        | Address1 | City | State      | Postal_Code | ParticipantId | ValidateMsg                                                                                             |
      | MONAME         | Address1 | City | California |       10000 |           123 | Success! Management Organization Successfully Created.                                                  |
      #| newmo edited12 | Address1 | City | California |       10000 |           123 | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |

  Scenario Outline: Create a Manging organization with valid data and also cover search functionality
    (Mandatory + Non-mandatory fields)

    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
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
    Then I click on "Submit" button on create organization page
    Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
   
    Examples: 
      | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | StateInitials | ParticipantId |
      | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | NY            | Sample        |

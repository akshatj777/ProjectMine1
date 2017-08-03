Feature: User completes inputting Managing Organization details during creation,
         submit the information for validation and creation

  Background: 
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: Submit Managing Organization with all mandatory and few non-mandatory field
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on create organization page
    And I verify no validation errors occur on create organization page
    Then I verify "Success! Management Organization Successfully Created." after submitting the create ogranization page
    
    Examples: 
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | State      | Postal_Code |
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | California |       10000 |

  #Scenario Outline: Submit Managing Organization with invalid details in mandatory and few non-mandatory field
  
  Scenario Outline: Cancel Managing Organization creation after filling few field, Click on cancel message - Yes
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Cancel" button on create organization page
    
    Examples: 
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | State      | Postal_Code |
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | California |       10000 |
      
 Scenario Outline: Cancel Managing Organization creation after filling few field, Click on cancel message - No
    When I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Cancel" button on create organization page
    
    Examples: 
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | State      | Postal_Code |
      | MO_Name | Contact_Person | Contact_Phone | Address1 | City | California |       10000 |

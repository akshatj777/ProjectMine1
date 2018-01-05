Feature: Logging in with edited user and verifying redirections

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I wait to see "Dashboards" under reports tile text
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Program Overview" reports text for "Dashboards" report tile
    Then I click on Show Summary button to unhide the available global filters
    Then I see <Health System> appearing under payer filter of global filters
    Then I see <Health System> appearing under participant filter of global filters
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I redirect to Remedy connect page
    And I click on the top user account link
    And I verify "Support" in dropdown on profile icon
    And I verify "Reset Password" in dropdown on profile icon
    And I verify "Log Out" in dropdown on profile icon
    And I click on "Support" in dropdown on profile icon
    And I switch to new window
    And I verify page header "Login" for "Support" on Remedy Connect
    And I switch back to old window
    And I click on "Reset Password" in dropdown on profile icon
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "We have sent you an e-mail with a link to reset your password. Please check your e-mail."
    And I click Okay button for reset password popup
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Description                                                                                | User        | Role                            | Applications                                                                | ApplicationsNotVisible                                             | Roletext       | Health System     |
      | Login with Executive and verify Product Tiles and their redirections                       | Super Admin | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                    | Administration, Physician Connect                                  | ROLE_PRM       | Stamford Hospital |
      | Login with Manager and verify Product Tiles and their redirections                         | Super Admin | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                    | Administration, Physician Connect                                  | ROLE_PRM       | Stamford Hospital |
      | Login with Case Manager and verify Product Tiles and their redirections                    | Super Admin | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                    | Administration, Physician Connect                                  | ROLE_TCS       | Stamford Hospital |
      | Login with Physicians and verify Product Tiles and their redirections                      | Super Admin | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                 | Administration                                                     | ROLE_CLINICIAN | Stamford Hospital |
      | Login with Remedy TCS and verify Product Tiles and their redirections                      | Super Admin | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                               | Administration, Physician Connect                                  | ROLE_TCS       | Stamford Hospital |
      | Login with Remedy RN and verify Product Tiles and their redirections                       | Super Admin | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                               | Administration, Physician Connect                                  | ROLE_RN        | Stamford Hospital |
      | Login with Remedy Field RN and verify Product Tiles and their redirections                 | Super Admin | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                               | Administration, Physician Connect                                  | ROLE_FRN       | Stamford Hospital |
      | Login with Remedy PM and verify Product Tiles and their redirections                       | Super Admin | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                               | Administration, Physician Connect                                  | ROLE_PM        | Stamford Hospital |
      | Login with Remedy Executive and verify Product Tiles and their redirections                | Super Admin | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                               | Administration, Physician Connect                                  | ROLE_PRM       | Stamford Hospital |
      | Login with Prospective Partner Executive and verify Product Tiles and their redirections   | Super Admin | Prospective Partner Executive   | Lessons                                                                     | Administration, Physician Connect, Episodes, Episodes 2.0, Reports |                | Stamford Hospital |
      | Login with Remedy Other and verify Product Tiles and their redirections                    | Super Admin | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                        | Administration, Physician Connect, Reports                         | ROLE_PRM       | Stamford Hospital |
      | Login with Partner Technical Administrator and verify Product Tiles and their redirections | Super Admin | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration |                                                                    | ROLE_PM        | Stamford Hospital |
      | Login with Remedy Program Administrator and verify Product Tiles and their redirections    | Super Admin | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI            | Administration                                                     | ROLE_PRM       | Stamford Hospital |
      | Login with Remedy TCS and verify Product Tiles and their redirections                      | Super Admin | Remedy TCS                      | Episodes, Episodes 2.0, TCI                                                 | Administration, Physician Connect, Reports, Lessons                | ROLE_TCS       | Stamford Hospital |
      | Login with Case Manager and verify Product Tiles and their redirections                    | Super Admin | Case Manager                    | Episodes, Reports                                                           | Administration, Physician Connect, Episodes 2.0, Lessons           | ROLE_TCS       | Stamford Hospital |
      | Login with Remedy PM and verify Product Tiles and their redirections                       | Super Admin | Remedy PM                       | Episodes, Episodes 2.0, Reports, TCI                                        | Administration, Physician Connect, Lessons                         | ROLE_PM        | Stamford Hospital |
      | Login with Remedy Program Administrator and verify Product Tiles and their redirections    | Super Admin | Remedy Program Administrator    | Episodes, Reports, Physician Connect, TCI                                   | Administration, Episodes 2.0, Lessons                              | ROLE_PRM       | Stamford Hospital |
      | Login with Remedy Executive and verify Product Tiles and their redirections                | Super Admin | Remedy Executive                | Episodes, Reports, Lessons, TCI                                             | Administration, Physician Connect, Episodes 2.0                    | ROLE_PRM       | Stamford Hospital |

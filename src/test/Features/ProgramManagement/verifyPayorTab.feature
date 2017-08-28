Feature: Verify Payer tab

Scenario: To verify the tabs present under Payer
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page
    When I click on "Payor" organization tab on organization dashboard
    And I verify "Participant ID" tab under "Payor" organization dashboard
    And I verify "Payor Organization Name" tab under "Payor" organization dashboard
    And I verify "City" tab under "Payor" organization dashboard
    And I verify "State" tab under "Payor" organization dashboard
    And I verify "Postal Code" tab under "Payor" organization dashboard
    
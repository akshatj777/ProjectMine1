Feature: Route ACl Page verification
@EC1Smoke
  Scenario: To verify the redirection of route acl under admin center
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/aclroute/"
    Then I will wait to see "Routes ACL" on route acl page
    Then I verify "RouteAcl" list is appearing on the route acl page
    

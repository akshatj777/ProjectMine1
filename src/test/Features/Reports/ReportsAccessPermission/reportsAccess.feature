Feature: User should direct to login if tries to access the report url directly

  Scenario: System should direct to the login page if a user tries to access the report directly through url
    Given I am on the login page
    And I go to "https://cdn-qa.remedypartners.com/reports/index.html#/reports/physician/performance-(claims)?url=pentaho%2Fapi%2Frepos%2F%253Apublic%253AClaims%253Arelease%253APhysician%20Performance.xanalyzer%2Feditor" page
    Then I wait for 2000 milli seconds
    And I should see Log in widget

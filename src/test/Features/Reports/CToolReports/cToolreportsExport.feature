Feature: CTool Reports Export to PNG,CSV and XLS

Scenario Outline: User should click on export Episodes graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    
    And I click on export symbol on "episodes" graph
    Then I Verify "PNG" is appearing after clicking on "episodes" export symbol
    Then I Verify "XLS" is appearing after clicking on "episodes" export symbol
    Then I Verify "CSV" is appearing after clicking on "episodes" export symbol
    
    And I click on "PNG" option under "episodes" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "episodes" graph
    Then I verify "Medium" is appearing under Export Options for "episodes" graph
    Then I verify "Large" is appearing under Export Options for "episodes" graph
    Then I verify "Custom" is appearing under Export Options for "episodes" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "episodes" graph
    And I click on "Medium" Export Options for "episodes" graph
    And I click on "Large" Export Options for "episodes" graph
    And I click on "Custom" Export Options for "episodes" graph
    And I click on "Export" Export Options for "episodes" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "episodes" graph
    Then I should click on "XLS" option under "episodes" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "episodes" graph
    Then I should click on "CSV" option under "episodes" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export NPRA graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
     
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "NPRA" graph
    Then I Verify "PNG" is appearing after clicking on "NPRA" export symbol
    Then I Verify "XLS" is appearing after clicking on "NPRA" export symbol
    Then I Verify "CSV" is appearing after clicking on "NPRA" export symbol
    
    And I click on "PNG" option under "NPRA" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "NPRA" graph
    Then I verify "Medium" is appearing under Export Options for "NPRA" graph
    Then I verify "Large" is appearing under Export Options for "NPRA" graph
    Then I verify "Custom" is appearing under Export Options for "NPRA" graph
    Then I verify graph appearing under export options popup
    
   	And I click on "Small" Export Options for "NPRA" graph
    And I click on "Medium" Export Options for "NPRA" graph
    And I click on "Large" Export Options for "NPRA" graph
    And I click on "Custom" Export Options for "NPRA" graph
    
    And I click on "Export" Export Options for "NPRA" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "NPRA" graph
    Then I should click on "XLS" option under "NPRA" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "NPRA" graph
    Then I should click on "CSV" option under "NPRA" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export SNF graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "SNF" graph
    Then I Verify "PNG" is appearing after clicking on "SNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "SNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "SNF" export symbol
    
    And I click on "PNG" option under "SNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "SNF" graph
    Then I verify "Medium" is appearing under Export Options for "SNF" graph
    Then I verify "Large" is appearing under Export Options for "SNF" graph
    Then I verify "Custom" is appearing under Export Options for "SNF" graph
    Then I verify graph appearing under export options popup
    And I click on "Small" Export Options for "SNF" graph
    And I click on "Medium" Export Options for "SNF" graph
    And I click on "Large" Export Options for "SNF" graph
    And I click on "Custom" Export Options for "SNF" graph
    
    And I click on "Export" Export Options for "SNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "SNF" graph
    Then I should click on "XLS" option under "SNF" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "SNF" graph
    Then I should click on "CSV" option under "SNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |

Scenario Outline: User should click on export Long Term Acute Care graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    And I click on export symbol on "LTCH" graph
    Then I Verify "PNG" is appearing after clicking on "LTCH" export symbol
    Then I Verify "XLS" is appearing after clicking on "LTCH" export symbol
    Then I Verify "CSV" is appearing after clicking on "LTCH" export symbol
    
    And I click on "PNG" option under "LTCH" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "LTCH" graph
    Then I verify "Medium" is appearing under Export Options for "LTCH" graph
    Then I verify "Large" is appearing under Export Options for "LTCH" graph
    Then I verify "Custom" is appearing under Export Options for "LTCH" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "LTCH" graph
    And I click on "Medium" Export Options for "LTCH" graph
    And I click on "Large" Export Options for "LTCH" graph
    And I click on "Custom" Export Options for "LTCH" graph
    And I click on "Export" Export Options for "LTCH" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "LTCH" graph
    Then I should click on "XLS" option under "LTCH" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "LTCH" graph
    Then I should click on "CSV" option under "LTCH" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
 Scenario Outline: User should click on export Inpatient Rehab graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "IRF" graph
    Then I Verify "PNG" is appearing after clicking on "IRF" export symbol
    Then I Verify "XLS" is appearing after clicking on "IRF" export symbol
    Then I Verify "CSV" is appearing after clicking on "IRF" export symbol
    
    And I click on "PNG" option under "IRF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "IRF" graph
    Then I verify "Medium" is appearing under Export Options for "IRF" graph
    Then I verify "Large" is appearing under Export Options for "IRF" graph
    Then I verify "Custom" is appearing under Export Options for "IRF" graph
    Then I verify graph appearing under export options popup
    And I click on "Small" Export Options for "IRF" graph
    And I click on "Medium" Export Options for "IRF" graph
    And I click on "Large" Export Options for "IRF" graph
    And I click on "Custom" Export Options for "IRF" graph
    
    And I click on "Export" Export Options for "IRF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "IRF" graph
    Then I should click on "XLS" option under "IRF" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "IRF" graph
    Then I should click on "CSV" option under "IRF" export symbol
    And I wait for 4000 milli seconds
        
     Examples:
     
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export Home Health graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "HHA" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "HHA" export symbol
    Then I Verify "XLS" is appearing after clicking on "HHA" export symbol
    Then I Verify "CSV" is appearing after clicking on "HHA" export symbol
    
    And I click on "PNG" option under "HHA" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "HHA" graph
    Then I verify "Medium" is appearing under Export Options for "HHA" graph
    Then I verify "Large" is appearing under Export Options for "HHA" graph
    Then I verify "Custom" is appearing under Export Options for "HHA" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "HHA" graph
    And I click on "Medium" Export Options for "HHA" graph
    And I click on "Large" Export Options for "HHA" graph
    And I click on "Custom" Export Options for "HHA" graph
    
    And I click on "Export" Export Options for "HHA" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "HHA" graph
    Then I should click on "XLS" option under "HHA" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "HHA" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "HHA" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export Home graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "home" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "home" export symbol
    Then I Verify "XLS" is appearing after clicking on "home" export symbol
    Then I Verify "CSV" is appearing after clicking on "home" export symbol
    
    And I click on "PNG" option under "home" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "home" graph
    Then I verify "Medium" is appearing under Export Options for "home" graph
    Then I verify "Large" is appearing under Export Options for "home" graph
    Then I verify "Custom" is appearing under Export Options for "home" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "home" graph
    And I click on "Medium" Export Options for "home" graph
    And I click on "Large" Export Options for "home" graph
    And I click on "Custom" Export Options for "home" graph
    
    And I click on "Export" Export Options for "home" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "home" graph
    Then I should click on "XLS" option under "home" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "home" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "home" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
     
Scenario Outline: User should click on export Other graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "other" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "other" export symbol
    Then I Verify "XLS" is appearing after clicking on "other" export symbol
    Then I Verify "CSV" is appearing after clicking on "other" export symbol
    
    And I click on "PNG" option under "other" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "other" graph
    Then I verify "Medium" is appearing under Export Options for "other" graph
    Then I verify "Large" is appearing under Export Options for "other" graph
    Then I verify "Custom" is appearing under Export Options for "other" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "other" graph
    And I click on "Medium" Export Options for "other" graph
    And I click on "Large" Export Options for "other" graph
    And I click on "Custom" Export Options for "other" graph
    
    And I click on "Export" Export Options for "other" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    And I click on export symbol on "other" graph
    Then I should click on "XLS" option under "other" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "other" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "other" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export Initial SNF Length of Stay graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "5000"
    And I click on export symbol on "initialSNF" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "initialSNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "initialSNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "initialSNF" export symbol
    
    And I click on "PNG" option under "initialSNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "initialSNF" graph
    Then I verify "Medium" is appearing under Export Options for "initialSNF" graph
    Then I verify "Large" is appearing under Export Options for "initialSNF" graph
    Then I verify "Custom" is appearing under Export Options for "initialSNF" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "initialSNF" graph
    And I click on "Medium" Export Options for "initialSNF" graph
    And I click on "Large" Export Options for "initialSNF" graph
    And I click on "Custom" Export Options for "initialSNF" graph
    
    And I click on "Export" Export Options for "initialSNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "initialSNF" graph
    Then I should click on "XLS" option under "initialSNF" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "initialSNF" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "initialSNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
      
Scenario Outline: User should click on export SNF Days graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "5000"
    And I click on export symbol on "daysSNF" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "daysSNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "daysSNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "daysSNF" export symbol
    
    And I click on "PNG" option under "daysSNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "daysSNF" graph
    Then I verify "Medium" is appearing under Export Options for "daysSNF" graph
    Then I verify "Large" is appearing under Export Options for "daysSNF" graph
    Then I verify "Custom" is appearing under Export Options for "daysSNF" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "daysSNF" graph
    And I click on "Medium" Export Options for "daysSNF" graph
    And I click on "Large" Export Options for "daysSNF" graph
    And I click on "Custom" Export Options for "daysSNF" graph
    
    And I click on "Export" Export Options for "daysSNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "daysSNF" graph
    Then I should click on "XLS" option under "daysSNF" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "daysSNF" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "daysSNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
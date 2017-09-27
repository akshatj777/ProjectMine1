package stepDefination.programManagement;

import com.remedy.programManagement.HomePagePM;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;


public class HomePagePMStepDef extends DriverScript {
	
	HomePagePM homepagepm = new HomePagePM(driver);
	
	 @And("^I verify \"([^\"]*)\" header on the page$")
	  public void i_Verify_Header_On_Page_ProgramManagement(String text) throws Throwable {
		homepagepm.iVerifyThePageHeaderOnProgramManagementPage(text);
	    }
	 
	 @Then("^I click on Organization link on Program Management page$")
	 public void i_Click_On_OrganizationLink_On_Program_Management_Page() throws Throwable {
		 homepagepm.iClickOnOrganizationalLinkOnProgramManagementPage();
	 }
	 
	 @Then("^I verify \"([^\"]*)\" as default organizations tab selected on homepage$") 
	 public void i_Verify_Default_Tab_Selected_On_Homepage(String text) throws Throwable {
		 homepagepm.iVerifyDefaultTabOrganizationSelectedOnHomepage(text);
	 }
	 
	 @Then("^I verify \"([^\"]*)\" in organization type on homepage$") 
	 public void i_Verify_Organization_Type_On_HomePage(String text) throws Throwable {
		 homepagepm.iVerifyOrganizationTypeOnHomepage(text);
	 }
	 
}

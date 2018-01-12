package stepDefination.programManagement;

import com.remedy.programManagement.CreatePrograms;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateProgramsStepDef extends DriverScript{
	CreatePrograms programs= new CreatePrograms(driver);
	
	
	@And("^I verify \"([^\"]*)\" after submitting the \"([^\"]*)\" on Payor organization page$")
	  public void i_Verify_Message_After_Submitting_Create_Organization_Page(String text, String org) throws Throwable {
		programs.iVerifyMessageAfterSubmittingCreateOrganizationPageUnderPayorOrganization(text, org);
	 }
	
	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" view profile page$")
	  public void i_Verify_Header_Label_Under_Organization(String header,String org) throws Throwable {
		programs.iVerifyHeaderLabelUnderSelectedOrganization(header,org);
		}

}

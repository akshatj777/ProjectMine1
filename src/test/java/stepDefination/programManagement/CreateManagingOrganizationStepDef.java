package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateManagingOrganizationStepDef extends DriverScript{
	CreateManagingOrganization createMO = new CreateManagingOrganization(driver);
	
	 @And("^I click on create new Organization button on Program Management homepage$")
	  public void i_Click_On_Create_NewOrganizationButton_On_ProgramManagement_Homepage() throws Throwable {
		 createMO.iClickOnCreateNewOrgButtonOnProgramManagementHomepage();
	    }
	 
	 @And("^I verify \"([^\"]*)\" header text on create organization form$")
	  public void i_Verify_HeaderText_On_Create_Organization_Form(String text) throws Throwable {
		 createMO.iVerifyHeaderTextOnCreateOrganizationForm(text);
	    }

}

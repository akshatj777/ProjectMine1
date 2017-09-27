package stepDefination.programManagement;

import com.remedy.programManagement.CreatePGPOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreatePGPOrganizationStepDef extends DriverScript {
	 CreatePGPOrganization createPGPOrg = new CreatePGPOrganization(driver);
	 
	 @And("^I enter ([^\"]*) in \"([^\"]*)\" on create PGP organization page$")
	  public void i_Enter_ORG_Name_On_Create_PGP_Organization_Page(String text,String field) throws Throwable {
		 createPGPOrg.iEnterORGNameOnCreatePGPOrganizationPage(text,field);
	    }

}

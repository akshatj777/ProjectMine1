package stepDefination.programManagement;

import com.remedy.programManagement.EditSNFOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class EditSNFOrganizationStepDef extends DriverScript {
	
	EditSNFOrganization editSNFOrg = new EditSNFOrganization(driver);
	
	@And("^I edit Location \"([^\"]*)\" field to ([^\"]*) for Location \"([^\"]*)\" for organization$")
	  public void i_Edit_All_Fields_Of_Organization(String field1, String field2,int num) throws Throwable {
		editSNFOrg.iEditAllFieldsForLocationOFSelectedOrganization(field1,field2,num);
	    }
	
	

}

package stepDefination.programManagement;

import com.remedy.programManagement.EditHospitalOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class EditHospitalOrganizationStepDef extends DriverScript {
	
	EditHospitalOrganization editHospOrg = new EditHospitalOrganization(driver); 
	
	@And("^I verify Managing Organization field on \"([^\"]*)\" organization page$")
	  public void i_Verify_ManagingOrg_FieldOn_Organization_Page(String org) throws Throwable {
		editHospOrg.iVerifyManagingOrgFieldOnOrganizationPage(org);
	    }
}

package stepDefination.programManagement;

import com.remedy.programManagement.EditPGPOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class EditPGPOrganizationStepDef extends DriverScript {
	
	EditPGPOrganization editPGPOrg = new EditPGPOrganization(driver);

	@And("^I edit Region \"([^\"]*)\" in \"([^\"]*)\" organization page$")
	  public void i_Edit_Region_DropdownField_For_Selected_Organization(String text, String org) throws Throwable {
		editPGPOrg.iEditRegionForSelectedOrganization(text, org);
	    }
	
	@And("^I edit Market \"([^\"]*)\" in \"([^\"]*)\" organization page$")
	  public void i_Edit_Market_DropdownField_For_Selected_Organization(String text, String org) throws Throwable {
		editPGPOrg.iEditMarketForSelectedOrganization(text, org);
	    }

	
}

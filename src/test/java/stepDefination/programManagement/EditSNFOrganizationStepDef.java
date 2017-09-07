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
	
	@And("^I edit Location Type dropdown field to ([^\"]*) for Location \"([^\"]*)\" for organization$")
	  public void i_Edit_LocationType_DropdownField_For_Location(String text, int num) throws Throwable {
		editSNFOrg.iEditLocationTypeForLocation(text, num);
	    }
	
	@And("^I edit Region dropdown field to ([^\"]*) for Location \"([^\"]*)\" for organization$")
	  public void i_Edit_Region_DropdownField_For_Location(String text, int num) throws Throwable {
		editSNFOrg.iEditRegionForLocation(text, num);
	    }
	
	@And("^I edit Market dropdown field to ([^\"]*) for Location \"([^\"]*)\" for organization$")
	  public void i_Edit_Market_DropdownField_For_Location(String text, int num) throws Throwable {
		editSNFOrg.iEditMarketForLocation(text, num);
	    }
	
	@And("^I edit Location State dropdown field to ([^\"]*) for Location \"([^\"]*)\" for organization$")
	  public void i_Edit_LocationState_DropdownField_For_Location(String text, int num) throws Throwable {
		editSNFOrg.iEditLocationStateForLocation(text, num);
	    }
	
	
	

}

package stepDefination.programManagement;

import com.remedy.programManagement.EditPhysicianRoster;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class EditPhysicianRosterStepDef extends DriverScript {

	EditPhysicianRoster editPhysicianRoster = new EditPhysicianRoster(driver);
	
	@Then("^I search with \"([^\"]*)\" on view profile of \"([^\"]*)\" Organization search box$")
	  public void i_Search_With_PhysicianRoster_On_View_Profile_Of_Organization_Search_Box(String text, String org) throws Throwable {
		editPhysicianRoster.iSearchWithPhysicianRosterOnViewProfileOfOrganizationSearchBox(text, org);
	    }
	
	@Then("^I verify \"([^\"]*)\" field in search list on view profile of \"([^\"]*)\" Organization search box$")
	  public void i_Verify_PhysicianRoster_Field_In_Search_List_On_View_Profile_Of_Organization_Search_Box(String text, String org) throws Throwable {
		editPhysicianRoster.iVerifyPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(text, org);
	    }
	
	@Then("^I click \"([^\"]*)\" field in search list on view profile of \"([^\"]*)\" Organization search box$")
	  public void i_Clcik_PhysicianRoster_Field_In_Search_List_On_View_Profile_Of_Organization_Search_Box(String text, String org) throws Throwable {
		editPhysicianRoster.iClickPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(text, org);
	    }
	
	@Then("^I verify Program name is not editable$")
	  public void i_Verify_Program_Name_Is_Not_Editable() throws Throwable {
		editPhysicianRoster.iVerifyProgramNameIsNotEditable();
	    }
	
}

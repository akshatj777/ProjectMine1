package stepDefination.programManagement;

import com.remedy.programManagement.PhysicianRoster;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PhysicianRosterStepDef extends DriverScript{
	
	PhysicianRoster physicianroster=new PhysicianRoster(driver);

	@And("^I verify the \"([^\"]*)\" on \"([^\"]*)\" Physician Roster page$")
	public void i_Verify_PGP_Organization_Name_On_Physician_Roster_Page(String text, String page) throws Throwable {
		physicianroster.iVerifyPGPOrganizationNameOnPhysicianRosterPage(text, page);
	}
	
	@And("^I verify \"([^\"]*)\" dropdown is appearing on \"([^\"]*)\" Physician Roster page$")
	public void i_verify_dropdown_is_appearing_on_Physician_Roster_page(String text,String page) throws Throwable{
		physicianroster.iVerifyProgramDropdownOnPhysicianRosterPage(text, page);
	}
	
	@And("^I verify \"([^\"]*)\" text is appearing on the \"([^\"]*)\" Physician Roster page$")
	public void i_verify_text_is_appearing_on_the_Physician_Roster_page(String text,String page) throws Throwable{
		physicianroster.iVerifyTextOnPhysicianRosterPage(text, page);
	}
	
	@And("^I verify \"([^\"]*)\" dropdown above add practioner is appearing on \"([^\"]*)\" Physician Roster page$")
	public void i_verify_dropdown_above_add_practioner_is_appearing_on_Physician_Roster_page(String text,String page) throws Throwable{
		physicianroster.iVerifyPractionerDropdownOnCreatePhysicianRosterPage(text, page);
	}
	
	@And("^I verify \"([^\"]*)\" button on \"([^\"]*)\" Physician Roster page$")
	public void i_verify_button_on_Physician_Roster_page(String text,String page) throws Throwable{
		physicianroster.iVerifyButtonOnPhysicianRosterPage(text, page);
	}
	
	@And("^I verify \"([^\"]*)\" button on ([^\"]*) Physician Roster page$")
	public void i_verify_On_Button_On_Create_Physician_Roster_Page(String text, String action) throws Throwable {
		physicianroster.iVerifyOnButtonOnCreatePhysicianosterPage(text);
	}
	
	@Then("^I select program from program dropdown on \"([^\"]*)\" Physician Roster page$")
	public void i_select_program_from_program_dropdown_on_Physician_Roster_page(String page) throws Throwable{
		physicianroster.iSelectProgramInProgramDropDownOnPhysicianRosterPage(page);
	}
	
	@And("^I verify \"([^\"]*)\" is appearing after selecting program from dropdown on physician roster page$")
	public void i_verify_is_appearing_after_selecting_program_from_dropdown_on_physician_roster_page(String text) throws Throwable{
		physicianroster.iVerifytextAfterSelectingProgramFromDropdownOnPhysicianRosterPage(text);
	}
}

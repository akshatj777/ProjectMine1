package stepDefination.Episode1;

import com.remedy.episode1.PatientOverview;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class PatientOverviewSteps extends DriverScript {
	PatientOverview overview = new PatientOverview(driver);
	
	@Then("^I verify patients fullname on patient overview page$")
	public void i_Verify_Patients_Fullname_On_Patient_Overview_Page() throws Throwable {
		overview.iVerifyPatientsFullNameOnOverview();
	}

	@Then("^I should see details \"([^\"]*)\" on patients overview page$")
	public void i_Should_See_Details_On_Patients_Overview_Page(String text) throws Throwable {
		overview.iShouldSeeDetailsOnPatientsOverviewPage(text);
	}
	
	@Then("^I click on gear icon on patient overview page$")
	public void i_Click_On_Gear_Icon_On_Patient_Overview_Page() throws Throwable {
		overview.iClickOnGearIconOnPatientOverviewPage();
	}
	
	@Then("^I click on \"([^\"]*)\" option under patient overview gear icon$")
	public void i_Click_On_Option_Under_Patient_Overview_Gear_Icon(String text) throws Throwable {
		overview.iClickOnOptionUnderPatientOverviewGearIcon(text);
	}
	
	@Then("^I click on \"([^\"]*)\" button under \"([^\"]*)\" on Patient overview$")
	public void i_Click_On_Button_Under_Patient_Overview(String button,String tab) throws Throwable {
		overview.iClickOnButtonUnderPatientOverview(button);
	}
	
	@Then("^I select first facility checkbox on Assign Team Member modal$")
	public void i_Select_First_Facility_Checkbox_On_Assign_Team_Member_Modal() throws Throwable {
		overview.iSelectFirstFacilityCheckboxOnAssignTeamMemberModal();
	}
	
	@Then("^I enter \"([^\"]*)\" details in \"([^\"]*)\" under Add famaily modal$")
	public void i_Enter_Details_In_Field_Under_Add_Family_Modal(String text, String field) throws Throwable {
		overview.iEnterDetailsInFieldUnderAddFamilyModal(text, field);
	}
	
	@Then("^I edit \"([^\"]*)\" to \"([^\"]*)\" under patient details$")
	public void i_Edit_Field_Under_Patient_Details(String field, String text) throws Throwable {
		overview.IEditFieldUnderPatientDetails(field, text);
	}
	
	@Then("^I select \"([^\"]*)\" on \"([^\"]*)\" dropdown under edit patient details$")
	public void i_Select_Dropdown_UnderEdit_Patient_Details(String text, String field) throws Throwable {
		overview.ISelectDropDownUnderEditPatientDetails(text, field);
	}
	
	@Then("^I click on \"([^\"]*)\" button under patient details$")
	public void i_Click_On_Button_Under_Patient_Details(String text) throws Throwable {
		overview.iClickOnButtonUnderPatientDetails(text);
	}
}
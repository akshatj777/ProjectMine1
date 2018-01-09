package stepDefination.Episode1;

import com.remedy.episode1.PatientOverview;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
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
	
	@Then("^I click on \"([^\"]*)\" button under Medical Record on patient overview$")
	public void i_Click_On_Button_Under_Medical_Record_On_Patient_Overview(String button) throws Throwable {
		overview.iClickOnButtonUnderMedicalRecordOnPatientOverview(button);
	}
	
	@Then("^I enter \"([^\"]*)\" on \"([^\"]*)\" field under \"([^\"]*)\" in Medical Record$")
	public void i_Enter_Details_On_Field_Under_Medical_Record(String text, String field, String page) throws Throwable {
		overview.iEnterDetailsOnFieldUnderMedicalRecord(text,field);
	}
	
	@Then("^I click on \"([^\"]*)\" button for submit on \"([^\"]*)\" page$")
	public void i_Click_On_Button_For_Submit_On_Page(String button, String page) throws Throwable {
		overview.iClickOnButtonForSubmitOnPage(button);
	}
	
	@Then("^I should see \"([^\"]*)\" under \"([^\"]*)\" on Medical Record$")
	public void i_Should_See_Text_Under_Section_On_MedicalRecord(String text, String field) throws Throwable {
		overview.iShouldSeeTextUnderSectionOnMedicalRecord(text,field);
	}
	
	@Then("^I click on \"([^\"]*)\" under Medical Record$")
	public void i_Click_On_Text_Under_MedicalRecord(String text) throws Throwable {
		overview.iClickOnTextUnderMedicalRecord(text);
	}
	
	@Then("^I should see \"([^\"]*)\" buttons under Recent Activity$")
	public void i_Should_See_Button_Under_Recent_Activity(String text) throws Throwable {
		overview.iShouldSeeButtonUnderRecentActivity(text);
	}
	
	@Then("^I click on \"([^\"]*)\" button under Recent Activity$")
	public void i_Click_On_Button_Under_Recent_Activity(String text) throws Throwable {
		overview.iClickOnButtonUnderRecentActivity(text);
	}
	
	@Then("^I should see \"([^\"]*)\" in Notification column on Recent Activity Notification tab$")
	public void i_Should_See_Text_In_Notification_Column_On_RecentActivity_Notification_Tab(String text) throws Throwable {
		overview.iShouldSeeTextInNotificationColumnOnRecentActivityNotificationTab(text);
	}
	
	@Then("^I should see \"([^\"]*)\" in By column on Recent Activity Notification tab$")
	public void i_Should_See_Text_In_By_Column_On_RecentActivity_Notification_Tab(String text) throws Throwable {
		overview.iShouldSeeTextInByColumnOnRecentActivityNotificationTab(text);
	}
	
	@Then("^I verify \"([^\"]*)\" in Appointments under Care Plan on Patient page$")
	public void i_Verify_Appointments_Under_CarePlan_On_Patient_Page(String text) throws Throwable {
		overview.iVerifyAppointmentsUnderCarePlanOnPatientPage(text);
	}
	
	@And("^I should see \"([^\"]*)\" in Assigned forms under Care Plan on Patient page$")
	public void i_Should_See_Assigned_Forms_Under_Care_Plan_On_Patient_Page(String text) throws Throwable {
		overview.ishouldSeeAssignedFormsUnderCarePlanOnPatientPage(text);
	}
	
	@And("^I should see Physician card under Physicians under Care Team on Patient page$")
	public void i_Should_See_PhysicianCard_Under_Care_Team_On_Patient_Page() throws Throwable {
		overview.ishouldSeePhysicianCardUnderCareTeamOnPatientPage();
	}
}
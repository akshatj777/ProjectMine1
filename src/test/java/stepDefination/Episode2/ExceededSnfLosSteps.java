package stepDefination.Episode2;

import com.remedy.Episode2.ExceededSnfLos;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class ExceededSnfLosSteps extends DriverScript {

	ExceededSnfLos exceed = new ExceededSnfLos(driver);

	@Then("^I click on Exceed SNF LOS sub tab on the patient Card Page$")
	public void I_click_on_Exceed_SNF_LOS_sub_tab_on_the_patient_Card_Page() throws Throwable {
		exceed.IclickonExceedSnflossubtabonthepatientCardPage();
	}

	@Then("^I select the Discharge facility value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_facility_value_on_add_a_new_transition(String facilityvalue) throws Throwable {
		exceed.Iselectthedischargefacilityvalueonaddanewtransition(facilityvalue);
	}

	@Then("^I click on the Cancel Button on Add a new transition$")
	public void I_click_on_the_Cancel_Button_on_Add_a_new_transition() throws Throwable {
		exceed.IclickontheCancelButtononAddanewtransition();
	}

	@And("^I Select \"([^\"]*)\" from admitting facility list present on the Add Patient page$")
	public void I_Select_admitting_facility_list_present_on_the_Add_Patient_page(String facility)
	{
		exceed.ISelectadmittingfacilitylistpresentontheAddPatientpage(facility);
	}
	
	@And("^I click on the Anticipated quick action button on the Exceeded SNF LOS$")
	public void I_click_on_the_Anticipated_quick_action_button_on_the_Exceeded_SNF_LOS(String facility)
	{
		exceed.IclickontheAnticipatedquickactionbuttonontheExceededSNFLOS();
		
	}
	
	@Then ("^I select the most recent date from the date picker$")
	public void I_select_the_most_recent_date_from_the_date_picker()
	{
		exceed.Iselectthemostrecentdatefromthedatepicker();
	}
	
}

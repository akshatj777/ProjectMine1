package stepDefination.Episode2;

import com.remedy.Episode2.ExceededSnfLos;
import com.remedy.resources.DriverScript;

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

}

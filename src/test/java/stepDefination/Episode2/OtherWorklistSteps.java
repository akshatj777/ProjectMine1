package stepDefination.Episode2;

import com.remedy.Episode2.OtherWorklist;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class OtherWorklistSteps extends DriverScript{

	OtherWorklist other=new OtherWorklist(driver);
	
	@Then("^I click on Other sub tab on the patient Card Page$")
	public void I_click_on_Other_sub_tab_on_the_patient_Card_Page() throws Throwable {
		other.IclickonOthersubtabonthepatientCardPage();
	}
	
	@Then("^I click on the Cancel button on Discharge Info on Add a transition$")
	public void I_click_on_the_Cancel_button_on_Discharge_Info_on_Add_a_transition()
	{
		other.IclickontheCancelbuttononDischargeInfoonAddatransition();
	}
	
}

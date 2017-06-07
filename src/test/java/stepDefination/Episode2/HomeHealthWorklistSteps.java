package stepDefination.Episode2;

import com.remedy.Episode2.HomeHealthWorklist;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class HomeHealthWorklistSteps extends DriverScript {

	HomeHealthWorklist homehealth=new HomeHealthWorklist(driver);
	
	@Then ("^I click on Home Health sub tab on the patient Card Page$")
	public void I_click_on_Home_Health_sub_tab_on_the_patient_Card_Page() throws Throwable
	{
		homehealth.IclickonHomeHealthsubtabonthepatientCardPage();
	}

}

package stepDefination.Episode2;

import com.remedy.Episode2.PostAcuteFacility;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class PostAcuteFacilitySteps extends DriverScript {

	PostAcuteFacility postfacility = new PostAcuteFacility(driver);

	@Then("^I click on Post Acute Facility sub tab on the patient Card Page$")
	public void I_click_on_Post_Acute_Facility_sub_tab_on_the_patient_Card_Page() throws Throwable {
		postfacility.IclickonPostAcuteFacilitysubtabonthepatientCardPage();
	}
}

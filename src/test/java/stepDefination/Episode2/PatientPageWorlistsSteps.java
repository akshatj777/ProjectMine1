package stepDefination.Episode2;

import com.remedy.Episode2.PatientPageWorklists;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientPageWorlistsSteps extends DriverScript {

	PatientPageWorklists patientworklist=new PatientPageWorklists(driver);
	
	@Then("^I verify days to readmission section is appearing on the patient cards under readmission worklist$")
	public void i_verify_days_to_readmission_section_is_appearing_on_the_patient_cards_on_readmission_worklist() throws Throwable{
		patientworklist.iVerifyDaysToReadsmissionSection();
	}
	
	@Then("^I see number of days to inepisode is appearing on the patient cards under readmission worklist$")
	public void i_see_number_of_days_to_inepisode_is_appearing_on_the_patient_cards_under_readmission_orklist() throws Throwable{
		patientworklist.iSeeNumberDaysToInEpisode();
	}
	
	@Then("^I see readmission count appearing on the patient cards under readmission worklist$")
	public void i_see_readmission_count_appearing_on_the_patient_cards_under_readmission_worklist() throws Throwable{
		patientworklist.iSeeReadmissionCount();
	}
	
	@And("^I verify episode progress knob appearing on patient cards under readmission worklist$")
	public void i_verify_episode_progress_knob_appearing_on_patient_cards_under_readmission_worklist() throws Throwable{
		patientworklist.iSeeEpisodeProgressKnob();
	}
	
	@Then("^I verify \"([^\"]*)\" is appearing on patient cards under readmission worklist$")
	public void i_verify_is_appearing_on_patient_cards_under_readmission_worklist(String text) throws Throwable{
		patientworklist.iSeeReadmittedUnderWorklist(text);
	}
	
	@Then("^I see number of days as inpatient section is appearing on patient cards on readmission worklist$")
	public void i_see_number_of_days_as_inpatient_section_is_appearing_on_patient_cards_on_readmission_worklist() throws Throwable{
		patientworklist.iSeeNumberDaysAsInpatient();
	}
}

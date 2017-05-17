package stepDefination.Episode2;

import com.remedy.Episode2.AnticipatedCarlForm;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class AnticipatedCarlFormSteps extends DriverScript {
	
	AnticipatedCarlForm anticipatedcarlform = new AnticipatedCarlForm(driver);
	
	@Then("^I verify \"([^\"]*)\" should appear on Anticipated Discharge Needs section$")
	public void I_Verify_SubTitleShould_Appear_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifySubTittleOnAnticipatedDischargeNeedsSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox appears under Therapies Needed on Anticipated Discharge Needs section$")
	public void I_Verify_CheckBox_Appear_Under_TherapiesNeeded_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifyTheCheckBoxOptionsForTherapiesNeededOnAnticipatedDischargeNeedsSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section$")
	public void I_Verify_CheckBox_Appear_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifyTheCheckBoxOptionsForTransitionOfCareNeedsOnAnticipatedDischargeNeedsSection(text);
	}
		
}

package stepDefination.Episode1;

import com.remedy.episode1.EpisodeLogic;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class EpisodeLogicSteps extends DriverScript{

	EpisodeLogic logic=new EpisodeLogic(driver);
	
	@When ("^I click anchor transition delete link \"([^\"]*)\"$")
	public void i_click_anchor_transition_delete(int tran) throws InterruptedException{
		logic.iclickanchortransitiondelete(tran);
	}
	
	@When ("^I click first timing transition edit link \"([^\"]*)\"$")
	public void I_click_first_timing_transition_edit_link(int tran) throws InterruptedException{
		logic.Iclickfirsttimingtransitioneditlink(tran);
	}
	
	@Then ("^I verify potential m3 Episode Marker Admit Date \"([^\"]*)\" is created without end date$")
	public void i_Verify_Potential_without_end_Date(int days){
		logic.iVerifyPotentialwithoutendDate(days);
	}
	
	@Then ("^I should see \"([^\"]*)\" in Discharge location under Transitions$")
	public void i_Should_See_Discharge_Location_Under_Transitions(String text){
		logic.iShouldSeeDischargeLocationUnderTransition(text);
	}
	
	@Then ("^I should see \"([^\"]*)\" text for LOS on Transition modal$")
	public void i_Should_See_text_for_Los_On_Transitions_Modal(String text){
		logic.iShouldSeeTextForLOSOnTransitionModal(text);
	}
	
	}


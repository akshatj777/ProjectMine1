package stepDefination.Episode1;

import com.remedy.episode1.EpisodeLogic;
import com.remedy.resources.DriverScript;

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
	
	}


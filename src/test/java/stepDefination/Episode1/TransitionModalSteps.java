package stepDefination.Episode1;

import com.remedy.episode1.TransitionModal;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class TransitionModalSteps extends DriverScript {
	TransitionModal transition=new TransitionModal(driver);
	
	@And ("^I click Episode initiator Edit$")
	public void i_click_Episode_initiator_Edit(){
		transition.iclickEpisodeinitiatorEdit();
	}
	
	@Then ("^I verify \"([^\"]*)\" in \"([^\"]*)\" table in row \"([^\"]*)\" and column \"([^\"]*)\"$")
	public void i_Verify_value_in_table(String value,String table,int row,int column){
		transition.iVerifyvalueintable(value,table,row,column);
	}
}

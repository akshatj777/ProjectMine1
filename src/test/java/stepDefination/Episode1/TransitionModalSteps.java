package stepDefination.Episode1;

import java.text.ParseException;

import com.remedy.episode1.TransitionModal;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

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
	
	@Then ("^I select the admit date \"([^\"]*)\" hour \"([^\"]*)\" in transition \"([^\"]*)\"$")
	public void i_Select_one_hour_later_or_before(int time,String later,String tranistion) throws ParseException{
		transition.iSelectonehourlaterorbefore(time,later,tranistion);
	}
	
	@When ("^I click Start CARL tool link \"([^\"]*)\"$")
	public void i_click_Start_CARL_tool_link(int transition_no) throws InterruptedException{
		transition.iclickStartCARLtoollink(transition_no);
	}
	
	
}

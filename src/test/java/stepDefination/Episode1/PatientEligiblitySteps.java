package stepDefination.Episode1;

import com.remedy.episode1.PatientEligiblity;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;

public class PatientEligiblitySteps extends DriverScript {
	
	PatientEligiblity eligible=new PatientEligiblity(driver);
	
	@When ("^I click on \"([^\"]*)\" dropdown button$")
    public void I_click_on_Eligibility_dropdown(String value) throws Throwable{
		eligible.IclickonEligibilitydropdown(value);
    }
	
	@When ("^I click on eligibility set \"([^\"]*)\" option$")
	public void I_select_the_value_from_the_eligibility_dropdown(String value) throws Throwable {
		eligible.Iselectthevaluefromtheeligibilitydropdown(value);
	}
	
	@When ("^I fill in eligibility \"([^\"]*)\" with \"([^\"]*)\" days$")
	public void I_select_Date_of_Death(String logic,int days) throws Throwable {
		eligible.selectDateofDeath(days);
	}
	
	@And ("^I should see tag \"([^\"]*)\"$") 
	public void I_should_see_tag(String tag){
		eligible.Ishouldseetag(tag);
	}
	
	@And ("^I should not see tag \"([^\"]*)\"$") 
	public void I_should_not_see_tag(String tag){
		eligible.Ishouldnotseetag(tag);
	}
	
}

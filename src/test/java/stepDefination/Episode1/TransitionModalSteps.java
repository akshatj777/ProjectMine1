package stepDefination.Episode1;

import java.text.ParseException;
import com.remedy.episode1.TransitionModal;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class TransitionModalSteps extends DriverScript {

	TransitionModal transition = new TransitionModal(driver);

	@And("^I click Episode initiator Edit$")
	public void i_click_Episode_initiator_Edit() {
		transition.iclickEpisodeinitiatorEdit();
	}

	@Then("^I verify \"([^\"]*)\" in \"([^\"]*)\" table in row \"([^\"]*)\" and column \"([^\"]*)\"$")
	public void i_Verify_value_in_table(String value, String table, int row, int column) {
		transition.iVerifyvalueintable(value, table, row, column);
	}

	@Then("^I select the \"([^\"]*)\" admit date with \"([^\"]*)\" hour \"([^\"]*)\" in transition \"([^\"]*)\"$")
	public void i_Select_one_hour_later_or_before(int days, int time, String later, String tranistion) throws ParseException {
		transition.iSelectonehourlaterorbefore(days, time, later, tranistion);
	}

	@When("^I click Start CARL tool link \"([^\"]*)\"$")
	public void i_click_Start_CARL_tool_link(int transition_no) throws InterruptedException {
		transition.iclickStartCARLtoollink(transition_no);
	}

	@Then("^I click on \"([^\"]*)\" dropdown on Transition modal$")
	public void I_click_on_dropdown_on_transition_modal(String text) throws Throwable {
		transition.IClickOnDropDownOnTransitionModal(text);
	}

	@Then("^I verify \"([^\"]*)\" under dropdown text on Transition modal$")
	public void I_verify_option_under_dropdown_text_on_transition_modal(String text) throws Throwable {
		transition.IVerifyOptionUnderDropdownTextOnTransitionModal(text);
	}

	@Then("^I should not see \"([^\"]*)\" dropdown on Transition modal$")
	public void I_should_not_see_dropdown_on_transition_modal(String text) throws Throwable {
		transition.IShouldNotSeeDropDownOnTransitionModal(text);
	}

	@And("^I click on Cancel button on discharge modal$")
	public void i_click_on_cancel_button() {
		transition.iclickoncancelbutton();
	}

	@Then("^I verify DRG \"([^\"]*)\" \"([^\"]*)\" in transition \"([^\"]*)\" in transition modal$")
	public void i_verify_DRG(String drg, String type, int n) {
		transition.iverifyDRG(drg, type, n);
	}
}

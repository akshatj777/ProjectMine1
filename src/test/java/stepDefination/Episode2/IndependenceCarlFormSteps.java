package stepDefination.Episode2;

import com.remedy.Episode2.IndependenceCarlForm;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class IndependenceCarlFormSteps extends DriverScript {
	
	IndependenceCarlForm independencecarl = new IndependenceCarlForm(driver);
	
	@Then("^I click on \"([^\"]*)\" section on left navigator$")
	public void I_Click_On_SideNavigationTab_On_CarlForm(String text) {
		independencecarl.IClickOnSideNavigationTabOnCarlForm(text);
	}
	
	@And("^I verify the \"([^\"]*)\" section of the carl form upon clicking on it$")
	public void I_Verify_Selected_Section_Of_The_Carl_Form_Upon_Clicking_OnIt(String text) {
		independencecarl.IVerifySelectedSectionOnTheCarlFormUponClickingOnIt(text);
	}
	
	@Then("^I verify that \"([^\"]*)\" section on carl form should be highlighted in left navigator upon clicking$")
	public void I_Verify_SelectedSection_On_CarlForm_Gets_Highlihted_In_LeftNavigator_Upon_Clicking(String text) {
		independencecarl.IVerifyThatSelectedSectionOnCarlFormGetsHihlightedInLeftNavigatorUponClick(text);
	}
	
	@Then("^I verify \"([^\"]*)\" dropdown bar should appear on Independence section$")
	public void I_Verify_DropdownBars_Should_Appear_On_Independence_Section(String text) {
		independencecarl.IVerifyTheDropdownBarsPresentInIndependenceSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" question appears on Independence section$")
	public void I_Verify_Question_Prsesent_On_Independence_Section(String text) {
		independencecarl.IVerifyTheQuestionPresentInIndependenceSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" option should appear below Does the patient have a history of falls on Independece section$")
	public void I_Verify_Options_Prsesent_Below_PatientHaveHistoryFalls_Question_On_Independence_Section(String text) {
		independencecarl.IVerifyOptionsPresentBelowPatientHaveHistoryFallsQuestionInIndependenceSection(text);
	}
	
	@Then("I verify \"([^\"]*)\" selected appears in the place holder of \"([^\"]*)\" dropdown on Independence section$")
	public void I_Verify_Option_Selected_Appears_In_The_PlaceHolder_Of_DropDown_On_Independence_Section(String text1, String text2) {
		independencecarl.IVerifyOptionSelectedAppearsInThePlaceHolderOfDropDownOnIndependenceSection(text1, text2);
	}
	
	@Then("^I click on \"([^\"]*)\" dropdown on Independece Section$")
	public void I_Click_On_The_DropDown_On_Independence_Section(String text) {
		independencecarl.IClickOnTheDropDownOnIndependenceSection(text);
	}	
	
	@Then("^I verify \"([^\"]*)\" option present in dropdown for cognitive status on Independece Section$")
	public void I_Verify_Options_Present_In_DropDown_On_Independence_Section(String option) {
		independencecarl.IVerifyOptionsPresentInDropDownOnIndependeceSection(option);
	}
	
	@Then("^I select \"([^\"]*)\" option in dropdown for cognitive status$")
	public void I_Selct_Option_In_The_DropDown_On_Independence_Section(String option) {
		independencecarl.ISelectTheOptionInTheDropDownOnIndependenceSection(option);
	}

}

package stepDefination.Episode1;

import java.text.ParseException;
import java.util.List;
import com.remedy.episode1.CommonFeature;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CommonFeatureSteps extends DriverScript {
	CommonFeature common = new CommonFeature(driver);
	EC1DashboardSteps ec = new EC1DashboardSteps();

	@When("^I click \"([^\"]*)\" element \"([^\"]*)\"$")
	public void i_Click_Element(String text, String locator) throws Throwable {
		common.iClickElement(locator);
	}

	@When("^I click \"([^\"]*)\" xpath element \"([^\"]*)\"$")
	public void i_Click_Xpath_Element(String text, String locator) {
		common.iClickXpathElement(locator);
	}

	@When("^I will wait to see value \"([^\"]*)\" in element \"([^\"]*)\"$")
	public void i_Wait_For_Value_In_Element(String value, String locator) throws InterruptedException {
		common.iWaitForValueInElement(value, locator);
	}

	public void click_Visible_Link(String link) {
		common.clickVisibleLink(link);
	}

	@Then("^I will wait to see \"([^\"]*)\" in \"([^\"]*)\" tag$")
	public void i_Wait_To_See(String text, String tag) throws InterruptedException {
		common.i_Wait_To_See(text, tag);
	}

	@Then("^I will wait for invisibility of \"([^\"]*)\" in \"([^\"]*)\" tag$")
	public void i_Wait_For_Invisibility_Of(String text, String tag) {
		common.i_Wait_For_Invisibility_Of(text, tag);
	}

	@Then("^I will wait to see onboarding status \"([^\"]*)\"$")
	public void i_Wait_To_See_onboarding_status(String text) {
		common.iWaitToSeeonboarding(text);
	}

	@And("^I am on \"([^\"]*)\"$")
	public void i_Am_On(String URL) {
		common.iAmOn(URL);
	}

	@Then("^I search \"([^\"]*)\" from the list of Filter$")
	public void i_Search_Filter(String Filter) {
		common.iSearchFilter(Filter);
	}

	@And("^I navigate to the filtered patient summary page \"([^\"]*)\"$")
	public void i_navigate_to_the_patients_summary_page(String Url) {
		common.inavigatetothepatientssummarypage(Url);
	}

	@When("^I click on episode marker drop down$")
	public void i_click_On_Episode_Marker() {
		common.iclickOnEpisodeMarker();
	}

	@Then("^I will wait to see \"([^\"]*)\" state$")
	public void i_Will_Wait_To_See_State(String state) {
		common.iWillWaitToSeeState(state);
	}

	@Then("^I will wait to see \"([^\"]*)\" Facility on Episode Marker$")
	public void i_Will_Wait_To_See_Facility_on_Episode_Marker(String facility) {
		common.iWillWaitToSeeFacilityonEpisodeMarker(facility);
	}

	@Then("^I should not see \"([^\"]*)\" in \"([^\"]*)\" tag$")
	public void i_Should_not_see(String text, String tag) {
		common.iShouldnotsee(text, tag);
	}

	@Then("^I Expand to the patient summary page$")
	public void i_Expand_to_the_patient_summary_page() {
		common.iExpandtothepatientsummarypage();
	}

	@When("^I reload the page$")
	public void I_reload_the_page() {
		common.Ireloadthepage();
	}

	@Then("^I will not see \"([^\"]*)\" xpath element \"([^\"]*)\"$")
	public void i_Will_Not_See(String text, String element) {
		common.iWillNotSee(text, element);
	}

	@Then("^I navigate to the \"([^\"]*)\"$")
	public void i_navigate_to(String URL) {
		common.inavigateto(URL);
	}

	@And("^I will verify Episode Marker Admit Date \"([^\"]*)\" and Termination date \"([^\"]*)\" and Episode Status \"([^\"]*)\"$")
	public void i_Verify_Episode_Marker_Admit_Terminate_date(int days, int terminate_date, String status)
			throws ParseException {
		common.iVerifyEpisodeMarkerAdmitTerminatedate(days, terminate_date, status);
	}

	@And("^I will verify Episode Marker Admit Date \"([^\"]*)\" and \"([^\"]*)\" Discharge date \"([^\"]*)\" with \"([^\"]*)\" to show end date and Episode Status \"([^\"]*)\"$")
	public void i_Verify_Episode_Marker_Admit_Discharge_date(int days, String logic, int discharge_date,int terminate_date, String status) throws ParseException {
		common.iVerifyEpisodeMarkerAdmitEnddate(days, discharge_date, logic, terminate_date, status);
	}

	@And("^I select \"([^\"]*)\" from \"([^\"]*)\" by xpath \"([^\"]*)\"$")
	public void i_Select_value(String variable, String value, String xpath) throws ParseException {
		common.i_Select_value(variable, value, xpath);
	}

	@And("^I press \"([^\"]*)\"$")
	public void i_press(String text) {
		common.i_press(text);
	}

	@When("^I fill in \"([^\"]*)\" xpath \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_Fill_in_Text(String variable, String xpath, String value) {
		common.iFillinText(variable, xpath, value);
	}

	@Then("^I click on the \"([^\"]*)\" filter$")
	public void i_Click_on_the_filter(String filter) {
		common.iClickonthefilter(filter);
	}

	@Then("^I will wait to see the \"([^\"]*)\" element xpath \"([^\"]*)\"$")
	public void wait_To_See_xpath_element(String text, String xpath) {
		common.wait_To_See_xpath_element(text, xpath);
	}

	@When("^I select \"([^\"]*)\" patient list filter xpath \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_Select_patient_list_filter(String variable, String xpath, int days) {
		common.iSelectpatientlistfilter(variable, xpath, days);
	}

	@When("^I click Schedule Appointment$")
	public void i_Click_Appointment() {
		common.i_Click_Appointment();
	}

	@Then("^I click \"([^\"]*)\" text in tag \"([^\"]*)\"$")
	public void click_text(String text, String tag) {
		common.clicktext(text, tag);
	}

	@Then("^I will verify text \"([^\"]*)\" in xpath element \"([^\"]*)\"$")
	public void i_will_verify_text_in_element(String text, String xpath) {
		common.iwillverifytextinelement(text, xpath);
	}

	@Then("^I will verify the list of options in dropdown list \"([^\"]*)\" element xpath \"([^\"]*)\"$")
	public void i_will_verify_list_of_options_in_dropdown(String element, String xpath, List<String> dropdownvalues) {
		common.iwillverifylistofoptionsindropdown(element, xpath, dropdownvalues);
	}

	@Then("^I clear the \"([^\"]*)\" xpath \"([^\"]*)\"$")
	public void clear_Value(String text, String xpath) {
		common.clear_Value(text, xpath);
	}
}

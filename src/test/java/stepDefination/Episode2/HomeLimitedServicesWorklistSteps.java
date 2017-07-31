package stepDefination.Episode2;

import com.remedy.Episode2.HomeLimitedServicesWorklist;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class HomeLimitedServicesWorklistSteps extends DriverScript {

	HomeLimitedServicesWorklist homeworklist = new HomeLimitedServicesWorklist(driver);

	@Then("^I click on the Post Acute tab on the patient Card Page$")
	public void I_click_on_the_Post_Acute_tab_on_the_patient_Card_Page() throws Throwable {
		homeworklist.IclickonthePostAcutetabonthepatientCardPage();
	}

	@Then("^I click on forward arrow button to navigate to Home with Limited Services tab on the patient Card Page$")
	public void I_click_on_forward_arrow_button_to_navigate_to_Home_with_Limited_Services_tab_on_the_patient_Card_Page() throws Throwable {
		homeworklist.IclickonforwardarrowbuttontonavigatetoHomewithLimitedServicestabonthepatientCardPage();
	}

	@Then("^I click on Home with Limited Services sub tab on the patient Card Page$")
	public void I_click_on_Home_with_Limited_Services_sub_tab_on_the_patient_Card_Page() throws Throwable {
		homeworklist.IclickonHomewithLimitedServicessubtabonthepatientCardPage();
	}

	@Then("^I select the \"([^\"]*)\" DRG value on the Diagnosis and DRG tab on add a new transition$")
	public void I_select_the_DRG_value_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRG) throws InterruptedException,Throwable {
		homeworklist.IselecttheDRGvalueontheDiagnosisandDRGtabonaddanewtransition(DRG);
	}

	@Then("^I select the facility value Stamford \"([^\"]*)\" on add a new transition$")
	public void I_select_the_facility_value_Stamford_on_add_a_new_transition(String facility) throws InterruptedException,Throwable {
		homeworklist.IselectthefacilityvalueStamfordonaddanewtransition(facility);
	}

	@Then("^I scroll down the page to make the element visible$")
	public void I_scroll_down_the_page_to_make_the_element_visible() throws Throwable {
		homeworklist.Iscrolldownthepagetomaketheelementvisible();
	}

	@Then("I click on datepicker button to select the admit date on add a new transition on Patient Summary$")
	public void I_click_on_datepicker_button_to_select_the_admit_date() throws Throwable {
		homeworklist.Iclickondatepickerbuttontoselecttheadmitdate();
	}

	@Then("^I click on the Post Acute tab on the patient Card Page JavaScript$")
	public void I_click_on_the_Post_Acute_tab_on_the_patient_Card_Page_JavaScript() throws Throwable {
		homeworklist.IclickonthePostAcutetabonthepatientCardPageJavaScript();
	}

	@Then("^I reload my page$")
	public void I_reload_my_page() throws Throwable {
		homeworklist.Ireloadmypage();
	}

}
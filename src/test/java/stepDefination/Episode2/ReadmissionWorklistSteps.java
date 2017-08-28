package stepDefination.Episode2;

import com.remedy.Episode2.ReadmissionWorklist;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class ReadmissionWorklistSteps extends DriverScript {

	ReadmissionWorklist admission = new ReadmissionWorklist(driver);

	@Then("^I select the care setting value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_care_setting_value_on_add_a_new_transition(String caresetting) throws Throwable {
		admission.Iselectthecaresettingvalueonaddanewtransition(caresetting);
	}

	@Then("^I select the care type value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_care_type_value_on_add_a_new_transition(String caretypevalue) throws Throwable {
		admission.Iselectthecaretypevalueonaddanewtransition(caretypevalue);
	}

	@Then("^I select the facility value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_facility_value_on_add_a_new_transition(String facilityvalue) throws Throwable {
		admission.Iselectthefacilityvalueonaddanewtransition(facilityvalue);
	}

	@Then("^I select the \"([^\"]*)\" LOS days on Discharge date on Add Transition$")
	public void I_select_the_LOS_days_on_Discharge_date_on_Add_Transition(String days) throws Throwable {
		admission.IselecttheLOSdaysonDischargedateonAddTransition(days);
	}

	@Then("^I select the \"([^\"]*)\" DRG type on the Diagnosis and DRG tab on add a new transition$")
	public void I_select_the_DRG_type_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRGtype) throws Throwable {
		admission.IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(DRGtype);
	}

	@Then("^I select the \"([^\"]*)\" DRG on the Diagnosis and DRG tab on add a new transition$")
	public void I_select_the_DRG_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRG) throws Throwable {
		admission.IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(DRG);
	}

	@Then("^I select the \"([^\"]*)\" 63 DRG on the Diagnosis and DRG tab on add a new transition$")
	public void I_select_the_DRG_63_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRG) throws Throwable {
		admission.Iselectthe63DRGontheDiagnosisandDRGtabonaddanewtransition(DRG);
	}

	@Then("^I select the Discharge care setting value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_discharge_care_setting_value_on_add_a_new_transition(String caresetting) throws Throwable {
		admission.Iselectthedischargecaresettingvalueonaddanewtransition(caresetting);
	}

	@Then("^I select the Discharge care type value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_discharge_care_type_value_on_add_a_new_transition(String caretypevalue) throws Throwable {
		admission.Iselectthedischargecaretypevalueonaddanewtransition(caretypevalue);
	}

	@Then("^I select the discharge facility value \"([^\"]*)\" on add a new transition$")
	public void I_select_the_discharge_facility_value_on_add_a_new_transition(String facilityvalue) throws Throwable {
		admission.Iselectthedischargefacilityvalueonaddanewtransition(facilityvalue);
	}

	@Then("^I click on the agree button on the Patient Card page$")
	public void I_click_on_the_agree_button_on_the_Patient_Card_page() throws Throwable {
		admission.IclickontheagreebuttononthePatientCardpage();
	}
	
    @Then("^I click on update transition to add a new episode$")
	public void I_click_on_update_transition_to_add_a_new_episode() throws Throwable {
		admission.Iclickonupdatetransitiontoaddanewepisode();
	}

	@Then("^I click on the \"([^\"]*)\" searched patient on the Patient Card Page$")
	public void I_click_on_last_name_the_searched_patient_on_the_Patient_Card_Page(String last_name) throws Throwable {
		admission.IclickonlastnamethesearchedpatientonthePatientCardPage(last_name);
	}

	@Then("^I click on the centre of the calendar header on Discharge datepicker to select date and month on Transition Page$")
	public void I_click_on_the_centre_of_the_calendar_header_on_Discharge_datepicker_to_select_date_and_month_on_Transition_Page() throws Throwable {
		admission.IclickonthecentreofthecalendarheaderonDischargedatepickertoselectdateandmonthonTransitionPage();
	}

	@Then("^I click on the previous next link to select the required year \"(.*)\" on date picker$")
	public void I_click_on_the_previous_next_link_to_select_the_required_year_on_date_picker(int days) throws Throwable {
		admission.Iclickonthenextlinktoselecttherequiredyearondatepicker(days);
	}

	@Then("^I click on the centre of the calendar header to select date and month on Transition Page$")
	public void I_click_on_the_centre_of_the_calendar_header_to_select_date_and_month() throws Throwable {
		admission.IclickonthecentreofthecalendarheadertoselectdateandmonthonTransitionPage();
	}

	@Then("^I select the \"(.*)\" from the calendar from date picker on Transition Page$")
	public void I_select_the_date_from_the_calendar_from_date_picker_on_Transition_Page(int days) throws Throwable {
		admission.Iselectthedatefromthecalendarfromdatepicker(days);
	}

	@Then("^I select the \"(.*)\" time from the calendar from date picker on Transition Page$")
	public void I_select_the_time_from_the_calendar_from_date_picker_on_Transition_Page(String date) throws Throwable {
		admission.IselectthetimefromthecalendarfromdatepickeronTransitionPage(date);
	}

	@Then("^I click on the Readmissions sub tab on Impatient tab on patient Card Page$")
	public void I_click_on_the_Readmissions_sub_tab_on_Impatient_tab_on_patient_Card_Page() throws Throwable {
		admission.IclickontheReadmissionssubtabonImpatienttabonpatientCardPage();
	}

	@Then("^I verify the \"([^\"]*)\" patient present on the Patient Card Page$")
	public void I_verify_the_patient_present_on_the_Patient_Card_Page(String last_name) throws Throwable {
		admission.IverifythepatientpresentonthePatientCardPage(last_name);
	}

	@Then("^I verify the \"([^\"]*)\" patient not present on the Patient Card Page$")
	public void I_verify_the_patient_not_present_on_the_Patient_Card_Page(String last_name) throws Throwable {
		admission.IverifythepatientnotpresentonthePatientCardPage(last_name);
	}

	@Then("^I get the discharge date of the previous transition added from transition list$")
	public void I_get_the_discharge_date_of_the_previous_transition_added_from_transition_list() throws Throwable {
		admission.Igetthedischargedateoftheprevioustransitionaddedfromtransitionlist();
	}

	@Then("^I click on the edit button on the \"([^\"]*)\" transition to edit the Active transition$")
	public void I_click_on_the_edit_button_to_edit_the_Active_transition(String transition_value) throws InterruptedException,Throwable {
		admission.IclickontheeditbuttontoedittheActivetransition(transition_value);
	}

	@Then("I click on datepicker button to select the discharge date on add a new transition$")
	public void I_click_on_datepicker_button_to_select_the_discharge_date() throws Throwable {
		admission.Iclickondatepickerbuttontoselectthedischargedate();
	}

	@Then("^I click on the delete button on the transition to delete all the transitions$")
	public void I_click_on_the_delete_button_on_the_transition_to_delete_all_the_transitions() throws InterruptedException,Throwable {
		admission.Iclickonthedeletebuttononthetransitiontodeleteallthetransitions();
	}

	@Then("^I enter \"([^\"]*)\" in the search box on the admission tab on patients page$")
	public void i_enter_and_in_the_searchbox_on_the_admission_tab_on_patients_page(String search) throws Throwable {
		admission.ienterandinthesearchboxontheadmissiontabonpatientspage(search);
	}

	@Then("^I enter ([^\"]*) on create transition page on transition tab on Patient Summary$")
	public void I_enter_on_create_transition_page_on_transition_tab_on_Patient_Summary(String admitreason) throws Throwable {
		admission.IenteroncreatetransitionpageontransitiontabonPatientSummary(admitreason);
	}
    
	@Then ("^I wait to see and enable the attestation on the \"([^\"]*)\" patient on the Patient Card page$")
	public void I_wait_to_see_and_enable_the_attestation_on_the_patient_for_on_the_Patient_Card_page(int patientno) throws Throwable {
		admission.IwaittoseeandenabletheattestationonthepatientforonthePatientCardpage(patientno);
	}
	
	@Then("^I select the \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" by \"([^\"]*)\" on add a new transition$")
	public void I_select_drop_down_value_on_add_a_new_transition(String admissiontype,String variable,String value,String css) throws Throwable {
		admission.Iselectdropdownvalueonaddanewtransition(admissiontype,variable,value,css);
	}
	
	@Then("^I select the \"([^\"]*)\" facility \"([^\"]*)\" by \"([^\"]*)\" on add a new transition$")
	public void I_select_facility_on_add_a_transition(String admissiontype,String facilityvalue,String locator) throws Throwable {
		admission.Iselectthefacilityonaddanewtransition(admissiontype,facilityvalue,locator);
	}
	
	@Then ("^I remove the discharge date on the transition page$")
	public void I_remove_the_discharge_date_on_the_transition_page() throws Throwable {
		admission.Iremovethedischargedateonthetransitionpage();
	}
}
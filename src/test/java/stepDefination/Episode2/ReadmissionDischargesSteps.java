package stepDefination.Episode2;

import com.remedy.Episode2.ReadmissionDischarges;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class ReadmissionDischargesSteps extends DriverScript {

	ReadmissionDischarges readmitdischarge = new ReadmissionDischarges(driver);

	@Then("^I click on Readmission Discharges Facility sub tab on the patient Card Page$")
	public void I_click_on_Readmission_Discharge_Facility_sub_tab_on_the_patient_Card_Page() {
		readmitdischarge.IclickonReadmissionDischargeFacilitysubtabonthepatientCardPage();
	}

	@Then("^I select the midnight time from the calendar on admit date from date picker on Transition Page$")
	public void I_select_the_time_from_the_calendar_on_admit_date_from_date_picker_on_Transition_Page()
			throws Throwable {
		readmitdischarge.IselectthemidinighttimefromthecalendaronadmitdatefromdatepickeronTransitionPage();
	}

	@Then("^I select the before midinight time from the calendar on admit date from datepicker on Transition Page$")
	public void I_select_the_before_midinight_time_from_the_calendar_on_admit_date_from_datepicker_on_Transition_Page()
			throws Throwable {
		readmitdischarge.IselectthebeforemidinighttimefromthecalendaronadmitdatefromdatepickeronTransitionPage();
	}

	@Then("^I click on the Diagnosis and DRG tab on add a new transition to select the DRG No JavaScript$")
	public void I_click_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition_to_select_the_DRG_No_JavaScript()
			throws Throwable {
		readmitdischarge.IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRGnoJavaScript();
	}

	@Then("^I click on Inpatient Care sub tab on the patient Card Page$")
	public void I_click_on_Inpatient_Care_sub_tab_on_the_patient_Card_Page() throws Throwable {
		readmitdischarge.IclickonInpatientCaresubtabonthepatientCardPage();
	}

	@Then("^I click on the Post Acute Onboarding tab on the patient Card Page$")
		public void I_click_on_the_Post_Acute_Onboarding_tab_on_the_patient_Card_Page() throws Throwable {
			readmitdischarge.IclickonthePostAcuteOnboardingtabonthepatientCardPage();
		}
	
}

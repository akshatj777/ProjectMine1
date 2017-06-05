package stepDefination.Episode2;

import com.remedy.Episode2.WorklistNeedReview;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class WorklistNeedReviewSteps extends DriverScript {

	WorklistNeedReview needreview = new WorklistNeedReview(driver);

	@Then("^I click on the Needs Review tab on the patient Card Page$")
	public void I_click_on_the_Needs_Review_tab_on_the_patient_Card_Page() {
		needreview.IclickontheNeedsReviewtabonthepatientCardPage();
	}

	@Then("^I select the midnight time from the calendar from date picker on Transition Page$")
	public void I_select_the_time_from_the_calendar_from_date_picker_on_Transition_Page() {
		needreview.IselectthemidinighttimefromthecalendarfromdatepickeronTransitionPage();
	}

	@Then("^I select the before midinight time from the calendar from datepicker on Transition Page$")
	public void I_select_the_before_midinight_time_from_the_calendar_from_datepicker_on_Transition_Page() {
		needreview.IselectthebeforemidinighttimefromthecalendarfromdatepickeronTransitionPage();
	}

	@Then("^I click on the centre of the calendar header to select discharge date and month on Transition Page$")
	public void I_click_on_the_centre_of_the_calendar_header_to_select_discharge_date_and_month_on_Transition_Page() {
		needreview.IclickonthecentreofthecalendarheadertoselectdischargedateandmonthonTransitionPage();
	}

	@Then("^I zoom out my browser by \"(.*)\" pixels$")
	public void I_zoom_out_my_browser(String pixels) {
		needreview.Izoomoutmybrowser(pixels);
	}
}
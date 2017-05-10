package stepDefination.Reports;

import com.remedy.Reports.ReportsGlobalFilters;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ReportsGlobalFiltersSteps extends DriverScript {

	ReportsGlobalFilters globalfilters=new ReportsGlobalFilters(driver);
	
	@Then("^I verify \"([^\"]*)\" in the reports header page$")
	public void i_verify_in_the_report_header_page(String text) throws Throwable{
		globalfilters.iVerifyReportHeaderInGlobalFilter(text);
	}
	
	@When("^I see \"([^\"]*)\" filters applied under global filters applied count$")
	public void i_see_under_global_filters_applied_count(String text)throws Throwable{
		globalfilters.iSeeUnderGlobalFilterAppliedCount(text);
	}
	
	@Then("^I click on Show Summary button to unhide the available global filters$")
	public void i_click_on_show_summary_button_to_unhide_the_available_global_filters()throws Throwable{
		globalfilters.iClickOnSummaryButtonUnderGlobalFilter();
	}
	
	@Then("^I verify \"([^\"]*)\" filter is appearing under global filters$")
	public void i_verify_filter_is_appearing_under_global_filters(String text)throws Throwable{
		globalfilters.iVerifyFilterAppearingUnderGlobalFilter(text);
	}
	
	@Then("^I see ([^\"]*) appearing under participant filter of global filters$")
	public void i_see_appearing_under_participant_filter_of_global_filters(String text)throws Throwable{
		globalfilters.iSeeAppearingUnderFilterNameOfGlobalFilters(text);
	}
	
	@Then("^I see ([^\"]*) appearing under episode initiator filter of global filters$")
	public void i_see_appearing_under_episode_initiator_filter_of_global_filters(String text)throws Throwable{
		globalfilters.iSeeAppearingUnderFilterNameOfGlobalFilters(text);
	}
	
	@Then("^I see ([^\"]*) appearing under anchor facility filter of global filters$")
	public void i_see_appearing_under_anchor_facility_filter_of_global_filters(String text)throws Throwable{
		globalfilters.iSeeAppearingUnderFilterNameOfGlobalFilters(text);
	}
	
	@Then("^I click on ([^\"]*) checkbox under participant for global filters$")
	public void i_click_on_checkbox_under_participant_for_global_filters(String text)throws Throwable{
		globalfilters.iClickOnCheckboxForGlobalFilters(text);
	}
	
	@And("^I verify ([^\"]*) is appearing under applied participant on global filters$")
	public void i_verify_is_appearing_under_applied_participant_on_global_filters(String text)throws Throwable{
		globalfilters.iShouldSeeUnderParticipantAppliedFilterOfGlobalFilter("Participant: "+text);
	}
	
	@And("^I verify ([^\"]*) is appearing under applied episode initiator on global filters$")
	public void i_verify_is_appearing_under_applied_episode_initiator_on_global_filters(String text)throws Throwable{
		globalfilters.iShouldSeeUnderParticipantAppliedFilterOfGlobalFilter("Episode Initiator: "+text);
	}
	
	@And("^I verify ([^\"]*) is appearing under applied anchor facility on global filters$")
	public void i_verify_is_appearing_under_applied_anchor_facility_on_global_filters(String text)throws Throwable{
		globalfilters.iShouldSeeUnderParticipantAppliedFilterOfGlobalFilter("Anchor Facility: "+text);
	}
	
	@And("^I click on Apply filters button for global filters$")
	public void i_click_on_apply_button_for_global_filters()throws Throwable{
		globalfilters.iClickOnApplyFilterButton();
	}
	
	@Then("^I click on \"([^\"]*)\" report under \"([^\"]*)\" reports tile on the top of reports page$")
	public void i_click_on_report_under_reports_tile_on_the_top_of_reports_page(String report,String tile)throws Throwable{
		globalfilters.iClickOnReportTileOnTopOfReportPage(report, tile);
	}
	
	@Then("^I move to element and click on \"([^\"]*)\" report under \"([^\"]*)\" reports tile on the top of reports page$")
	public void i_move_to_element_and_click_on_report_under_reports_tile_on_the_top_of_reports_page(String report,String tile)throws Throwable{
		globalfilters.iMovetoElementToClickOnReportTileOnTopOfReportPage("//li[button[text()='"+tile+"']] //button[span[text()='"+report+"']]");
	}
	
	@And("^I see \"([^\"]*)\" report is appearing under \"([^\"]*)\" dropdown on the top menu$")
	public void i_see_report_is_appearing_under_dropdown_on_the_top_menu(String report,String tile)throws Throwable{
		globalfilters.iSeeReportTileOnTopOfReportPage(report, tile);
	}
	
	@Then("^I verify participant filter is selected with ([^\"]*) under selected filters$")
	public void i_verify_participant_filter_is_selected_with_under_selected_filters(String participantid)throws Throwable{
		globalfilters.iVerifyParticipantIDAppearingInSelectedFilter("Participant ID includes "+participantid);
	}
	
	@Then("^I verify episode initiator filter is selected with ([^\"]*) under selected filters$")
	public void i_verify_episode_initiator_filter_is_selected_with_under_selected_filters(String bpid)throws Throwable{
		globalfilters.iVerifyBPIDAppearingInSelectedFilter("BPID includes "+bpid);
	}
	
	@Then("^I verify dashboard anchor ccn filter is selected with ([^\"]*) under selected filters$")
	public void i_verify_dashboard_anchor_ccn_filter_is_selected_with_under_selected_filters(String ccn)throws Throwable{
		globalfilters.iVerifyCCNAppearingInSelectedFilter("Dashboard - Anchor CCN includes "+ccn);
	}
	
	@And("^I click on reports tile on the top of reports page$")
	public void i_click_on_reports_tile_on_the_top_of_reports_page()throws Throwable{
		globalfilters.iClickOnReportTileOnTheTopOfReportsPage();
	}
	
	@When("^I click on cross mark beside the selected participant filter with ([^\"]*)$")
	public void i_click_on_cross_mark_beside_the_selected_participant_filter_with(String participant)throws Throwable{
		globalfilters.iClickOnCrossMarkForSelectedParticipantFilter(participant);
	}
	
	@When("^I click on cross mark beside the selected episode initiator filter with ([^\"]*)$")
	public void i_click_on_cross_mark_beside_the_selected_episode_initiator_filter_with(String episodeinitiator)throws Throwable{
		globalfilters.iClickOnCrossMarkForSelectedEpisodeInitiatorFilter(episodeinitiator);
	}
	
	@When("^I click on cross mark beside the selected anchor facility filter with ([^\"]*)$")
	public void i_click_on_cross_mark_beside_the_selected_anchor_facility_filter_with(String anchorfacility)throws Throwable{
		globalfilters.iClickOnCrossMarkForSelectedEpisodeInitiatorFilter(anchorfacility);
	}
	
	@When("^I click on Clear button to clear the selected filter$")
	public void i_click_on_clear_button_to_clear_the_selected_filter()throws Throwable{
		globalfilters.iClickOnClearButtonToClearSelectedFilter();
	}
	
	@Then("^I click on \"([^\"]*)\" search icon to search existing data on global filters$")
	public void i_click_on_search_icon_to_search_existing_data_on_global_filters(String text)throws Throwable{
		globalfilters.iClickOnSearchIconForGlobalFilter(text);
	}
	
	@And("^I seach with \"([^\"]*)\" under \"([^\"]*)\" filter on global filter$")
	public void i_search_with_under_filter_on_global_filter(String search,String filter)throws Throwable{
		globalfilters.iSearchUnderFilterOnGlobalFilter(search, filter);
	}
	
	@When("^I click on \"([^\"]*)\" tile on the top navigation of reports page$")
	public void i_click_on_tile_on_the_top_navigation_of_reports_page(String tile)throws Throwable{
		globalfilters.iClickOnTileOnTheTopNavigationOfReportsPage(tile);
	}
}

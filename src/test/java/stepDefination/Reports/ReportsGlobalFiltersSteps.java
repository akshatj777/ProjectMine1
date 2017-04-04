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
	
	@When("^I see \"([^\"]*)\" under global filters applied count$")
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
	
	@And("^I should see \"([^\"]*)\" under applied filter of global filters$")
	public void i_should_see_under_applied_filter_of_global_filters(String text)throws Throwable{
		globalfilters.iShouldSeeUnderAppliedFilterOfGlobalFilter(text);
	}
	
	@And("^I click on Apply filters button for global filters$")
	public void i_click_on_apply_button_for_global_filters()throws Throwable{
		globalfilters.iClickOnApplyFilterButton();
	}
	
	@Then("^I click on \"([^\"]*)\" report under \"([^\"]*)\" reports tile on the top of reports page$")
	public void i_click_on_report_under_reports_tile_on_the_top_of_reports_page(String report,String tile)throws Throwable{
		globalfilters.iClickOnReportTileOnTopOfReportPage(report, tile);
	}
}

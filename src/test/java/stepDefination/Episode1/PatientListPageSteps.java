package stepDefination.Episode1;

import com.remedy.episode1.PatientsListPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 5/22/16.
 */
public class PatientListPageSteps extends DriverScript {

    PatientsListPage patientsList = new PatientsListPage(driver);


    @Then("^I should see \"([^\"]*)\" on the patient list page$")
    public void iShouldSeeOnThePatientListPage(String text) throws Throwable {

        patientsList.iverifyPatientListPageheader(text);
    }
    
    @When("^I click on \"([^\"]*)\" in the left navigator present on the episode dashboard page$")
    public void i_click_on_in_the_left_navigator_present_on_the_episode_dashboard_page(String text) throws Throwable {
    	 patientsList.iClickOnTheLeftNavigatorPresentOnTheEpisodeDashboardPage(text);
    }

    @Then("^I should see \"([^\"]*)\" in the Patients dropdown menu$")
    public void i_should_see_in_the_Patients_dropdown_menu(String text) throws Throwable {
    	 patientsList.iShouldSeeInThePatientsDropdownMenu(text);
    }

    @When("^I click on \"([^\"]*)\" in the Patients dropdown menu$")
    public void i_click_on_in_the_Patients_dropdown_menu(String text) throws Throwable {
    	patientsList.iClickOnInThePatientsDropdownMenu(text);
    }


    @Then("^I click on Pin to dashboard in \"([^\"]*)\" to pin the filter to dashboard$")
    public void i_click_on_Pin_to_dashboard_in_to_pin_the_filter_to_dashboard(String text) throws Throwable {
    	patientsList.iClickOnPinToDashboardInToPinTheFilterToDashboard(text);
    }

    @Then("^I click on Unpin from dashboard in \"([^\"]*)\" to unpin the filter from dashboard$")
    public void i_click_on_Unpin_from_dashboard_in_to_unpin_the_filter_from_dashboard(String text) throws Throwable {
    	patientsList.iClickOnUnpinFromDashboardInToPinTheFilterToDashboard(text);
    }
    
    @Then("^I click on Pin to bookmarks in \"([^\"]*)\" to pin the filter to dashboard$")
    public void i_click_on_Pin_to_bookmarks_in_to_pin_the_filter_to_dashboard(String text) throws Throwable {
    	patientsList.iClickOnPinToBookmarksInToPinTheFilterToDashboard(text);
    }

    @Then("^I click on Unpin from bookmarks in \"([^\"]*)\" to unpin the filter from dashboard$")
    public void i_click_on_Unpin_from_bookmarks_in_to_unpin_the_filter_from_dashboard(String text) throws Throwable {
    	patientsList.iClickOnUnpinFromBookmarksInToUnpinTheFilterToDashboard(text);
    }



}

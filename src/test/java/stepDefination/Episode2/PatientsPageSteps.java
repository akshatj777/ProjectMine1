package stepDefination.Episode2;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPageSteps extends DriverScript {
    PatientsPage patientsPage = new PatientsPage(driver);

    @Then("^I should see \"([^\"]*)\" tab in the filter bar on patients page$")
    public void i_should_see_tab_in_the_filter_bar_on_patients_page(String filterTabText) throws Throwable {
        patientsPage.iVerifyTabInFilterBarOnPatientsPage(filterTabText);

    }

    @When("^I click on \"([^\"]*)\" tab in the filter bar on patients page$")
    public void i_click_on_tab_in_the_filter_bar_on_patients_page(String filterTabText) throws Throwable {
        patientsPage.iClickTabInFilterBarOnPatientsPage(filterTabText);
    }

    @Then("^I should see view section on patients page$")
    public void i_should_see_view_section_on_patients_page() throws Throwable {
        patientsPage.iVerifyViewSectionOnPatientsPage("View:");

    }

    @Then("^I should see \"([^\"]*)\" view as active view on patients page$")
    public void i_should_see_view_as_active_view_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iVerifyViewAsActiveViewOnPatientsPage(By.cssSelector("button.valentino-icon-"+viewOption+""));
    }

    @Then("^I should have \"([^\"]*)\" view option on patients page$")
    public void i_sould_have_view_option_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iVerifyToHaveViewOptionOnPatientsPage(By.cssSelector("button.valentino-icon-"+viewOption+""), viewOption);
    }

    @When("^I select \"([^\"]*)\" view on patients page$")
    public void i_select_view_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iClickViewOnPatientsPage("button.valentino-icon-"+viewOption+"");
    }

    @When("^I type \"([^\"]*)\" in the patient search field on patients page$")
    public void i_type_in_the_patient_search_field_on_patients_page(String patientName) throws Throwable {
        patientsPage.iEnterInPatientSearchFieldOnPatientsPage(patientName);
    }

    @Then("^I should see patient searched result contains \"([^\"]*)\" on patients page$")
    public void i_should_see_patient_searched_result_contains_on_patient_page(String patientText) throws Throwable {
        patientsPage.iVerifyPatientSearchedResultContainsTextOnPatientPage(patientText);

    }


}

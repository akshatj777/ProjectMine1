package stepDefination.Episode2;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
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
}

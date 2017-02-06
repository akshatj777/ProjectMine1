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

    @When("^I click on \"([^\"]*)\" in the Patients dropdown menu$")
    public void i_click_on_in_the_Patients_dropdown_menu(String text) throws Throwable {
        patientsList.iClickOnInThePatientsDropdownMenu(text);
    }

    @When("^I click on Add Patient button present on the ec(\\d+) patients page$")
    public void i_click_on_Add_Patient_button_present_on_the_ec_patients_page(int text) throws Throwable {
        patientsList.iClickOnAddPatientButtonPresentOnTheEcPatientsPage(text);
    }

}

package stepDefination.Episode1;

import com.remedy.episode1.Ec1DashboardPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

/**
 * Created by salam on 5/6/16.
 */
public class EC1DashboardSteps extends DriverScript {

    Ec1DashboardPage ec1Dashboard = new Ec1DashboardPage(driver);


    @And("^I should see \"([^\"]*)\" on Ec1 dashboard page$")
    public void iShouldSeeOnEc(String text) throws Throwable {

        ec1Dashboard.iverifyPageHeader("Dashboard");

    }

    @Then("^I should see \"([^\"]*)\"$")
    public void iShouldSeeMyPatient(String text) throws Throwable {

        ec1Dashboard.iverifyMyPatient(text);
    }


    @And("^I expand the Patients panel on Dashboard$")
    public void iExpandThePatientsPanelOnDashboard() throws Throwable {

        ec1Dashboard.iexapndsPatiensListTab();

    }


    @Then("^I click on patientlist link$")
    public void iClickOnPatientlistLink() throws Throwable {
        ec1Dashboard.iclickPatiensList();
    }

    @And("^I click on the Add Patient Button$")
    public void iClickOnTheAddPatientButton() throws Throwable {
       ec1Dashboard.iclickOnAddPainetButton();
    }


}
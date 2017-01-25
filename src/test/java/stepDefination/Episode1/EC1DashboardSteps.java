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


    @Then("^I should see Episode header text \"([^\"]*)\"$")
    public void iShouldSeeEpisodeHeaderText(String header) throws Throwable {

        ec1Dashboard.iverifyEc1DashboardHeaderText(header);
    }
    
    @Then("^I should see user profile icon on product tile page$")
    public void i_should_see_user_profile_icon_on_product_tile_page() throws Throwable {
    	ec1Dashboard.iShouldSeeUserProfileIconOnProductTilePage();
    }

    @Then("^I click on the user profile icon present on the product tile page$")
    public void i_click_on_the_user_profile_icon_present_on_the_product_tile_page() throws Throwable {
    	ec1Dashboard.iClickOnTheUserProfileIconPresentOnTheProductTilePage();
    }

    @Then("^I click on Logout button present on the user profile drop down$")
    public void i_click_on_Logout_button_present_on_the_user_profile_drop_down() throws Throwable {
    	ec1Dashboard.iClickOnLogoutButtonPresentOnTheUserProfileDropDown();
    }
}
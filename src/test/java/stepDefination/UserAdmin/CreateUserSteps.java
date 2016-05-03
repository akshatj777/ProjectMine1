package stepDefination.UserAdmin;

import com.remedy.pageObject.CreateUserPage;
import com.remedy.pageObject.LandingPage;
import com.remedy.pageObject.LoginPage;
import com.remedy.pageObject.UserAdminHomePage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 7/29/15.
 */
public class CreateUserSteps extends DriverScript{

    LoginPage loginPage = new LoginPage(driver);
    LandingPage landingPage = new LandingPage(driver);
    UserAdminHomePage userAdminPage = new UserAdminHomePage(driver);
    CreateUserPage createUser = new CreateUserPage(driver);



    @When("^I log in as super user$")
    public void ILoginWith( ) throws Throwable {
        loginPage.iLoginAsSupperUser("lbarinstein+qaadmin@remedypartners.com", "Testing1");
    }



    @And("^I click on the \"([^\"]*)\" tile$")
    public void IClickOnApplicatioTile(String tile) throws Throwable {

        landingPage.iClickOnApplicateTile(tile);

    }



    @Then("^I click on Create User button$")
    public void IClickCreateUserButton() throws Throwable {

        userAdminPage.clickCreateUserButton();

    }


    @Then("^I pick a Organizational ([^\"]*)$")
    public void IPickOrganizationalRole(String role) throws Throwable {


        createUser.selectOrganizationalRole(role);

    }

    @And("^I enter NPI field with ([^\"]*)$")
    public void IEnterNPIFieldWith_(String npi) throws Throwable {

        createUser.iEnterNPI(npi);

    }

    @And("^I fill in First Name with \"([^\"]*)\"$")
    public void IFillFirstNameWith(String firstName ) throws Throwable {

        createUser.iEnterFirstName(firstName);
    }



    @Then("^I fill in Last Name with ([^\"]*)$")
    public void iFillInLastName(String lastName) throws Throwable {

        createUser.iEnterLasttName(lastName);

    }

    @Then("^I enter Email with ([^\"]*)$")
    public void iEnterEmail(String email) throws Throwable {
        createUser.iEnterEmail(email);

    }

    @Then("^I enter Phone field with \"([^\"]*)\"$")
    public void iEnterPhone(String phone) throws Throwable {

        createUser.iEnterPhone(phone);

    }

    @Then("^I select a ([^\"]*)$")
    public void iSelectFacility(String facility) throws Throwable {


        createUser.iSelectFacility(facility);

    }

    @Then("^I click on Create button$")
    public void iClickCreateButton() throws Throwable {

        createUser.iClickCreateButton();

    }


    @When("^I search Organizationa Role with ([^\"]*)$")
    public void ISearchOrganizationaRole(String text) throws Throwable {

        createUser.iEnterSearchTextForOrganizationalRole(text);
    }

    @And("^I search for facility with ([^\"]*)$")
    public void ISearchFacilityWith(String text) throws Throwable {
       createUser.iEnterFacilitySerachText(text);
    }



    @When("^I click the Organizational Role Field$")
    public void IClickOrganizationalRoleField() throws Throwable {

        createUser.iClickOrganizationalField();
    }

    @And("^I click on Facility field$")
    public void IClickFacilityField() throws Throwable {

        createUser.iClickFacilityField();
    }



    @Then("^I verify First Name Required Message \"([^\"]*)\"$")
    public void IVerifyFirstNameRequiredMessage(String message) throws Throwable {

        createUser.iVerifyFirstNameRequiredText(message);

    }

    @And("^I verify Last Name Required Message \"([^\"]*)\"$")
    public void IVerifyNameRequiredMessage(String message) throws Throwable {

        createUser.iVerifyLastNameRequiredText(message);

    }

    @And("^I verify email required message \"([^\"]*)\"$")
    public void IVerifyEemailRequiredMessage(String message) throws Throwable {

        createUser.iVerifyEmailRequiredText(message);


    }

    @And("^I click Try Again Button$")
    public void IClickTryAgainButton() throws Throwable {

        createUser.iClickTryAgainButton();
    }

    @And("^Verify Phone validation message \"([^\"]*)\"$")
    public void VerifyPhoneValidationMessage(String message) throws Throwable {


        createUser.iVerifyPhoneValidationMessageText(message);

    }


    @And("^I fill in Last Name with text \"([^\"]*)\"$")
    public void IFillLastNameWithText(String lastName) throws Throwable {
        createUser.iEnterLasttName(lastName);
    }

    @And("^I enter Email with text \"([^\"]*)\"$")
    public void IEnterEmailText(String email) throws Throwable {

        createUser.iEnterEmail(email);

    }


    @Then("^I verify Organizational Role Required Message \"([^\"]*)\"$")
    public void IVerifyOrganizationalRoleRequiredMessage(String text) throws Throwable {
        createUser.iVerifyOrganizationalRoleRequiredMessageText(text);
    }
}

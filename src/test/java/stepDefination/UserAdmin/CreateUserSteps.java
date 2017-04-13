package stepDefination.UserAdmin;

import com.remedy.resources.Constants;
import com.remedy.userAdmin.CreateUserPage;
import com.remedy.userAdmin.LandingPage;
import com.remedy.userAdmin.LoginPage;
import com.remedy.userAdmin.UserAdminHomePage;
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
    public void ILoginWith() throws Throwable {
        loginPage.iLoginAsSupperUser(Config.getProperty("SuperUserEmail"), "Testing1");
    }



    @And("^I click on the \"([^\"]*)\" tile$")
    public void IClickOnApplicatioTile(String tile) throws Throwable {

        //landingPage.iClickOnApplicateTile(tile);
        landingPage.iClickOnApplicateTile("//p[text()='"+tile+"']");

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

    @Then("^I Generate Email for ([^\"]*)$")
    public void iGenerateEmail(String email) throws Throwable {
        
    	
    	createUser.iGenerateEmail(email);
        

    }
    
    @Then("^I enter Email for ([^\"]*)$")
    public void iEnterEmail(String email) {
    createUser.iEnterEmail(email);
    }
    
    @Then("^I enter Phone field with ([^\"]*)$")
    public void iEnterPhone(String phone) throws Throwable {

        createUser.iEnterPhone(phone);

    }
    
    @Then("^I pick payer type from data section ([^\"]*)$")
    public void IPickPayertypeFromDataSection(String payer) throws Throwable {

        createUser.selectPayerFromData(payer);

    }

    @Then("^I select a ([^\"]*)$")
    public void iSelectHealthSystem(String healthSystem) throws Throwable {

        createUser.iSelectHealthSystem(healthSystem);

    }

    @Then("^I click on Create button$")
    public void iClickCreateButton() throws Throwable {

        createUser.iClickCreateButton();

    }



    @And("^I search for health system with ([^\"]*)$")
    public void ISearchHealthSystem(String text) throws Throwable {
       createUser.iEnterHealthSystemSerachText(text);
    }



    @When("^I click the Organizational Role Field$")
    public void IClickOrganizationalRoleField() throws Throwable {

        createUser.iClickOrganizationalField();

    }
    
    @When("^I click the payer Field under data$")
    public void IClickPayerFieldUnderData() throws Throwable {

        createUser.iClickPayerField();

    }

    @And("^I click on Health System field$")
    public void IClickHealthSystemField() throws Throwable {

        createUser.iClickHealthSystemField();
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

//    @And("^I enter Email with text \"([^\"]*)\"$")
//    public void IEnterEmailText(String email) throws Throwable {
//        createUser.iEnterEmail(email);
//    }


    @Then("^I verify Organizational Role Required Message \"([^\"]*)\"$")
    public void IVerifyOrganizationalRoleRequiredMessage(String text) throws Throwable {
        createUser.iVerifyOrganizationalRoleRequiredMessageText(text);
    }


    @Then("^I should see \"([^\"]*)\" on the user creation page$")
    public void iShouldSeeOnTheUserCreationPage(String header) throws Throwable {
        createUser.iverifyCreateUserPageHeader(header);
    }


    @When("^I enter ([^\"]*) search text$")
    public void iEnterHealthSystemSearchText(String provider) throws Throwable {
        createUser.iEnterProviderSerachText(provider);
    }


    @Then("^I click the select all Facilites checkbox for the provider$")
    public void iSelectAndFacilitesForTheHealthSystem() throws Throwable {
        createUser.iCheckAllProviderForTheHealthSystem();
    }


    @Then("^I select all the application for the role$")
    public void iSelectAllTheApplicationForTheRole() throws Throwable {
       createUser.iclickAllAppsfortheRole();
    }
    
    @And("^I turn off the share file application$")
    public void iTurnOffTheShareFileApplication() throws Throwable{
    	createUser.iTurnOffShareFile();
    	
    }

    @And("^I fill in NPI Field with \"([^\"]*)\"$")
    public void iFillInNPIFieldWith(String text) throws Throwable {

        createUser.iEnterNPI(text);

    }

    @Then("^I verify NPI Required Message \"([^\"]*)\"$")
    public void iVerifyNPIRequiredMessage(String text) throws Throwable {
        createUser.iVerifyNPIValidationMessageText(text);
    }
    
    @And("^I click on continue to dashboard$")
    public void iClickOnContinueToDashboard()throws Throwable {
    	createUser.iClickOnContinueToDashboardMessage();
    }
}

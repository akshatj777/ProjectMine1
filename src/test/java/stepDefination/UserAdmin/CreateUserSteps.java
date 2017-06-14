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
    
    @And("^I enter email ([^\"]*) for login after password mail verification$")
    public void iEnterEmailForLoginAfterPasswordMailVerification(String email) throws Throwable{
    	createUser.iEnterEmailForLoginAfterPasswordMailVerification(email);
    }

    @And("^I enter password field ([^\"]*) for Login after password verification$")
    public void iEnterPasswordFieldForLoginAfterPasswordVerification(String Password) throws Throwable{
    	createUser.iEnterPasswordFieldForLoginAfterPasswordVerification(Password);
    }
    
    @When("^I enter the email ([^\"]*) to generate password$")
    public void iEnterTheEmailToGeneratePassword(String email) throws Throwable{
    	createUser.iEnterTheEmailToGeneratePassword(email);
    }
    
    @Then("^I click on send email button$")
    public void iClickOnSendEmailButton() throws Throwable{
    	createUser.iClickOnSendEmailButton();
    }
    
    @And("^I click on the email received to change your password$")
    public void iClickOnTheEmailReceivedToChangeYourPassword() throws Throwable{
    	createUser.iClickOnTheEmailReceivedToChangeYourPassword();
    }
    
    @Then("^I click on change my password link$")
    public void iClickOnChangeMyPasswordLink() throws Throwable{
    	createUser.iClickOnChangeMyPasswordLink();
    }
    
    @And("^I switch to frame under received mail content$")
    public void iSwitchToFrameUnderReceivedMailContent() throws Throwable{
       createUser.iSwitchToFrameUnderReceivedMailContent();
    }
    
    @Then("^I click on change my password link under recieved mail content$")
    public void iClickOnChangeMyPasswordLinkUnderRecievedMailContent() throws Throwable{
    	createUser.iClickOnChangeMyPasswordLinkUnderRecievedMailContent();
    }
    
    @Then("^I pick payer type from data section ([^\"]*)$")
    public void IPickPayertypeFromDataSection(String payer) throws Throwable {
        createUser.selectPayerFromData(payer);
    }
    
    @Then("^I verify the first payer field added under permissions section$")
    public void iVerifyTheFirstPayerFieldAddedUnderPermissionsSection() throws Throwable{
    	createUser.iVerifyTheFirstPayerFieldAddedUnderPermissionsSection();
    }
    
    @Then("^I verify the second payer field added under permissions section$")
    public void iVerifyTheSecondPayerFieldAddedUnderPermissionsSection() throws Throwable{
    	createUser.iVerifyTheSecondPayerFieldAddedUnderPermissionsSection();
    }

    @Then("^I select a ([^\"]*)$")
    public void iSelectHealthSystem(String healthSystem) throws Throwable {
        createUser.iSelectHealthSystem(healthSystem);
    }
    
    @Then("^I should see different tiles for different user role ([^\"]*)$")
    public void iShouldSeeDifferentTilesForDifferentUserRole(String role) throws Throwable{
    	createUser.iShouldSeeDifferentTilesForDifferentUserRole(role);
    }
    
    @And("^I click on Episodes tile under specific user login page ([^\"]*)$")
    public void iClickOnEpisodesTileUnderSpecificUserLoginPage(String tile) throws Throwable{
    	createUser.iClickOnEpisodesTileUnderSpecificUserLoginPage(tile);
    }

    @And("^I click on EC two tile under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnECTwoTileUnderSpecificUserLoginPage(String text, String role) throws Throwable{
    	createUser.iClickOnECTwoTileUnderSpecificUserLoginPage(text,role);
    }

    @And("^I verify the dropdown list for user$")
    public void iVerifyTheDropdownListForUser() throws Throwable{
    	createUser.iVerifyTheDropdownListForUser();
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
    
    @Then("^I select ([^\"]*) product tile for user creation$")
    public void iSelectTileForTheRole(String tile) throws Throwable{
    	createUser.iSelectTileForTheRole(tile);
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

    @And("^I verify the header after clicking the episodes tile$")
    public void iVerifyTheHeaderAfterClickingTheEpisodesTile() throws Throwable{
    	createUser.iVerifyTheHeaderAfterClickingTheEpisodesTile();
    }
    
    @And("^I click on Episodes two tile under specific user login page ([^\"]*)$")
    public void iClickOnEpisodesTwoTileUnderSpecificUserLoginPage(String tile) throws Throwable{
    	createUser.iClickOnEpisodesTwoTileUnderSpecificUserLoginPage(tile);
    }
    
    @And("^I Verify the header after clicking the episodes 2 tile$")
    public void iVerifyTheHeaderAfterClickingTheEpisodes2Tile() throws Throwable{
    	createUser.iVerifyTheHeaderAfterClickingTheEpisodes2Tile();
    }
    
    @And("^I turn off the lessons tile application$")
    public void iTurnOffTheLessonsTileApplication() throws Throwable{
    	createUser.iTurnOffTheLessonsTileApplication();
    }
    
    
    @And("^I click on Episode1 tile under specific user login page ([^\"]*) for ([^\"]*) and verify the userrole ([^\"]*)$")
    public void iClickOnEpisode1TileUnderSpecificUserLoginPage(String tile, String role , String userroletext) throws Throwable{
    	createUser.iClickOnEpisode1TileUnderSpecificUserLoginPage(tile,role,userroletext);
    }
    
    @And("^I click on Institute tile under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnInstituteTileUnderSpecificUserLoginPage(String tile, String role) throws Throwable{
    	createUser.iClickOnInstituteTileUnderSpecificUserLoginPage(tile,role);
    }
    
    @And("^I click on Reports tile under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnReportsTileUnderSpecificUserLoginPage(String tile, String role) throws Throwable{
    	createUser.iClickOnReportsTileUnderSpecificUserLoginPage(tile,role);
    }
    
    @And("^I click on RemedyU tile under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnRemedyUTileUnderSpecificUserLoginPage(String text,String role) throws Throwable{
    	createUser.iClickOnRemedyUTileUnderSpecificUserLoginPage(text, role);
    }
    
    @And("^I click on Physican connect tile under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnPhysicanConnectTileUnderSpecificUserLoginPage(String text,String role) throws Throwable{
    	createUser.iClickOnPhysicanConnectTileUnderSpecificUserLoginPage(text, role);
    }
    
    @And("^I click on Internal Support option from dropdown under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iClickOnInternalSupportOptionFromDropdownUnderSpecificUserLoginPage(String text,String role) throws Throwable{
    	createUser.iClickOnInternalSupportOptionFromDropdownUnderSpecificUserLoginPage(text,role);
    }
    
    @Then("^I select Support option from the dropdown under specific user login page ([^\"]*) for ([^\"]*)$")
    public void iSelectSupportOptionFromTheDropdownUnderSpecificUserLoginPage(String text,String role) throws Throwable{
    	createUser.iSelectSupportOptionFromTheDropdownUnderSpecificUserLoginPage(text,role);
    }
    
    @And("^I navigate back to specific user login page$")
    public void iNavigateBackToSpecificUserLoginPage() throws Throwable{
    	createUser.iNavigateBackToSpecificUserLoginPage();
    }
    
    @Then("^I verify the Product tile for selected user role$")
    public void i_Verify_The_Product_Tile_For_The_Selected_UserRole() throws Throwable {
    	createUser.iVerifyThePrductTileForTheSelectedUserRole();
    }
    
    @Then("^I verify the Internal Support tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Internal_Support_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheInternalSupportProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Physican Connect tile for selected user role ([^\"]*)$")
    public void i_Verify_The_PhysicanConnect_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyThePhysicanConnectProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Episodes tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Episodes_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheEpisodesProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Lessons tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Lessons_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheLessonsProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Reports tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Reports_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheReportsProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Administration tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Administration_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheAdministrationProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Share File tile for selected user role ([^\"]*)$")
    public void i_Verify_The_ShareFile_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheShareFileProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Episodes 2.0 tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Episodes2_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheEpispdes2ProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the Institute tile for selected user role ([^\"]*)$")
    public void i_Verify_The_Institute_Tile_For_The_Selected_UserRole(String role) throws Throwable {
    	createUser.iVerifyTheInstituteProductTileForSelectedUserRole(role);
    }
    
    @Then("^I verify the userrole under ec1 dashboard page after specific user login$")
    public void iVerifyTheUserroleUnderEc1DashboardPageAfterSpecificUserLogin() throws Throwable{
    	createUser.iVerifyTheUserroleUnderEc1DashboardPageAfterSpecificUserLogin();
    }
    
    @Then("^I verify the institute dashboard page after clicking on Institute tile under specific user login page$")
    public void iVerifyTheInstituteDashboardPageAfterClickingOnInstituteTileUnderSpecificUserLoginPage() throws Throwable{
    	createUser.iVerifyTheInstituteDashboardPageAfterClickingOnInstituteTileUnderSpecificUserLoginPage();
    }
}

package stepDefination.UA2;

import com.remedy.UA2.EditUser;
import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.CreateUserPage;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class EditUserSteps extends DriverScript {
EditUser editUser= new EditUser(driver);
CreateUserPage createUserPage=new CreateUserPage(driver);
	@Then("^I select user with email \"([^\"]*)\"$")
	public void i_select_user(String email) throws Throwable {
	 editUser.iClickOnUser(email);
	}

	@Then("^I verify that I am navigated to user page$")
	public void i_verify_that_I_am_navigated_to_user_page() throws Throwable {
	   editUser.iverifyuserpage();
	}

	@Then("^I click on Edit button$")
	public void i_click_on_Edit_button() throws Throwable {
	   editUser.iClickOnEditButton();
	}

	
	@And("^I fill in Phone with([^\"]*)$")
	public void iFillInPhone(String number) throws Throwable {
		editUser.iEnterPhone(number);
	}
	
	@Then("^I verify First Name ([^\"]*) in user page$")
	public void i_verify_First_Name_First_Name_in_user_page(String text) throws Throwable {
		editUser.iVerifyFirstNameInUserPage(text);
	}

	@Then("^I verify Last Name ([^\"]*) in user page$")
	public void i_verify_Last_Name_Last_Name_in_user_page(String text) throws Throwable {
		editUser.iVerifyLastNameInUserPage(text);
	}

	@Then("^I verify Phone ([^\"]*) in user page$")
	public void i_verify_Phone_in_user_page(String text) throws Throwable {
		editUser.iVerifyPhoneInUserPage(text);
	}

	@Then("^I verify Role ([^\"]*) in user page$")
	public void i_verify_Role_Manager_in_user_page(String text) throws Throwable {
		editUser.iVerifyRoleInUserPage(text);
	}
	@When ("^I click the Organizational Role Field to edit$")
	public void iClickOnRoleFieldToEdit(){
		editUser.iClickOnRoleFieldToEdit();
	}
	
	
	@Then("^I select \"([^\"]*)\" tab$")
	public void iSelectApplicationTab(String tab) throws Throwable {
		editUser.iClickOnTab(tab);
	}
		

	@Then("^I verify that \"([^\"]*)\" are \"([^\"]*)\"$")
	public void i_verify_that_Episodes_Reports_Lessons_are(String apps, String select) throws Throwable {
	    editUser.iVerifyThatApplicationsAreEditable(apps, select);
	}
	
	
	@Then("^I click on delete organisation icon$")
	public void iDeleteOrganisation() throws Throwable {
	    editUser.iClickOnDeleteOrganisation();
	}
	@Then("^I should not be able to edit Email$")
	public void i_should_not_be_able_to_edit_Email() throws Throwable {
	   editUser.iVerifyThatEmailIsNonEditable();
	}
	
	@Then("^I click on existing organisation$")
	public void iClickOnExistingOrganisation() throws Throwable {
	   editUser.iClickOnExisitingOrganisation();
	}
	@Then("^I click on \"([^\"]*)\" button on permissions tab$")
		public void iClickOnAddAnotherOrganisation(String text){
			editUser.iClickOnAddAnotherOrganisation(text);
		}
	
	@Then("^I verify \"([^\"]*)\" under Data Permissions$")
	public void i_verify_under_Data_Permissions(String arg1) throws Throwable {
	    editUser.iVerifyDataPermission(arg1);
	}
	@Then("^I click on Select All Locations button for \"([^\"]*)\" Organisation$")
	public void i_click_on_Select_All_Locations_button_for_Organisation(String arg1) throws Throwable {
		editUser.clickAllLocationsButton(arg1);
	}

	@Then("^I verify that \"([^\"]*)\" are \"([^\"]*)\" in Applications tab$")
	public void i_verify_that_are_in_Applications_tab(String appList, String text) throws Throwable {
		editUser.iVerifyProductAsPerRole(appList, text);
	}
	@Then("^I verify text \"([^\"]*)\" is \"([^\"]*)\" in Permission tab$")
	public void iVerifyDownstreamProviderPermission(String text, String present){
		editUser.iVerifyDownstreamProviderPermission(text,present);
	}
	@Then("^I should see text \"([^\"]*)\"$")
	public void iSeeNoResults(String text){
		editUser.iSeeNoResults(text);
	}
	@Then("^I verify that \"([^\"]*)\" button is disabled when no application is selected$")
	public void iVerifyDisabledNextButton(String text){
		
	}
	@Then("^I should see error message \"([^\"]*)\"$")
	public void iVerifyErrorMessage(String text){
		editUser.iVerifyErrorMessage(text);
	}
	@Then("^I remove LearningPathwaySearchParameter$")
	public void removeLearningPathway(){
		editUser.removeLearningPathway();
	}
	@Then("^I click on Close icon$")
	public void i_click_on_Close_icon() throws Throwable {
	  editUser.iClickOnCloseIcon();
	}
	@Then("^I verify that \"([^\"]*)\" is \"([^\"]*)\" on page$")
	public void iValidateNPI(String npi, String text){
		editUser.iValidateNPI(npi, text);
	}
	@Then("^I should see an alert with text \"([^\"]*)\"$")
	public void iValidateAlertText(String text){
		editUser.iValidateAlertText(text);
	}
	@Then("^I should see \"([^\"]*)\" button$")
	public void iValidateCancelButton(String text){
		editUser.iValidateCancelButton(text);
	}
	@Then("^I verify that \"([^\"]*)\" products are shown in Applications tab as compared to \"([^\"]*)\"$")
	public void iVerifyProductsCount(String text, int count){
		editUser.iVerifyProductsCount(text,count);
	}
	@Then("^I search location by \"([^\"]*)\" and select \"([^\"]*)\"$")
	public void iSearchLocByBPID(String bpid, String location) throws InterruptedException{
		editUser.iSearchLocByBPID(bpid, location);
	}
	@Then("^I should see \"([^\"]*)\" for locations under data permissions$")
	public void iVerifyFacilityKey(String key){
		editUser.iVerifyFacilityKey(key);
	}
	@Then("^I select location by \"([^\"]*)\"$")
	public void iSelectLocByFacilityKey(String key) throws InterruptedException{
		editUser.iSelectLocByFacilityKey(key);
	}
	@Then("^I verify that \"([^\"]*)\" is not shown in edit page$")
	public void iVerifyLearningPathwayIDIsNotPresentOnEditPage(String text){
		editUser.iVerifyLearningPathwayIDIsNotPresentOnEditPage(text);
	}
}

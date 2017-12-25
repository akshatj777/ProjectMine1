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

	@And("^I cleared the textbox under edit user \"([^\"]*)\"$")
	public void i_Cleared_The_Textbox_Under_Edit_User_FirstName_Tab(String field) throws Throwable{
		editUser.iClearTextBox(field);
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
	
	@Then("^I verify \"([^\"]*)\" under Data Permissions$")
	public void i_verify_under_Data_Permissions(String arg1) throws Throwable {
	    editUser.iVerifyDataPermission(arg1);
	}
	@Then("^I click on Select All Locations button for \"([^\"]*)\" Organisation$")
	public void i_click_on_Select_All_Locations_button_for_Organisation(String arg1) throws Throwable {
		editUser.clickAllLocationsButton(arg1);
	}
	@Then("^Then I verify that \"([^\"]*)\" are \"([^\"]*)\" in Applications tab$")
	public void iVerifyProductAsPerRole(String appList, String text){
		editUser.iVerifyProductAsPerRole(appList, text);
	}

}

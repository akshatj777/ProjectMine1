package stepDefination.UA2;

import com.remedy.UA2.EditUser;
import com.remedy.resources.DriverScript;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class EditUserSteps extends DriverScript {
EditUser editUser= new EditUser(driver);
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
	
	@And("^I verify First Name \"([^\"]*)\" in user page$")
	public void verifyEditedFirstName(String text) {
		editUser.iVerifyFirstNameInUserPage(text);
	}
	@And("^I verify Last Name \"([^\"]*)\" in user page$")
	public void verifyEditedLastName(String text) {
		editUser.iVerifyLastNameInUserPage(text);
	}
	@And("^I verify Role \"([^\"]*)\" in user page$")
	public void verifyEditedRole(String text) {
		editUser.iVerifyRoleInUserPage(text);
	}
	@And("^I verify Phone \"([^\"]*)\" in user page$")
	public void verifyEditedPhone(String text) {
		editUser.iVerifyPhoneInUserPage(text);
	}
}

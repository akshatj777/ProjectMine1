package stepDefination.UA2;

import com.remedy.UA2.UA2LandingPage;
import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.LoginPage;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import stepDefination.CommonSteps;

public class UA2LandingPageSteps extends DriverScript {
	UA2LandingPage ua2LandingPage = new UA2LandingPage(driver);
	

	@Then("^I should see \"([^\"]*)\" link$")
	public void i_should_see_link(String text) throws Throwable {
		ua2LandingPage.iVerifyUsersLink(text);
	}
	
	@Then("^I click on \"([^\"]*)\" Button$")
	public void i_click_on_Button(String arg1) throws Throwable {
	    ua2LandingPage.iClickOnAddUserButton();
	}

	@Then("^I am navigated to user creation page$")
	public void i_am_navigated_to_user_creation_page() throws Throwable {
	    ua2LandingPage.iVerifyAddUserPage();
	}
	@Then("^I should see \"([^\"]*)\" Button in landing page$")
	public void i_should_see_Button_in_landing_page(String arg1) throws Throwable {
	    ua2LandingPage.iverifyAddUserButton();
	}

	@Then("^I click on close icon from user creation page$")
	public void i_click_on_close_icon_from_user_creation_page() throws Throwable {
	 ua2LandingPage.iClickOnCloseIconFromAddUserPage();
	}
	
		
	@Then("^I should see users table$")
	public void i_should_see_users_table() throws Throwable {
		ua2LandingPage.iSeeUsersTable();
	}

	@Then("^I should see Account status column in the table$")
	public void i_should_see_Account_status_column_in_the_table() throws Throwable {
		ua2LandingPage.iSeeAccountStatusColumn();
	}

	@Then("^I should see Name column in the table$")
	public void i_should_see_Name_column_in_the_table() throws Throwable {
		ua2LandingPage.iSeeNameColumn();
	}

	@Then("^I should see Role column in the table$")
	public void i_should_see_Role_column_in_the_table() throws Throwable {
		ua2LandingPage.iSeeRoleColumn();
	}

	@Then("^I should see Email column in the table$")
	public void i_should_see_Email_column_in_the_table() throws Throwable {
		ua2LandingPage.iSeeEmailColumn();
	}

	@Then("^I should see Date Created column in the table$")
	public void i_should_see_Date_Created_column_in_the_table() throws Throwable {
		ua2LandingPage.iSeeDateCreatedColumn();
	}

	@Then("^I should see Pagination at bottom of the landing page$")
	public void i_should_see_Pagination_at_bottom_of_the_landing_page() throws Throwable {
		ua2LandingPage.iSeePagination();
	}





	/*@Then("^I should see \"([^\"]*)\" for User Role in landing page$")
	public void i_should_see_for_User_Role_in_landing_page(String text) throws Throwable {
		ua2LandingPage.iVerifyRoleFromSearchResult(text);
	}
	
	@Then("^I should see \"([^\"]*)\" for email in landing page$")
	public void i_should_see_for_email_in_landing_page(String arg1) throws Throwable {
	    ua2LandingPage.iVerifyEmailFromSearchResult(arg1);
	}*/
	@Then("^I click on the top user link$")
	public void i_click_on_the_top_user_link() throws Throwable {
		ua2LandingPage.iClickOnTopUserDropDown();
	}

	@Then("^I select \"([^\"]*)\" option from the dropdown list$")
	public void i_select_option_from_the_dropdown_list(String text) throws Throwable {
		ua2LandingPage.iSelectOptionFromDropdown(text);
	}
	
	@Then("^I should see text popup for reset password with \"([^\"]*)\"$")
	public void i_should_see_text_popup_for_reset_password_with(String arg1) throws Throwable {
	  ua2LandingPage.iVerifyResetPasswordPopUpText(arg1);
	}
	@Then("^I verify users with lock icon present on useradmin Landing page$")
	public void i_verify_users_with_lock_icon_present_on_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyLockedUser();
	}

	@Then("^I verify users with Unlock icon button present on useradmin Landing page$")
	public void i_verify_users_with_Unlock_icon_button_present_on_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyUnlockedUser();
	}

	@Then("^I click on Lock button on the table in useradmin Landing page$")
	public void i_click_on_Lock_button_on_the_table_in_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iClickOnLock();
	}

	@Then("^I click on Unlock button on the table in useradmin Landing page$")
	public void i_click_on_Unlock_button_on_the_table_in_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iClickOnUnlock();
	}

	@Then("^I should see an alert with \"([^\"]*)\"$")
	public void i_should_see_an_alert_with(String text) throws Throwable {
		ua2LandingPage.iVerifyTextfromUnlockPopup(text);
	}

	@Then("^I click on \"([^\"]*)\" button from the alert to unlock user$")
	public void i_click_on_button_from_the_alert_to_unlock_user(String arg1) throws Throwable {
		ua2LandingPage.iClickOnUnlockButtonFromPopup();
	}

	@Then("^I click on \"([^\"]*)\" button from the alert to cancel unlock$")
	public void i_click_on_button_from_the_alert_to_cancel_unlock(String arg1) throws Throwable {
		ua2LandingPage.iClickOnCancelButtonFromPopup();
	}

	@Then("^I verify that the user is unlocked on the table in useradmin Landing page$")
	public void i_verify_that_the_user_is_unlocked_on_the_table_in_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyThatUserIsUnlocked();
	}

	@Then("^I verify that the user is locked on the table in useradmin Landing page$")
	public void i_verify_that_the_user_is_locked_on_the_table_in_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyThatUserIsLocked();
	}

	@Then("^I should be able to sort users based on lock funtionality$")
	public void i_should_be_able_to_sort_users_based_on_lock_funtionality() throws Throwable {
		ua2LandingPage.iSortBasedOnLock();
	}

	@Then("^I should be able to sort users based on Name funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Name_funtionality() throws Throwable {
		ua2LandingPage.iSortFromName();
	}

	@Then("^I should be able to sort users based on Role funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Role_funtionality() throws Throwable {
		ua2LandingPage.iSortFromRole();
	}

	@Then("^I should be able to sort users based on Email funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Email_funtionality() throws Throwable {
		ua2LandingPage.iSortFromEmail();
	}

	@Then("^I should be able to sort users based on Date created$")
	public void i_should_be_able_to_sort_users_based_on_Date_created() throws Throwable {
		ua2LandingPage.iSortFromDate();
	}

	
	@Then("^I click on \"([^\"]*)\" link$")
	public void i_click_on_link(String arg1) throws Throwable {
	ua2LandingPage.iClickOnUsersLink();
	}

	@Then("^I am on refreshed landing page$")
	public void i_am_on_refreshed_landing_page() throws Throwable {
	   ua2LandingPage.iSeeUsersTable();
	   
	}

	@Then("^I enter search box in landing page with ([^\"]*)$")
	public void i_enter_search_box_in_landing_page_with(String text) throws Throwable {
	ua2LandingPage.SearchUserWithText(text);
	}

	@Then("^I should see ([^\"]*) for ([^\"]*) in landing page$")
	public void i_should_see_for_in_landing_page(String result, String searchBy) throws Throwable {
	    ua2LandingPage.iVerifySearchResult(result, searchBy);
	}
	
	@Then("^I should not be able to login$")
	public void i_should_not_be_able_to_login() throws Throwable {
	 ua2LandingPage.iVerifythatIamNavigatedBackToBaseURL();
	}
}

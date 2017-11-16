package stepDefination.UA2;

import com.remedy.UA2.SuperUserLandingPage;
import com.remedy.resources.DriverScript;


import cucumber.api.java.en.Then;

public class SuperUserLandingPageSteps extends DriverScript {
	SuperUserLandingPage ua2LandingPage = new SuperUserLandingPage(driver);

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
	
	
	@Then("^I verify UI of landing page$")
	public void i_verify_landing_page_UI() throws Throwable {
		ua2LandingPage.iVerifyLandingPageUI();
	}
	@Then("^I enter email field \"([^\"]*)\" for login$")
	public void i_enter_email_field_for_login(String arg1) throws Throwable {
	  
	}

@Then("^I verify user information$")
public void i_verify_user_information() throws Throwable {
ua2LandingPage.verifyUserInformation();
}
	
	@Then("^I click on the top user link$")
	public void i_click_on_the_top_user_link() throws Throwable {
		ua2LandingPage.iClickOnTopUserDropDown();
	}

	@Then("^I select \"([^\"]*)\" option from the dropdown list$")
	public void i_select_option_from_the_dropdown_list(String text) throws Throwable {
		ua2LandingPage.iSelectOptionFromDropdown(text);
	}
	
	
	@Then("^I verify that user is locked$")
	public void i_verify_that_user_is_locked() throws Throwable {
		ua2LandingPage.iVerifyLockedUser();
	}

	@Then("^I verify users with Unlock icon button present on useradmin Landing page$")
	public void i_verify_users_with_Unlock_icon_button_present_on_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyUnlockedUser();
	}

	@Then("^I lock user with email \"([^\"]*)\"$")
	public void i_click_on_Lock_button_on_the_table_in_useradmin_Landing_page(String text) throws Throwable {
		ua2LandingPage.iLockUser(text);
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

	@Then("^I verify that the user is unlocked on Landing page$")
	public void i_verify_that_the_user_is_unlocked_on_the_table_in_useradmin_Landing_page() throws Throwable {
		ua2LandingPage.iVerifyUnlockedUser();
	}

	@Then("^I click on \"([^\"]*)\" link$")
	public void i_click_on_link(String arg1) throws Throwable {
	ua2LandingPage.iClickOnUsersLink();
	}

	@Then("^I am on landing page$")
	public void i_am_on_refreshed_landing_page() throws Throwable {
	   ua2LandingPage.iVerifyLandingPageUI();
	}

	@Then("^I enter search box in landing page with \"([^\"]*)\"$")
	public void i_enter_search_box_in_landing_page_with(String text) throws Throwable {
	ua2LandingPage.SearchUserWithText(text);
	}

	@Then("^I should see \"([^\"]*)\" for \"([^\"]*)\" in search result$")
	public void i_should_see_for_in_landing_page(String result, String searchBy) throws Throwable {
	    ua2LandingPage.iVerifySearchResult(result, searchBy);
	}
	@Then("^I should not be able to login$")
	public void iShouldNotBeAbleToLogin() throws Throwable {
	   ua2LandingPage.iVerifythatIamNavigatedBackToBaseURL();
	}
	
}

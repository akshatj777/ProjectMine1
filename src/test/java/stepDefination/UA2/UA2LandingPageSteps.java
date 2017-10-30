package stepDefination.UA2;

import com.remedy.resources.DriverScript;

import com.remedy.userAdmin.UA2LandingPage;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;

public class UA2LandingPageSteps extends DriverScript {
	UA2LandingPage ua2LandingPage = new UA2LandingPage(driver);

	@Then("^I should see \"([^\"]*)\" link$")
	public void i_should_see_link(String text) throws Throwable {
		ua2LandingPage.iVerifyUsersLink(text);
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

	@Then("^I enter search box in landing page with \"([^\"]*)\"$")
	public void i_enter_search_box_in_landing_page_with(String text) throws Throwable {
		ua2LandingPage.SearchUserWithText(text);
	}

	@Then("^I should see \"([^\"]*)\" for search results in landing page$")
	public void i_should_see_for_search_results_in_landing_page(String text) throws Throwable {
	ua2LandingPage.iVerifySearchResult(text);
	}

	@Then("^I should see \"([^\"]*)\" for First Name in landing page$")
	public void i_should_see_for_First_Name_in_landing_page(String text) throws Throwable {
		ua2LandingPage.iVerifyFirstNameFromSearchResult(text);
	}

	@Then("^I should see \"([^\"]*)\" for Last Name in landing page$")
	public void i_should_see_for_Last_Name_in_landing_page(String text) throws Throwable {
		ua2LandingPage.iVerifyFirstNameFromSearchResult(text);
	}

	@Then("^I should see \"([^\"]*)\" for User Role in landing page$")
	public void i_should_see_for_User_Role_in_landing_page(String text) throws Throwable {
		ua2LandingPage.iVerifyRoleFromSearchResult(text);
	}
	
	@Then("^I click on the top user link$")
	public void i_click_on_the_top_user_link() throws Throwable {
	   ua2LandingPage.iClickOnTopUserDropDown();
	}

	@Then("^I select \"([^\"]*)\" option from the dropdown list$")
	public void i_select_option_from_the_dropdown_list(String text) throws Throwable {
	  ua2LandingPage.iSelectOptionFromDropdown(text);
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
	public void i_should_see_an_alert_with(String arg1) throws Throwable {
	
	}

	@Then("^I click on \"([^\"]*)\" button from the alert$")
	public void i_click_on_button_from_the_alert(String arg1) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I verify that the user is unlocked on the table in useradmin Landing page$")
	public void i_verify_that_the_user_is_unlocked_on_the_table_in_useradmin_Landing_page() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I verify that the user is locked on the table in useradmin Landing page$")
	public void i_verify_that_the_user_is_locked_on_the_table_in_useradmin_Landing_page() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be able to sort users based on lock funtionality$")
	public void i_should_be_able_to_sort_users_based_on_lock_funtionality() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be able to sort users based on Name funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Name_funtionality() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be able to sort users based on Role funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Role_funtionality() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be able to sort users based on Email funtionality$")
	public void i_should_be_able_to_sort_users_based_on_Email_funtionality() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be able to sort users based on Date created$")
	public void i_should_be_able_to_sort_users_based_on_Date_created() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I click on any User from the table$")
	public void i_click_on_any_User_from_the_table() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be navigated to that user page$")
	public void i_should_be_navigated_to_that_user_page() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I click on \"([^\"]*)\" link$")
	public void i_click_on_link(String arg1) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Then("^I should be navigated back to the landing page$")
	public void i_should_be_navigated_back_to_the_landing_page() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

}

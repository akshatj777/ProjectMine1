package stepDefination.UserAdmin;

import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.ViewUserPage;

import cucumber.api.java.en.Then;

public class ViewUserSteps extends DriverScript{
	
	ViewUserPage objViewUserPage = new ViewUserPage(driver);

	@Then("^I search for user with role \"([^\"]*)\"$")
	public void i_search_for_user_with_role(String userRole) throws Throwable {
		objViewUserPage.searchForUserRole(userRole);
	}

	@Then("^I select user with role \"([^\"]*)\"$")
	public void i_select_user_with_role(String userRole) throws Throwable {
		objViewUserPage.selectUserRole(userRole);
	}

	@Then("^I verify that I am navigated to user page$")
	public void i_verify_that_I_am_navigated_to_user_page() throws Throwable {
		objViewUserPage.verifyNavigationToViewUserPage();
	}

	@Then("^I verify \"([^\"]*)\"$")
	public void i_verify(String field) throws Throwable {
		objViewUserPage.verifyFields(field);
	}

	@Then("^I verify enabled \"([^\"]*)\"$")
	public void i_verify_enabled(String applicationsEnabled) throws Throwable {
		objViewUserPage.verifyEnabledApplications(applicationsEnabled);
	}

	@Then("^I verify disabled \"([^\"]*)\"$")
	public void i_verify_disabled(String applicationsDisabled) throws Throwable {
		objViewUserPage.verifyDisabledApplications(applicationsDisabled);
	}
}

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

	@Then("^I verify Edit Icon$")
	public void i_verify_EditIcon() throws Throwable {
		objViewUserPage.verifyEditIcon();
	}
	
	@Then("^I verify Lock/Unlock Icon$")
	public void i_verify_LockUnlockIcon() throws Throwable {
		objViewUserPage.verifyLockUnlockIcon();
	}
	
	@Then("^I verify first name \"([^\"]*)\"$")
	public void i_verify_First_Name(String field) throws Throwable {
		objViewUserPage.verifyFirstName(field);
	}
	
	@Then("^I verify last name \"([^\"]*)\"$")
	public void i_verify_Last_Name(String field) throws Throwable {
		objViewUserPage.verifyLastName(field);
	}
	
	@Then("^I verify role \"([^\"]*)\"$")
	public void i_verify_Role(String field) throws Throwable {
		objViewUserPage.verifyRole(field);
	}
	
	@Then("^I verify email \"([^\"]*)\" for \"([^\"]*)\"$")
	public void i_verify_Email(String field) throws Throwable {
		objViewUserPage.verifyEmail(field);
	}

	@Then("^I verify phone \"([^\"]*)\"$")
	public void i_verify_Phone(String field) throws Throwable {
		objViewUserPage.verifyPhone(field);
	}
	
	@Then("^I verify NPI \"([^\"]*)\"$")
	public void i_verify_NPI(String field) throws Throwable {
		objViewUserPage.verifyNPI(field);
	}
	
	@Then("^I verify health system \"([^\"]*)\"$")
	public void i_verify_HealthSystem(String field) throws Throwable {
		objViewUserPage.verifyHealthSystem(field);
	}
	
	@Then("^I verify programs \"([^\"]*)\"$")
	public void i_verify_Programs(String field) throws Throwable {
		objViewUserPage.verifyPrograms(field);
	}
	
	@Then("^I verify location \"([^\"]*)\" for health system \"([^\"]*)\"$")
	public void i_verify_HealthSystemLocation(String locations, String healthSystem) throws Throwable {
		objViewUserPage.verifyHealthSystemLocation(locations, healthSystem);
	}
	
	@Then("^I verify enabled \"([^\"]*)\"$")
	public void i_verify_enabled(String applicationsEnabled) throws Throwable {
		objViewUserPage.verifyEnabledApplications(applicationsEnabled);
	}
	
	@Then("^I verify learning pathway \"([^\"]*)\"$")
	public void verifyLearningPathway(String learningPathway) throws Throwable {
		objViewUserPage.verifyLearningPathway(learningPathway);
	}

	@Then("^I verify disabled \"([^\"]*)\"$")
	public void i_verify_disabled(String applicationsDisabled) throws Throwable {
		objViewUserPage.verifyDisabledApplications(applicationsDisabled);
	}
}

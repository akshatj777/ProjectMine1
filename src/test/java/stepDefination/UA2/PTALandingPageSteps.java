package stepDefination.UA2;

import com.remedy.resources.DriverScript;
import com.remedy.UA2.*;
import cucumber.api.PendingException;
import cucumber.api.java.en.Then;

public class PTALandingPageSteps extends DriverScript {
	PTALandingPage ptaLandingPage=new PTALandingPage(driver);
	
	@Then("^I should see users with ([^\"]*)$")
	public void i_should_see_users_with_Executive(String role) throws Throwable {
	  ptaLandingPage.iVerifyUsersPresentAsPerPermission(role);
	}

	@Then("^I should not see Users with ([^\"]*)$")
	public void i_should_not_see_Users_with(String role) throws Throwable {
	    ptaLandingPage.iVerifyUsersNotPresentAsPerPermission(role);
	}
}

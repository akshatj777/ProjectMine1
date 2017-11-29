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
	
	@Then("^I enter search box in landing page with ([^\"]*) and verify result$")
	public void i_enter_search_box_in_landing_page_with_Name_Name_Name_Name_Name_and_verify_result(String nameList) throws Throwable {
	    ptaLandingPage.iSearchListOfNamesAndValidateResult(nameList);
	}
	}

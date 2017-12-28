package stepDefination.UA2;

import com.remedy.resources.DriverScript;
import com.remedy.UA2.*;
import cucumber.api.PendingException;
import cucumber.api.java.en.Then;

public class PTALandingPageSteps extends DriverScript {
	PTALandingPage ptaLandingPage=new PTALandingPage(driver);
	
	@Then("^I verify that only provisioned users \"([^\"]*)\" are present in PTA landing page$")
	public void iVerifyProvisioning(String role) throws Throwable {
	  ptaLandingPage.iVerifyProvisionedUsersAsPerRole(role);
	}
	
	@Then("^I verify that users created by PTA user \"([^\"]*)\" are present in landing page$")
	public void iVerifyUsersCreated(String nameList) throws Throwable {
	    ptaLandingPage.iVerifyPresenceOfCreatedUser(nameList);
	}
	}

package stepDefination.programManagement;

import com.remedy.programManagement.CreatePGPOrganization;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;

public class CreatePGPOrganizationStepDef extends DriverScript {

	 CreatePGPOrganization createPGP = new CreatePGPOrganization(driver);

	@And("^I select region \"([^\"]*)\" in \"([^\"]*)\" organization page$")
	  public void i_Select_Region_On_OrganizationPage(String text, String field) throws Throwable {
		createPGP.iSelectRegionOnOrganizationPage(text,field);
	    }
	
	@And("^I select market \"([^\"]*)\" in \"([^\"]*)\" organization page$")
	  public void i_Select_Market_On_OrganizationPage(String text, String field) throws Throwable {
		createPGP.iSelectMarketOnOrganizationPage(text,field);
	    }
	
}

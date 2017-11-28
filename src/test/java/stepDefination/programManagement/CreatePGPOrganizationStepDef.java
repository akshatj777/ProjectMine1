package stepDefination.programManagement;

import com.remedy.programManagement.CreateACHOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreatePGPOrganizationStepDef extends DriverScript {

	 CreateACHOrganization createACH = new CreateACHOrganization(driver);

	@And("^I select region ([^\"]*) in \"([^\"]*)\" organization page$")
	  public void i_Enter_Region_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterMarketForLocationOnACHOrg(text,num);
	    }
	
	@And("^I select market ([^\"]*) in \"([^\"]*)\" organization page$")
	  public void i_Enter_Market_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterMarketForLocationOnACHOrg(text,num);
	    }
	
}

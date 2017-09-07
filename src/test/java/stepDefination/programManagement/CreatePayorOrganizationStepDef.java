package stepDefination.programManagement;

import com.remedy.programManagement.CreatePayorOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreatePayorOrganizationStepDef extends DriverScript {
  CreatePayorOrganization createPayorOrg = new CreatePayorOrganization(driver);
  
  @And("^I verify \"([^\"]*)\" tab under \"([^\"]*)\" organization dashboard$") 
  public void i_Verify_Field_Tabs_Under_Selected_Organization_Dashboard(String field,String org) throws Throwable {
	  createPayorOrg.iVerifyFieldTabsUnderSelectedOrganizationDashboard(field);
  }

}

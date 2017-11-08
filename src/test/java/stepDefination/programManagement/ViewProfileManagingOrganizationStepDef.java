package stepDefination.programManagement;

import com.remedy.baseClass.BaseClass;
import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.programManagement.ViewProfileManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class ViewProfileManagingOrganizationStepDef extends DriverScript {
	
	ViewProfileManagingOrganization viewProfileMO = new ViewProfileManagingOrganization(driver);
	BaseClass objBaseClass = new BaseClass(driver);
	
	@And("^I verify ([^\"]*) name on the header of view profile$")
	  public void i_Verify_Name_On_Header_On_View_Profile(String text) throws Throwable {
		viewProfileMO.iVerifyNameOnHeaderOnViewProfile(CreateManagingOrganization.orgName);
	    }
	
	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" organization in Managing Organization$")
	  public void i_Verify_Header_Label_Under_Organization_In_ManagingOrganization(String header,String org) throws Throwable {
		viewProfileMO.iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(header,org);
	}
	
  }
	
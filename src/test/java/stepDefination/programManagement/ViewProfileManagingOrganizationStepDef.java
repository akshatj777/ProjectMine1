package stepDefination.programManagement;

import com.remedy.programManagement.ViewProfileManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class ViewProfileManagingOrganizationStepDef extends DriverScript {
	
	ViewProfileManagingOrganization viewProfileMO = new ViewProfileManagingOrganization(driver);
	
	@And("^I verify ([^\"]*) name on the header of view profile$")
	  public void i_Verify_Name_On_Header_On_View_Profile(String text) throws Throwable {
		viewProfileMO.iVerifyNameOnHeaderOnViewProfile(text);
	    }
	
	@And("^I verify Participant Id ([^\"]*) on view profile of Managing Organization$")
	  public void i_Verify_ParticipantId_On_View_Profile_Of_Managing_Organization(String text) throws Throwable {
		viewProfileMO.iVerifyParticipantIdOnVewProfileOfManagingOrganization(text);
	    }
	
	@And("^I verify ([^\"]*) in \"([^\"]*)\" on view profile of Managing Organization$")
	  public void i_Verify_Details_In_Field_On_View_Profile_Of_Managing_Organization(String text, String sel) throws Throwable {
		viewProfileMO.iVerifyDetailsInFieldOnViewProfileOfManagingOrganization(text,sel);
	    }
	
	@And("^I verify \"([^\"]*)\" organization present under Managing Organization$")
	  public void i_Verify_Organziation_Present_Under_Managing_Organization(String org) throws Throwable {
		viewProfileMO.iVerifyOrganizationPresentUnderManagingOrganization(org);
	    }
	
	@Then("^I verify \"([^\"]*)\" organization by default selected under Managing Organization$")
	  public void i_Verify_Organization_By_Default_Selected_Under_ManagingOrganization(String org) throws Throwable {
		viewProfileMO.iVerifyOrganizationByDefaultSelectedUnderManagingOrganization(org);
	}
	
	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" organization in Managing Organization$")
	  public void i_Verify_Header_Label_Under_Organization_In_ManagingOrganization(String header,String org) throws Throwable {
		viewProfileMO.iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(header,org);
	}
	
	@And("^I click on \"([^\"]*)\" organization under Managing Organization$")
	  public void i_Click_On_Organization_Under_ManagingOrganization(String org) throws Throwable {
		viewProfileMO.iClickOnOrganizationUnderManagingOrganization(org);
	}
}

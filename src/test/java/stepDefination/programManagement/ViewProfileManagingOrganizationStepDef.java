package stepDefination.programManagement;

import com.remedy.programManagement.ViewProfileManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

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
	
}

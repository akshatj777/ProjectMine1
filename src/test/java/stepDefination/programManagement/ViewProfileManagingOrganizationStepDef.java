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
		viewProfileMO.iVerifyNameOnHeaderOnViewProfile(text);
	    }
	
	@And("^I verify Participant Id ([^\"]*) on view profile of \"([^\"]*)\" Organization$")
	  public void i_Verify_ParticipantId_On_View_Profile_Of_Organization(String text,String org) throws Throwable {
		CreateManagingOrganization.participant_id = objBaseClass.Cache.getProperty("PARTICIPANT_ID");
		viewProfileMO.iVerifyParticipantIdOnVewProfileOfOrganization(CreateManagingOrganization.participant_id);
	    }
	
	@And("^I verify ([^\"]*) in \"([^\"]*)\" on view profile of \"([^\"]*)\" Organization$")
	  public void i_Verify_Details_In_Field_On_View_Profile_Of_Organization(String text, String sel,String org) throws Throwable {
		viewProfileMO.iVerifyDetailsInFieldOnViewProfileOfOrganization(text,sel);
	    }
	
	@And("^I Verify the count for the associated Organizations$")
	  public void I_Verify_the_count_for_the_associated_Organizations() throws Throwable {
		viewProfileMO.iVerifytheCountfortheassociatedOrganizations();
	    }
	
	@And("^I verify \"([^\"]*)\" organization present under \"([^\"]*)\" Organization$")
	  public void i_Verify_Organziation_Present_Under_Managing_Organization(String org, String org1) throws Throwable {
		viewProfileMO.iVerifyOrganizationPresentUnderManagingOrganization(org,org1);
	    }
	@Then("^I verify \"([^\"]*)\" organization by default selected under Managing Organization$")
	  public void i_Verify_Organization_By_Default_Selected_Under_ManagingOrganization(String org) throws Throwable {
		viewProfileMO.iVerifyOrganizationByDefaultSelectedUnderManagingOrganization(org);
	}
	
	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" organization in Managing Organization$")
	  public void i_Verify_Header_Label_Under_Organization_In_ManagingOrganization(String header,String org) throws Throwable {
		viewProfileMO.iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(header,org);
	}
	
	@And("^I verify the count for the associated organization$")
	  public void I_verify_the_count_associated_with_organization() throws Throwable {
		viewProfileMO.iVerifytheCountFortheAssociatedorganization();
	}
	
	@And("^I click on \"([^\"]*)\" organization under Managing Organization$")
	  public void i_Click_On_Organization_Under_ManagingOrganization(String org) throws Throwable {
		viewProfileMO.iClickOnOrganizationUnderManagingOrganization(org);
	}
	
	@And("^I verify EIN/TIN id ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_EIN_TIN_Id_On_View_Profile_Of_Organization(String text,String org) throws Throwable {
		viewProfileMO.iVerifyEINTINIdOnViewProfilePGPOrganization(CreateManagingOrganization.EIN);
	}
	
	@And("^I verify NIP number ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_NPI_On_View_Profile_Of_Organization(String text, String org) throws Throwable {
		viewProfileMO.iVerifyNPIOnViewProfilePGPOrganization(CreateManagingOrganization.NPI);
	}
	
	@And("^I verify Managing Organization name ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_ManagingOrgName_On_View_Profile_Of_Organization(String name, String org) throws Throwable {
		//name = CreateManagingOrganization.orgName;
		name=objBaseClass.readProperty("MO_NAME");
		viewProfileMO.iVerifyManagingOrganizationNameOnViewProfileOfOrganization(name);
	}
	
	@And("^I click on the cross button$")
	  public void i_click_on_the_cross_button() throws Throwable {
		viewProfileMO.iClickontheCrossButton();
	}
	
	@And("^user should get redirected to the managing organization tab page$")
	  public void user_should_get_redirected_to_the_managing_organization_tab_page() throws Throwable {
		viewProfileMO.userShouldGetRedirectedToTheManagingOrganizationTabPage();
	}
}

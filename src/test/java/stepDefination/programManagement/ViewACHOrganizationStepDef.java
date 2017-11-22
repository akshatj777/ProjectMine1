package stepDefination.programManagement;

import java.util.HashMap;

import com.remedy.programManagement.CreateACHOrganization;
import com.remedy.programManagement.ViewACHOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class ViewACHOrganizationStepDef extends DriverScript {
	public static HashMap<String, String> tempAchOrg = new HashMap<String, String>();
	
	ViewACHOrganization viewACH= new ViewACHOrganization(driver);
	
	@And("^I verify CCN \"([^\"]*)\" on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_CCN_On_ViewProfile_Of_Slecetd_Organization(String text, String org) throws Throwable {
		viewACH.iVerifyCCNOnViewProfileOfSelectedOrganization(text, org);
	}

	@And("^I verify EIN/TIN id \"([^\"]*)\" on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_EIN_TIN_Id_On_View_Profile_Of_Organization(String text, String org) throws Throwable {
		viewACH.iVerifyEINTINIdOnViewProfileOrganization(text, org);
	}
	
	@And("^I verify NPI number \"([^\"]*)\" on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_NPI_On_View_Profile_Of_Organization(String text, String org) throws Throwable {
		viewACH.iVerifyNPIOnViewProfileOrganization(text, org);
	}
	
	@And("^I verify header name \"([^\"]*)\" under \"([^\"]*)\" for \"([^\"]*)\" organization$")
	  public void i_Verify_Header_Name_UnderTab_For_Slecetd_Organization(String tab, String loc, String org) throws Throwable {
		viewACH.iVerifyHeaderNameUnderSelectedOrganization(tab);
	}
	
	@And("^I verify Region name ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_RegionName_On_ViewProfile_Of_Slecetd_Organization(String name, String org) throws Throwable {
		viewACH.iVerifyRegionNameInVeiwProfileOfSelectedOrganization(name);
	}
	
	@And("^I verify Market name ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_MarketName_On_ViewProfile_Of_Slecetd_Organization(String name, String org) throws Throwable {
		viewACH.iVerifyMarketNameInVeiwProfileOfSelectedOrganization(name);
	}
	
	@And("^I verify the count of the Location$")
	  public void i_Verify_the_count_of_the_Location(String text) throws Throwable {
		viewACH.iVerifytheCountOftheLoaction(text);
	}
	
	@And("^I click on Add Location button$")
	  public void i_Click_on_Add_New_location(String button) throws Throwable {
		viewACH.iClickonAddNewLocationButton(button);
	}
	
	@Then("^I verify the Search bar in Location on \"([^\"]*)\" Profile Page$")
	  public void i_Verify_the_SearchBar_In_Location_on_profile_page(String text) throws Throwable {
		viewACH.iClickonAddNewLocationButton(text);
	}
	
	@And("^User should get redirected to the \"([^\"]*)\" organization tab page$")
	  public void user_should_get_redirected_to_the_managing_organization_tab_page(String text) throws Throwable {
		viewACH.userShouldGetRedirectedToTheOrganizationTabPage(text);
		}
	@And("^I verify \"([^\"]*)\" on view profile of \"([^\"]*)\" Organization$")
	  public void I_Verify_ManagingOrganization_on_view_profile_of_organization(String text, String org) throws Throwable {
		viewACH.iVerifyManagingOrganizationOnViewProfileOfOrganizationPage(text,org);
		}
	
	
}

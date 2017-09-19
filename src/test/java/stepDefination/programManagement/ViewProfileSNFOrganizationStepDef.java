package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.programManagement.ViewProfileSNFOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class ViewProfileSNFOrganizationStepDef extends DriverScript {
	ViewProfileSNFOrganization viewSNFOrg = new ViewProfileSNFOrganization(driver); 
	
	
	@And("^I see \"([^\"]*)\" count under location in SNF organization$")
	  public void i_See_Count_Under_Location_In_SNF_Organization(String count) throws Throwable {
		viewSNFOrg.iSeeCountUnderLocationInSNFOrganization(count);
	}
	
	@And("^I verify CCN ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_CCN_On_ViewProfile_Of_Slecetd_Organization(String id, String org) throws Throwable {
		viewSNFOrg.iVerifyCCNOnViewProfileOfSelectedOrganization(CreateManagingOrganization.CCN);
	}

	@And("^I verify header name \"([^\"]*)\" under \"([^\"]*)\" for \"([^\"]*)\" organization$")
	  public void i_Verify_Header_Name_UnderTab_For_Slecetd_Organization(String tab, String loc, String org) throws Throwable {
		viewSNFOrg.iVerifyHeaderNameUnderSelectedOrganization(tab);
	}
	
	@And("^I verify Region name ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_RegionName_On_ViewProfile_Of_Slecetd_Organization(String name, String org) throws Throwable {
		viewSNFOrg.iVerifyRegionNameInVeiwProfileOfSelectedOrganization(name);
	}
	
	@And("^I verify Market name ([^\"]*) on view profile of \"([^\"]*)\" organization$")
	  public void i_Verify_MarketName_On_ViewProfile_Of_Slecetd_Organization(String name, String org) throws Throwable {
		viewSNFOrg.iVerifyMarketNameInVeiwProfileOfSelectedOrganization(name);
	}
	
}

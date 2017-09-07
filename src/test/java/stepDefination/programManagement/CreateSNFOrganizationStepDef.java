package stepDefination.programManagement;

import com.remedy.programManagement.CreateSNFOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateSNFOrganizationStepDef extends DriverScript{
	CreateSNFOrganization createSNFOrg = new CreateSNFOrganization(driver);
	
	 @And("^I verify \"([^\"]*)\" on \"([^\"]*)\" SNF organization page$")
	  public void i_Enter_ORG_Name_On_Create_PGP_Organization_Page(String text,String field) throws Throwable {
		 createSNFOrg.iVerifyLocationOnSNFOrganizationPage(text);
	    }
	 
	 @And("^I enter location name ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationName_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterLocationNameForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter address1 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address1_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterAddress1ForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter location type ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationType_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterLocationTypeForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter address2 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address2_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterAddress2ForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter region ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_region_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterRegionForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter city ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_City_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterCityForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter market ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Market_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterMarketForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter state ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_state_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterStateForLocationOnSNFOrg(text,num);
	    }
	 
	 @And("^I enter zip ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_zip_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createSNFOrg.iEnterZipForLocationOnSNFOrg(text,num);
	    }
}

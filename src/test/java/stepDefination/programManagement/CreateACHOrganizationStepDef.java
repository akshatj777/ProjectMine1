package stepDefination.programManagement;

import com.remedy.programManagement.CreateACHOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateACHOrganizationStepDef extends DriverScript {
	 CreateACHOrganization createACH = new CreateACHOrganization(driver);

	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" organization in Hospital Organization$")
	  public void i_Verify_Header_Label_Under_Organization_In_HospitalOrganization(String header,String org) throws Throwable {
		createACH.iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(header,org);
		}
	
	@And("^I verify \"([^\"]*)\" dropdown field on create organization page$")
	  public void i_Verify_Label_DropDown_Field_On_Create_Organization_Page(String text) throws Throwable {
		createACH.iVerifyLabelDropDownFieldOnCreateOrganizationPage(text);
	    }
	 @And("^I click on \"([^\"]*)\" organization tab on organization dashboard$")
	  public void i_Click_On_Particular_Organization_Tab_Organization_Dashboard(String text) throws Throwable {
		 createACH.iClickOnParticularOrganizationTabOrganizationDashboard(text);
	 }
	 
	 @And("^I provide unique \"([^\"]*)\" in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_Identifiers_In_Filed_On_Create_Organization_Page(String id, String field) throws Throwable {
		 createACH.iEnterCNNorNPIorEINIdOnCreateOrganizationPage(id, field);
	    }
	 
	 @And("^I enter location name ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationName_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterLocationNameForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter address1 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address1_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterAddress1ForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter location type ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationType_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterLocationTypeForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter address2 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address2_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterAddress2ForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter region ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_region_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterRegionForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter city ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_City_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterCityForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter market ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Market_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterMarketForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter state ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_state_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterStateForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter zip ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_zip_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createACH.iEnterZipForLocationOnACHOrg(text,num);
	    }
	 @And("^I select \"([^\"]*)\" radio button for managing organization$")
	  public void i_Select_Radio_Button_For_Managing_Organization(String text) throws Throwable {
		 createACH.iSelectRadioButtonForManagingOrganization(text);
	 }
	
	 @And("^I select managing organization name in \"([^\"]*)\" Has a Management Organization drop down$")
	  public void i_Select_ManagingOrg_Name_In_Has_A_Managing_Organization_DropDown(String text) throws Throwable {
		 createACH.iSelectManagingOrgNameInHasAManagingOrganizationDropDown(text);
	 }
	
}

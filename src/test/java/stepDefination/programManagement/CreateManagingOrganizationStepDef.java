package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class CreateManagingOrganizationStepDef extends DriverScript{
	CreateManagingOrganization createMO = new CreateManagingOrganization(driver);
	
	@And("^I verify \"([^\"]*)\" button under organization tab$")
	  public void i_Verify_Button_Under_Organization_Tab(String button) throws Throwable {
		 createMO.iVerifyButtonUnderOrganizationTab(button);
	    }
	
	 @And("^I click on create new Organization button on Program Management homepage$")
	  public void i_Click_On_Create_NewOrganizationButton_On_ProgramManagement_Homepage() throws Throwable {
		 createMO.iClickOnCreateNewOrgButtonOnProgramManagementHomepage();
	    }
	 
	 @And("^I verify \"([^\"]*)\" header text on ([^\"]*) organization page$")
	  public void i_Verify_HeaderText_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyHeaderTextOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" field on ([^\"]*) organization page$")
	  public void i_Verify_Label_Fields_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyLabelFieldsOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" drop down field on ([^\"]*) organization page$")
	  public void i_Verify_Label_DropDown_Field_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyLabelDropDownFieldOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I click on \"([^\"]*)\" button on create organization page$")
	  public void i_Click_On_Button_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iClickOnButtonOnCreateOrganizationPage(text);
	    }

	 @And("^I click on cancel button on create organization page$")
	  public void i_Click_On_Cancel_Button_On_Create_Organization_Page() throws Throwable {
		 createMO.iClickOnCancelButtonOnCreateOrganizationPage();
	    }
	 
	 @Then("^User navigated to view page$")
	  public void user_navigated_to_view_page() throws Throwable {
		 createMO.userNavigatedToViewPage();
	 }

	 @And("^I verify \"([^\"]*)\" button on ([^\"]*) organization page$")
	  public void i_verify_On_Button_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyOnButtonOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" mandatory field validation message on ([^\"]*) organization page$")
	  public void i_Verify_ValidationMessage_Under_MandatoryFields_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyManadtoryFieldValidationOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" validation message should not appear on ([^\"]*) organization page$")
	  public void i_Verify_ValidationMessage_Should_NOT_Appear_On_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyFieldValidationMessageShouldNotAppearOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify ([^\"]*) after submitting the ([^\"]*) ogranization page$")
	  public void i_Verify_ValidationMessage_after_submitting_Create_Organization_Page(String text, String action) throws Throwable {
		 createMO.iVerifyMessageAfterSubmittingCreateOrganizationPage(text);
	    }
		
	 @And("^I enter ([^\"]*) in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_Details_In_Fileds_On_Create_Organization_Page(String text,String field) throws Throwable {
		 createMO.iEnterDetailsInFieldsOnCreateOrganizationPage(text,field);
	    }
	  
	 @And("^I provide unique CCN in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_CNN_In_Filed_On_Create_Organization_Page(String field) throws Throwable {
		 createMO.iEnterCNNorNPIorEINIdOnCreateOrganizationPage(field);
	    }
	 
	 @And("^I provide unique NPI in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_NPI_In_Filed_On_Create_Organization_Page(String field) throws Throwable {
		 createMO.iEnterNPIOnCreateOrganizationPage(field);
	    }
	 
	 @And("^I provide unique EIN in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_EIN_In_Filed_On_Create_Organization_Page(String field) throws Throwable {
		 createMO.iEnterEINIdOnCreateOrganizationPage(field);
	    }
	 
	 @And("^I select ([^\"]*) in State on create organization page$")
	  public void i_Selecct_State_FromDropDown_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iSelectStateFromDropDownOnCreateOrganizationPage(text);
	 }
	 
	 @And("^I verify \"([^\"]*)\" after submitting the create ogranization page$")
	  public void i_Verify_Message_After_Submitting_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyMessageAfterSubmittingCreateOrganizationPage(text);
	 }
	 
	 @And("^I switch the focus to \"([^\"]*)\" button$")
	  public void i_Switch_The_Focus_To_Button(String type) throws Throwable {
		 createMO.iSwitchFocusToButton(type);
	 } 
	 
	 @And("^I enter location name ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationName_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterLocationNameForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter address1 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address1_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterAddress1ForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter location type ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_LocationType_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterLocationTypeForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter address2 ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Address2_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterAddress2ForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter region ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_region_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterRegionForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter city ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_City_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterCityForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter market ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_Market_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterMarketForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter state ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_state_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterStateForLocationOnACHOrg(text,num);
	    }
	 
	 @And("^I enter zip ([^\"]*) for Location \"([^\"]*)\" on \"([^\"]*)\" organization page$")
	  public void i_Enter_zip_For_Locations_On_OrganizationPage(String text,int num, String field) throws Throwable {
		 createMO.iEnterZipForLocationOnACHOrg(text,num);
	    }

}


package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateManagingOrganizationStepDef extends DriverScript{
	CreateManagingOrganization createMO = new CreateManagingOrganization(driver);
	
	 @And("^I click on create new Organization button on Program Management homepage$")
	  public void i_Click_On_Create_NewOrganizationButton_On_ProgramManagement_Homepage() throws Throwable {
		 createMO.iClickOnCreateNewOrgButtonOnProgramManagementHomepage();
	    }
	 
	 @And("^I verify \"([^\"]*)\" header text on create organization page$")
	  public void i_Verify_HeaderText_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyHeaderTextOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" field on create organization page$")
	  public void i_Verify_Label_Fields_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyLabelFieldsOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" drop down field on create organization page$")
	  public void i_Verify_Label_DropDown_Field_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyLabelDropDownFieldOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I click on \"([^\"]*)\" button on create organization page$")
	  public void i_Click_On_Button_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iClickOnButtonOnCreateOrganizationPage(text);
	    }
	 
	 @And("^I verify \"([^\"]*)\" mandatory field validation message on create organization page$")
	  public void i_Verify_ValidationMessage_Under_MandatoryFields_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyManadtoryFieldValidationOnCreateOrganizationPage(text);
	    }
		
	 @And("^I enter ([^\"]*) in \"([^\"]*)\" on create organization page$")
	  public void i_Enter_Details_In_Fileds_On_Create_Organization_Page(String text,String field) throws Throwable {
		 createMO.iEnterDetailsInFieldsOnCreateOrganizationPage(text,field);
	    }
	 
	 @And("^I select ([^\"]*) in State on create organization page$")
	  public void i_Selecct_State_FromDropDown_On_Create_Organization_Page(String text) throws Throwable {
		 createMO.iSelectStateFromDropDownOnCreateOrganizationPage(text);
	 }
	 
	 @And("^I verify \"([^\"]*)\" after submitting the create ogranization page$")
	  public void i_Verify_Message_After_Submitting_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyMessageAfterSubmittingCreateOrganizationPage(text);
	 }
	 
	 @And("^I search ([^\"]*) managing organization in search box$")
	  public void i_Search_ManagingOrganization_In_Serach_Box(String text) throws Throwable {
		 createMO.iSearchManagingOrganizationInSearchBox(text);
	 }
}

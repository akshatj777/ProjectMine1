package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

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
	 
	 @And("^I verify ([^\"]*) after submitting the create ogranization page$")
	  public void i_Verify_ValidationMessage_after_submitting_Create_Organization_Page(String text) throws Throwable {
		 createMO.iVerifyCreateOrganizationwithDuplicatenameerrormsg(text);
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
	 
	 @And("^I search ([^\"]*) managing organization in search box$")
	  public void i_Search_ManagingOrganization_In_Serach_Box(String text) throws Throwable {
		 createMO.iSearchManagingOrganizationInSearchBox(text);
	 }
	 
	 @And("^I fetch Participant Id assigned to the organization$")
	  public void i_Verify_ParticipantId_Assigned_To_Organization() throws Throwable {
		 createMO.iFetchParticipantIdAssignedToOrganization();
	 }
	 
	 @And("^I switch the focus to \"([^\"]*)\" button$")
	  public void i_Switch_The_Focus_To_Button(String type) throws Throwable {
		 createMO.iSwitchFocusToButton(type);
	 }
	 
	 @And("^A confirmation pop-up should appear for cancellation$")
	  public void a_confirmation_pop_up_should_appear_for_cancellation() throws Throwable {
		 createMO.iFetchParticipantIdAssignedToOrganization();
	 }
	 
	 @And("^I click on Yes button and Observe the page$")
	  public void I_click_on_Yes_button_and_Observe_the_page() throws Throwable {
		 createMO.iFetchParticipantIdAssignedToOrganization();
	 }
	 
	 @And("^After click on the Yes button, Create a new Managing Organization process is terminated$")
	  public void After_click_on_the_Yes_button_Create_a_new_Managing_Organization_process_is_terminated() throws Throwable {
		 createMO.iFetchParticipantIdAssignedToOrganization();
	 }
	 
	 @And("^User navigated to home page of Manage organization$")
	  public void User_navigated_to_homepage_of_Manage_organization() throws Throwable {
		 createMO.iFetchParticipantIdAssignedToOrganization();
	 }
	 
}

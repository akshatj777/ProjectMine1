package stepDefination.programManagement;

import com.remedy.programManagement.SubmitMOForValidationAndCreation;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class SubmitMOForValidationAndCreationStepDef extends DriverScript {
	
	SubmitMOForValidationAndCreation submitmo = new SubmitMOForValidationAndCreation(driver);
	
	 @And("^I verify no validation errors occur on create organization page$")
	  public void i_Verify_No_Validation_ErrorOccur_On_Create_Organization_Page() throws Throwable {
		 submitmo.iVerifyNoValidationErrorOccurOnCreateOrganizationPage();
	    }
	 
	 @And("^I click on \"([^\"]*)\" organization tab on organization dashboard$")
	  public void i_Click_On_Particular_Organization_Tab_Organization_Dashboard(String text) throws Throwable {
		 submitmo.iClickOnParticularOrganizationTabOrganizationDashboard(text);
	 }
	 
	 @And("^I select \"([^\"]*)\" radio button for managing organization$")
	  public void i_Select_Radio_Button_For_Managing_Organization(String text) throws Throwable {
		 String value;
		 if(text.contentEquals("Has a Management Organization")) {
			 value="true"; }
		 else {
			 value="false";}
		 System.out.println(value);
		 submitmo.iSelectRadioButtonForManagingOrganization(value);
	 }
	 
	 @And("^I enter ([^\"]*) in Region on create organization page$")
	  public void i_Enter_Details_In_Region_DropDown_On_Create_Organization_Page(String text) throws Throwable {
		 submitmo.iSelectRegionFromDropDownOnCreateOrganization(text);
	 }
	 
	 @And("^I enter ([^\"]*) in Market on create organization page$")
	  public void i_Enter_Details_In_Market_DropDown_On_Create_Organization_Page(String text) throws Throwable {
		 submitmo.iSelectMarketFromDropDownOnCreateOrganization(text);
	 }


}

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

}

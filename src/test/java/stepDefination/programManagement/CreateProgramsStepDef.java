package stepDefination.programManagement;

import com.remedy.programManagement.CreatePrograms;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateProgramsStepDef extends DriverScript{
	CreatePrograms programs= new CreatePrograms(driver);
	
	
	@And("^I verify \"([^\"]*)\" after submitting the \"([^\"]*)\" on Payor organization page$")
	  public void i_Verify_Message_After_Submitting_Create_Organization_Page(String text, String org) throws Throwable {
		programs.iVerifyMessageAfterSubmittingCreateOrganizationPageUnderPayorOrganization(text, org);
	 }
	
	@And("^I verify \"([^\"]*)\" header label under \"([^\"]*)\" view profile page$")
	  public void i_Verify_Header_Label_Under_Organization(String header,String org) throws Throwable {
		programs.iVerifyHeaderLabelUnderSelectedOrganization(header,org);
		}
	
	@And("^I select \"([^\"]*)\" Program name in create Contract page under Payor Organization$")
	  public void i_select_Program_name_in_create_Contract_page_under_Payor_Organization(String text) throws Throwable {
		programs.iSelectProgramNameInCreateContractPageUnderPayorOrganization(text);
		}
	
	@And("^I verify \"([^\"]*)\" on \"([^\"]*)\" page under Payor Organization$")
	  public void i_Verify_On_Contract_On_Create_Contract_Page_Under_Payor_Organization(String text) throws Throwable {
		programs.iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(text);
	    }
	
	@And("^I select Organiztion type \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Select_OrganizationType_on_Create_Contracts_Page(String text) throws Throwable {
		programs.iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(text);
	    }
	
	@And("^I select Organiztion name \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Select_Organization_Name_on_Create_Contracts_Page(String text) throws Throwable {
		programs.iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(text);
	    }

}

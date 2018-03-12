package stepDefination.programManagement;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.programManagement.CreatePrograms;
import com.remedy.resources.DriverScript;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class CreateProgramsStepDef extends DriverScript{
	CreatePrograms programs= new CreatePrograms(driver);
	CreateManagingOrganization createMO = new CreateManagingOrganization(driver);
	
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
	  public void i_Verify_On_Contract_On_Create_Contract_Page_Under_Payor_Organization(String text, String field) throws Throwable {
		programs.iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(text);
	    }
	
	@And("^I select Organization type \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Select_OrganizationType_on_Create_Contracts_Page(String text, int num, String field) throws Throwable {
		programs.iSelectOrganizationTypeOnCreateContratsPageUnderPayorOrganization(text, num, field);
	    }
	
	@And("^I select Organization name \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Select_Organization_Name_on_Create_Contracts_Page(String text, int num, String field) throws Throwable {
		programs.iSelectOrganizationNameOnCreateContratsPageUnderPayorOrganization(text, num, field);
	    }
	
	@And("^I select Bundle \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Select_Bundle1_on_Create_Contracts_Page(String text, int num, String field) throws Throwable {
		programs.iSelectBundleOnCreateContractsPageUnderPayorOrganization(text,num,field);
	    }
	
	@And("^I enter price \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
	  public void i_Enter_Price_on_Create_Contracts_Page(String text, int num, String field) throws Throwable {
		programs.iEnterPriceOnCreateContractsPage(text,num,field);
	    }
	
	@And("^I enter \"([^\"]*)\" in \"([^\"]*)\" for \"([^\"]*)\" for Contract \"([^\"]*)\"$")
	  public void i_Enter_For_Bundle_Price1_on_Create_Contracts_Page(String text, String field, String field1, int num) throws Throwable {
		programs.iEnterBundle_Price1DetailsOnContractsPage(text, field, num, field1);
	    }
	
	@Then ("^I select the date from date picker with logic \"([^\"]*)\" days from current date$")
	public void i_insert_days(String logic,DataTable dates) throws ParseException{
		List<Map<String,Integer>> data = dates.asMaps(String.class,Integer.class);
		programs.iInsertdays1(data);
       }
	
	@Then ("^I Click on \"([^\"]*)\" button$")
	public void i_Click_on_Addbundle_Button(String text){
		createMO.iClickOnButtonOnCreateOrganizationPage(text);
	}
	
	@And("^I verify \"([^\"]*)\" header text on create Contracts page$")
	  public void i_Verify_Create_Contract_Header_Text_On_Create_Contracts_Page(String text) throws Throwable {
		programs.iVerifyCreateContractHeaderTextOnCreateContractsPage(text);
	    }
	
	@And("^I verify \"([^\"]*)\" field on create Contracts page$")
	  public void i_Verify_Field_On_Create_Contracts_Page(String text) throws Throwable {
		programs.iVerifyFieldOnCreateContractsPage(text);
	    }
	
	@And("^I verify \"([^\"]*)\" field for Contract \"([^\"]*)\" on Create Contracts page$")
	  public void i_Verify_Dates_Field_On_Create_Contracts_Page(String text) throws Throwable {
		programs.iVerifyFieldOnCreateContractsPage(text);
	    }
	
	@And("^I click on checkbox for \"([^\"]*)\" Attribution rule$")
	  public void i_Click_On_Checkboxe_For_Attribution_Rules_On_Create_Programs(String text) throws Throwable {
		programs.iClickOnCheckboxeForAttributionRulesOnCreatePrograms(text);
	    }
	
	@And("^I enter date \"([^\"]*)\" in \"([^\"]*)\" field for index \"([^\"]*)\"$")
	  public void enterDateInContractPage(String date, String field, int index) throws Throwable {
		programs.enterDate(date,field, index);
	    }
	
	@And("^I verify \"([^\"]*)\" attribution rules on \"([^\"]*)\" program page$")
	  public void i_Verify_Attribution_Rules_On_Create_Program_Page(String text, String act) throws Throwable {
		programs.iVerifyAttributionRulesOnCreateProgramPage(text,act);
	    }
	
	@And("^I drag and drop the attribution rules in \"([^\"]*)\" Program page$")
	  public void i_DragandDrop_the_Attribution_Rules_On_Create_Program_Page(String act) throws Throwable {
		programs.iDragandDroptheAttributionRulesOnCreateProgramPage(act);
	    }
}

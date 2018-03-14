package stepDefination.programManagement;

import com.remedy.programManagement.CreateBundlePaymentContracts;
import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class CreateBundlePaymentContractsStepDef extends DriverScript {
	
	CreateBundlePaymentContracts CreateBPContracts= new CreateBundlePaymentContracts(driver);
	CreateManagingOrganization createMO = new CreateManagingOrganization(driver);
	
	
	@And("^I verify \"([^\"]*)\" field on create Contracts page under Payor Organization$")
	  public void i_Verify_Contracts_Field_On_Create_Contracts_Page_Under_payor_Organiztion(String text) throws Throwable {
		CreateBPContracts.iVerifyContractsFieldOnCreateContractsPageUnderPayorOrganiztion(text);
	 }

	@And("^I verify \"([^\"]*)\" field for \"([^\"]*)\" on create Contracts page$")
	  public void i_Verify_Date_Fields_On_Create_Contracts_Page(String text, String action) throws Throwable {
		CreateBPContracts.iVerifyDateFieldsOnCreateContractsPage(text,action);
	 }
	
//	@And("^I enter Contract Id \"([^\"]*)\" for Contract \"([^\"]*)\" on \"([^\"]*)\" Contracts page$")
//	  public void i_Enter_ContractID_On_Create_Contracts_Page(String text, int num,String action) throws Throwable {
//		CreateBPContracts.iEnterContractIDOnCreateContractsPage(text,num,action);
//	 }
}

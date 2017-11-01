package stepDefination.programManagement;

import org.apache.commons.lang.RandomStringUtils;

import com.remedy.baseClass.BaseClass;
import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.programManagement.EditManagingOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class EditManagingOrganizationStepDef extends DriverScript{
	EditManagingOrganization editManagingOrg = new EditManagingOrganization(driver);
	BaseClass objBaseClass = new BaseClass(driver);
	
	@And("^I click ([^\"]*) field in search list on organization page$")
	  public void i_Click_Field_In_SearchList_On_Organization_Page(String field) throws Throwable {
		editManagingOrg.iClickFieldInSearchListOnOrganizationPage(field);
	    }
	
	@And("^I click on \"([^\"]*)\" button on particular organization$")
	  public void i_Click_On_Button_On_Particular_Organization(String button) throws Throwable {
		editManagingOrg.iClickOnButtonOnParticularOrganization(button);
	    }
	
	@And("^I edit \"([^\"]*)\" field to ([^\"]*) for organization$")
	  public void i_Edit_All_Fields_Of_Organization(String field1, String field2) throws Throwable {
		if (field2.contains("MONAME"))
		{
			CreateManagingOrganization.editedOrgName = "MONAME" + RandomStringUtils.randomAlphabetic(8) + "ORGName" ;
			CreateManagingOrganization.orgName = CreateManagingOrganization.editedOrgName;
			objBaseClass.writeProperty("MO_NAME", CreateManagingOrganization.editedOrgName);
			editManagingOrg.iEditAllFieldsOFOrganization(field1,CreateManagingOrganization.editedOrgName);
		}
				else
		{
			editManagingOrg.iEditAllFieldsOFOrganization(field1,field2);
		}

	 }
	 
	@And("^I edit ([^\"]*) field for organization$")
	  public void i_Selecct_State_FromDropDown_On_Create_Organization_Page(String text) throws Throwable {
		 editManagingOrg.iEditStateFieldForOrganization(text);
	 }
	 
}

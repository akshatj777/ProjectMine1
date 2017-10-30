package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrganization;
import com.remedy.programManagement.SearchOrganization;
import com.remedy.resources.DriverScript;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;

public class SearchOrganizationDef extends DriverScript{
	SearchOrganization searchorganization = new SearchOrganization(driver);

	@And("^I search with ([^\"]*) on organization in search box$")
	  public void i_Search_Field_On_Organization_In_SearchBox(String text) throws Throwable {
		 searchorganization.iSearchFieldOnOrganizationInSearchBox(text);
	    }
	
	@And("^I verify ([^\"]*) field in search list on organization page$")
	  public void i_Verify_Field_In_Search_List_On_Organization_Homepage(String text) throws Throwable {
		 searchorganization.iVerifyFieldInSearchListOnOrganizationHomepage(CreateManagingOrganization.orgName);
	    }
	
	@And("^I search and verify with search list options on organization search box$")
	  public void i_Search_With_Search_List_Field_On_Organization_In_SearchBox(DataTable table) throws Throwable {
		 searchorganization.iSearchWithSearchListFieldOnOrganizationInSearchBox(table);
	    }
	
}

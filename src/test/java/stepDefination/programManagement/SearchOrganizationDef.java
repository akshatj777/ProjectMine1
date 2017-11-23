package stepDefination.programManagement;

import com.remedy.programManagement.SearchOrganization;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class SearchOrganizationDef extends DriverScript{
	SearchOrganization searchorganization = new SearchOrganization(driver);

	@And("^I search with \"([^\"]*)\" on organization in search box$")
	  public void i_Search_Field_On_Organization_In_SearchBox(String text) throws Throwable {
		 searchorganization.iSearchFieldOnOrganizationInSearchBox(text);
	    }
	
	@Then("^I verify the Search bar on \"([^\"]*)\" organization page$")
	  public void i_Verify_the_Search_bar_On_Organization(String text) throws Throwable {
		 searchorganization.iVerifySearchBarOnOrganizationPage(text);
	    }
	
	@And("^I verify \"([^\"]*)\" field in search list on organization page$")
	  public void i_Verify_Field_In_Search_List_On_Organization_Homepage(String text) throws Throwable {
		 searchorganization.iVerifyFieldInSearchListOnOrganizationHomepage(text);
	    }
	
	@And("^I search \"([^\"]*)\" and verify with search list options on organization search box$")
	  public void i_Search_With_Search_List_Field_On_Organization_In_SearchBox(String searchParam) throws Throwable {
		 searchorganization.iSearchWithSearchListFieldOnOrganizationInSearchBox(searchParam);
	    }
	
	@Then("^I verify the No Matches message$")
	  public void i_Verify_the_No_Mateches_Message() throws Throwable {
		 searchorganization.iVerifytheNewMatchesMessage();
	    }
	
	@And("^I verify the Create New Managing Organization link$")
	  public void i_Verify_the_Create_New_Managing_Organization() throws Throwable {
		 searchorganization.iVerifytheCreateNewManagingOrganizationLink();
	    }
}
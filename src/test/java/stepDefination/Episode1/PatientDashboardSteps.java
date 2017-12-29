package stepDefination.Episode1;

import com.remedy.episode1.PatientDashboard;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;

public class PatientDashboardSteps extends DriverScript {
	
	PatientDashboard dashboard = new PatientDashboard(driver);
	
	@And("^I verify \"([^\"]*)\" as selected tab on patient dashboard$")
    public void i_Verify_Selecetd_Tab_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iverifySelectedTabOnPatientDashboard(text);
    }
	
	@And("^I verify patients are appearing on patient dashboard$")
    public void i_Verify_Patients_Are_Apeearing_On_Patient_Dashboard() throws Throwable {
		dashboard.iverifyPatientsAreAppearingOnPatientDashboard();
    }
	
	@And("^I click on \"([^\"]*)\" under open filter$")
    public void i_Click_On_ListOption_Under_Open_Filter(String text) throws Throwable {
		dashboard.iClickOnListOptionUnderOpenFilter(text);
    }
	
	@And("^I click on \"([^\"]*)\" on navigation tab on patient dashboard$")
    public void i_Click_On_Tab_On_Navigation_Tab_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iClickOnTabOnNavigationTabOnPatientDashboard(text);
    }
	
	@And("^I enter \"([^\"]*)\" in filter name on New filter$")
    public void i_Enter_Text_In_Filter_Name_On_New_Filter(String text) throws Throwable {
		dashboard.iEnterTextInFilterNameOnNewFilter(text);
    }
	
	@And("^I click on select all checkbox on patient dashboard$")
    public void i_Click_On_Select_All_Checkbox_On_Patient_Dashboard() throws Throwable {
		dashboard.iClickOnSelectAllCheckboxOnPatientDashboard();
    }
	
	@And("^I click on gear Icon on top on patient dashboard$")
    public void i_Click_On_GearIcon_On_Top_On_Patient_Dashboard() throws Throwable {
		dashboard.iClickOnGearIconOnTopOnPatientDashboard();
    }
	
	@And("^I click on \"([^\"]*)\" present under gear menu on top on patient dashboard$")
    public void i_Click_On_Option_Present_Under_GearMenu_On_Top_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iClickOnOptionPresentUnderGearMenuOnTopOnPatientDashboard(text);
    }
	
	@And("^I should see \"([^\"]*)\" filter under bookmark$")
    public void i_Should_See_Filter_Under_Bookmark(String text) throws Throwable {
		dashboard.iShouldSeeFilterUnderBookmark(text);
    }
	
	@And("^I click on \"([^\"]*)\" filter name under patients menu$")
    public void i_Click_On_Filter_Name_Under_Patients_Menu(String text) throws Throwable {
		dashboard.iClickOnFilterNameUnderPatientsMenu(text);
    }
	
	@And("^I click on gear icon under \"([^\"]*)\" bookmark$")
    public void i_Click_On_Gear_Icon_Under_Bookmark(String text) throws Throwable {
		dashboard.iClickOnGearIconUnderBookmark(text);
    }
	
	@And("^I enter \"([^\"]*)\" in titile field in bookmark$")
    public void i_Enter_Text_In_TitleField_In_Bookmark(String text) throws Throwable {
		dashboard.iEnterTextInTitleFieldInBookmark(text);
    }
	
	@And("^I click on \"([^\"]*)\" button on edit bookmark$")
    public void i_Click_On_Button_On_Edit_Bookmark(String text) throws Throwable {
		dashboard.iClickOnButtonEditBookmark(text);
    }


}

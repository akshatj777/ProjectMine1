package stepDefination.Episode2;

import com.remedy.Episode2.PatientExport;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientExportSteps extends DriverScript {

	PatientExport patientexport=new PatientExport(driver);
	
	@Then("^I verify \"([^\"]*)\" button is appearing beside the number of patients present on the patient page$")
	public void i_verify_is_appeaing_beside_the_number_of_patients_present_on_the_patient_page(String export) throws Throwable{
		patientexport.iVerifyExportBesidePatientCount(export);
	}
	
	@Then("^I should see export drawer is appearing on clicking on export button$")
	public void i_should_see_export_drawer_is_appearing_on_clicking_on_export_button() throws Throwable{
		patientexport.iSeeExportDrawerIsAppearingOnClickingExportButton();
	}
	
	@And("^I should see \"([^\"]*)\" button is still appearing beside patient count after export drawer opened$")
	public void i_should_see_button_is_still_appearing_beside_patient_count_after_export_drawer_opened(String text) throws Throwable{
		patientexport.iShouldStillSeeExportButtonAfterExportDraweropened(text);
	}
	
	@Then("^I verify patient count and export are alligned in the same place$")
	public void i_verify_patient_count_and_export_are_alligned_in_the_same_place() throws Throwable{
		patientexport.iVerifyPatientAndExportInSameAllignment();
	}
	
	@Then("^I verify \"([^\"]*)\" button is appearing in the export drawer box$")
	public void i_verify_button_is_appearing_in_the_export_drawer_box(String button) throws Throwable{
		patientexport.iVerifyButtonIsAppearingInExportDrawerBox(button);
	}
	
	@Then("^I verify opened drawer is appearing on the export drawer box$")
	public void i_verify_opened_drawer_is_appearing_on_the_export_drawer_box() throws Throwable{
		patientexport.iSeeOpenedDrawerOnExportDrawerBox();
	}
	
	@Then("^I verify search area is appearing on the export drawer box$")
	public void i_verify_search_area_is_appearing_on_the_export_drawer_box() throws Throwable{
		patientexport.iVerifySearchAreaOnExportDrawerBox();
	}
	
	@Then("^I verify filters are appearing in the export drawer box$")
	public void i_verify_filters_are_appearing_in_the_export_drawer_box() throws Throwable{
		patientexport.iVerifyFiltersAppearingInExportDrawerBox();
	}
	
	@Then("^I click on \"([^\"]*)\" button appearing on the export drawer box$")
	public void i_click_on_button_appearing_on_the_export_drawer_box(String cancel) throws Throwable{
		patientexport.iClickOnCancelButtonOnExportDrawerBox();
	}
	
	@Then("^I verify \"([^\"]*)\" is appearing on clicking filters on patient page$")
	public void i_verify_is_appearing_on_clicking_filters_on_patient_page(String text) throws Throwable{
		patientexport.iVerifyFiltersAppearingOnClickingOnFiltersOnPatientPage(text);
	}
	
	@Then("^I verify \"([^\"]*)\" is appearing under column list on export drawer box$")
	public void i_verify_is_appearing_under_column_list_on_export_drawer_box(String text) throws Throwable{
		patientexport.iVerifyColumnListAppearingOnExportDrawerBox(text);
	}
	
	@Then("^I verify \"([^\"]*)\" appearing under column list on export drawer box$")
	public void i_verify_appearing_under_column_list_on_export_drawer_box(String text) throws Throwable{
		patientexport.iVerifyColumnListTextAppearingOnExportDrawerBox(text);
	}
	
	@Then("^I verify checkbox is present beside each of the column list in export drawer box$")
	public void i_verify_checkbox_is_present_beside_each_of_the_column_list_in_export_drawer_box() throws Throwable{
		patientexport.iVerifyCheckboxBesideColumnListInExportDrawerBox();
	}
	
}

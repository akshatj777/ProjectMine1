package stepDefination.Episode2;

import com.remedy.Episode2.PatientClinicalDocuments;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class UpdatedFilteringSteps extends DriverScript {

	PatientClinicalDocuments patientclinical = new PatientClinicalDocuments(driver);

	@Then("^I click on filter link on clinical document section$")
	public void I_click_on_filter_link_on_clinical_document_section() throws Throwable {
		patientclinical.Iclickonfilterlinkonclinicaldocumentsection();
	}

	@Then("^I Verify that Selecting Filters link when the filters drawer is open should close the drawer$")
	public void I_Verify_that_Selecting_Filters_link_when_the_filters_drawer_is_open_should_close_the_drawer() throws Throwable {
		patientclinical.IVerifythatSelectingFilterslinkwhenthefiltersdrawerisopenshouldclosethedrawer();
	}

	@Then("^I Verify that Clinical Documents Filters link should display filters as below with the correct syntax and sequence$")
	public void I_Verify_that_Clinical_Documents_Filters_link_should_display_filters_as_below_with_the_correct_syntax_and_sequence() throws Throwable {
		patientclinical.IVerifythatClinicalDocumentsFilterslinkshoulddisplayfiltersasbelowwiththecorrectsyntaxandsequence();
	}

	@Then("^I Verify that user should be able to select multiple filters by checkbox$")
	public void I_Verify_that_user_should_be_able_to_select_multiple_filters_by_checkbox() throws Throwable {
		patientclinical.IVerifythatusershouldbeabletoselectmultiplefiltersbycheckbox();
	}

	@Then("^I Verify that checking multiple filter options should return relevant patients in return$")
	public void I_Verify_that_checking_multiple_filter_options_should_return_relevant_patients_in_return() throws Throwable {
		patientclinical.IVerifythatcheckingmultiplefilteroptionsshouldreturnrelevantpatientsinreturn();
	}

	@Then("^I Verify that clicking on Done should close the filter drawer and process the filter$")
	public void I_Verify_that_clicking_on_Done_should_close_the_filter_drawer_and_process_the_filter() throws Throwable {
		patientclinical.IVerifythatclickingonDoneshouldclosethefilterdrawerandprocessthefilter();
	}

	@Then("^I Verify that clicking Clinical Documents Filters link should show the title document that has list of document forms in it$")
	public void I_Verify_that_clicking_Clinical_Documents_Filters_link_should_show_the_title_document_that_has_list_of_document_forms_in_it() throws Throwable {
		patientclinical.IVerifythatclickingClinicalDocumentsFilterslinkshouldshowthetitledocumentthathaslistofdocumentformsinit();
	}

	@Then("^I Verify that selecting filter by check box should process apply the filter until the user clicked on done$")
	public void Then_I_Verify_that_selecting_filter_by_check_box_should_process_apply_the_filter_until_the_user_clicked_on_done() throws Throwable {
		patientclinical.IVerifythatselectingfilterbycheckboxshouldprocessapplythefilteruntiltheuserclickedondone();
	}

}

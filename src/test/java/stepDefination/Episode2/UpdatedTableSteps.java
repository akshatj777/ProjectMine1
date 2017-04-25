package stepDefination.Episode2;

import com.remedy.Episode2.PatientClinicalDocuments;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class UpdatedTableSteps extends DriverScript{

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	@Then ("^I click on the ALL Tab on Patient page$")
	public void I_click_on_the_ALL_Tab_on_Patient_page()
	{
		patientclinical.IclickontheALLTabonPatientpage();
	
	}
	
	@Then ("^I verify there should be filter link on clinical document section$")
	public void I_verify_there_should_be_filter_link_on_clinical_document_section()
	{
		patientclinical.Iverifythereshouldbefilterlinkonclinicaldocumentsection();
	}
	
	@Then ("^I verify Clinical Document Table should contain the following sections$")
	public void I_verify_Clinical_Document_Table_should_contain_the_following_sections()
	{
		patientclinical.IverifyClinicalDocumentTableshouldcontainthefollowingsections();
	}
	
}

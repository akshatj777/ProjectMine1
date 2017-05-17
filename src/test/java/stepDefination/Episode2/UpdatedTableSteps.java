package stepDefination.Episode2;

import com.remedy.Episode2.PatientClinicalDocuments;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class UpdatedTableSteps extends DriverScript{

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	
	
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
	
	@Then ("^To verify table should be sorted chronologically by activity date most recent first$") 
	public void To_verify_table_should_be_sorted_chronologically_by_activity_date_most_recent_first()
	{
		patientclinical.Toverifytableshouldbesortedchronologicallybyactivitydatemostrecentfirst();
	}
	
	@Then ("^I count the number of documents that appear in the clinical Documents$")
	public void I_count_the_number_of_documents_that_appear_in_the_clinical_Documents()
	{
		patientclinical.IcountthenumberofdocumentsthatappearintheclinicalDocuments();
	}
	
	
	
}

package stepDefination.Episode2;

import com.remedy.Episode2.HomeLimitedServicesWorklist;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class HomeLimitedServicesWorklistSteps extends DriverScript {

	HomeLimitedServicesWorklist homeworklist=new HomeLimitedServicesWorklist(driver);
	
	@Then ("^I click on the Post Acute tab on the patient Card Page$")
	 public void I_click_on_the_Post_Acute_tab_on_the_patient_Card_Page()
	 {
		homeworklist.IclickonthePostAcutetabonthepatientCardPage();
	 }
	
	@Then ("^I click on forward arrow button to navigate to Home with Limited Services tab on the patient Card Page$")
	public void I_click_on_forward_arrow_button_to_navigate_to_Home_with_Limited_Services_tab_on_the_patient_Card_Page()
	{   
		homeworklist.IclickonforwardarrowbuttontonavigatetoHomewithLimitedServicestabonthepatientCardPage();
		
	}
	@Then ("^I click on Home with Limited Services sub tab on the patient Card Page$")
	public void I_click_on_Home_with_Limited_Services_sub_tab_on_the_patient_Card_Page()
	{
		homeworklist.IclickonHomewithLimitedServicessubtabonthepatientCardPage();
	}
	
	@Then ("^I select the \"([^\"]*)\" DRG value on the Diagnosis and DRG tab on add a new transition$")
	public void I_select_the_DRG_value_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRG) throws InterruptedException
	{
		homeworklist.IselecttheDRGvalueontheDiagnosisandDRGtabonaddanewtransition(DRG);
	}
	
	@Then ("^I select the facility value Stamford \"([^\"]*)\" on add a new transition$")
	public void I_select_the_facility_value_Stamford_on_add_a_new_transition(String facility) throws InterruptedException
	{
		homeworklist.IselectthefacilityvalueStamfordonaddanewtransition(facility);
	}
}

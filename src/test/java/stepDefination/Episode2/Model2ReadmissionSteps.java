package stepDefination.Episode2;

import com.remedy.Episode2.Readmission;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class Model2ReadmissionSteps extends DriverScript {

	Readmission admission=new Readmission(driver);
	
	  @Then ("^I click on the Transitions sub tab on the Patient Summary Page$")   
	    public void I_click_on_the_Transitions_sub_tab_on_the_Patient_Summary_Page()
	    {
	    	admission.IclickontheTransitionssubtabonthePatientSummaryPage();
	    }
	  
	    @Then ("^I switch to PatientTransitions frame on Patient Summary Page$")
	    public void I_switch_to_Patient_Transitions_frame() throws Throwable
	    {
	    	admission.IswitchtoPatientTransitionsframe();
	    }
	    @Then ("^I click on add a new transition to add a new transition on Patient Summary$")
	    public void I_click_on_the_Create_Transition_Button_to_add_a_new_transition()
	    {
	    	admission.IclickontheCreateTransitionButtontoaddanewtransition();
	    }
	    
	    @Then ("^I click on the Transition Info on add a new transition on Patient Summary$")
	    public void I_click_on_the_Transition_Info_on_add_a_new_transition()
	    {
	    	admission.IclickontheTransitionInfoonaddanewtransition();
	   
	    }
	  
    @Then ("^I select the care setting value \"([^\"]*)\" on add a new transition$")
    public void I_select_the_care_setting_value_on_add_a_new_transition(String caresetting) throws Throwable
    {
     admission.Iselectthecaresettingvalueonaddanewtransition(caresetting);
    }

    @Then ("^I select the care type value \"([^\"]*)\" on add a new transition$")
   public void I_select_the_care_type_value_on_add_a_new_transition(String caretypevalue) throws Throwable
   {
    	admission.Iselectthecaretypevalueonaddanewtransition(caretypevalue);
   }
    
    @Then ("^I select the facility value \"([^\"]*)\" on add a new transition$")
    public void I_select_the_facility_value_on_add_a_new_transition(String facilityvalue) throws Throwable
    {
    	admission.Iselectthefacilityvalueonaddanewtransition(facilityvalue); 
}
    @Then ("^I click on the Diagnosis and DRG tab on add a new transition to select the DRG$")
    public void I_click_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition_to_select_the_DRG(String DRGtype) throws Throwable
    {
    	admission.IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG(DRGtype);  
    }
   
     @Then ("^I select the \"([^\"]*)\" DRG type on the Diagnosis and DRG tab on add a new transition$")
    public void I_select_the_DRG_type_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRGtype) throws Throwable
    {
    	admission.IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(DRGtype);
    }
    
    @Then ("^I select the \"([^\"]*)\" DRG on the Diagnosis and DRG tab on add a new transition$")
    public void I_select_the_DRG_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition(String DRG) throws Throwable
    {
    	admission.IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(DRG);
    }
   
    
    


    
  
    
    
    
    
}

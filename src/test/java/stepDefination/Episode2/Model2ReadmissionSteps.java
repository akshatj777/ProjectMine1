package stepDefination.Episode2;

import com.remedy.Episode2.Readmission;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class Model2ReadmissionSteps extends DriverScript {

	Readmission admission=new Readmission(driver);
	

	 
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

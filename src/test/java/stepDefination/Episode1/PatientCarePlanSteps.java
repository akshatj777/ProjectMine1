package stepDefination.Episode1;

import com.remedy.episode1.PatientCarePlan;
import com.remedy.resources.DriverScript;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PatientCarePlanSteps extends DriverScript 
{
	PatientCarePlan patientcare=new PatientCarePlan(driver);
	@When("^I click on Patient under patient list page$")
	public void i_click_on_under_patient_list_page() throws Throwable 
	{
	   patientcare.iClickOnUnderPatientListPage();
	}

	@Then("^I should see \"([^\"]*)\" details$")
	public void i_should_see_details(String text) throws Throwable 
	{
	    patientcare.iShouldSeeDetails(text);
	}

	@Then("^I should see Care Plan present on the student details page$")
	public void i_should_see_Care_Plan_present_on_the_student_details_page() throws Throwable 
	{
	   patientcare.iShouldSeeCarePlanpresentonthestudentdetailspage();
	}

	@Then("^I click on Care Plan$")
	public void i_click_on_Care_Plan() throws Throwable 
	{
	   patientcare.iClickOnCarePlan();
	}

	@Then("^I should see Assign Care Plan under care plan page$")
	public void i_should_see_Assign_Care_Plan_under_care_plan_page() throws Throwable 
	{
	   patientcare.iShouldSeeAssignCarePlanUnderCarePlanPage();
	}

	@Then("^I click on Assign Care Plan$")
	public void i_click_on_Assign_Care_Plan() throws Throwable 
	{
	    patientcare.iClickOnAssignCarePlan();
	}
}

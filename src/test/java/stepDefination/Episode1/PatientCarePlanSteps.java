package stepDefination.Episode1;

import com.remedy.episode1.PatientCarePlan;
import com.remedy.resources.DriverScript;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
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

	@When("^I click on Assign Care Plan$")
	public void i_click_on_Assign_Care_Plan() throws Throwable 
	{
	    patientcare.iClickOnAssignCarePlan();
	}
	@Then("^I should see \"([^\"]*)\" present on the assign care plan page$")
	public void i_should_see_present_on_the_assign_care_plan_page(String text) throws Throwable 
	{
	    patientcare.iShouldSeePresentOnTheAssignCarePlanPage(text);
	}
	@Then("^I should see \"([^\"]*)\" present in the popup$")
	public void i_should_see_present_in_the_popup(String text) throws Throwable 
	{
	    patientcare.iShouldSeePresentInThePopup(text);
	}
	@Then("^I should see \"([^\"]*)\" text on the popup$")
	public void i_should_see_text_on_the_popup(String text) throws Throwable 
	{
	    patientcare.iShouldSeeTextOnThePopup(text);
	}
	@Then("^I should see \"([^\"]*)\" under the plans$")
	public void i_should_see_under_the_plans(String text) throws Throwable
	{
		patientcare.iShouldSeeUnderThePlans(text);
	}
	@When("^I assign \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_assign_with(String text, String number) throws Throwable 
	{
	  patientcare.iAssignWith(text, number);
	}
	@Then("^I select the checkbox in the plan$")
	public void i_select_the_checkbox_in_the_plan() throws Throwable
	{
		patientcare.iSelectTheCheckboxInThePlan();
	}
	@Then("^I click on Save button$")
	public void i_click_on_Save_button() throws Throwable
	{
		patientcare.iClickOnSaveButton();
	}
	@Then("^I click on Appointments under care plan$")
	public void i_click_on_appointments_under_care_plan() throws Throwable
	{
		patientcare.iClickOnAppointmentsUnderCarePlan();
	}
	@Then("^I should see new apointment button$")
	public void i_should_see_new_apointment_button() throws Throwable
	{
		patientcare.iShouldSeeNewApointmentButton();
	}
	@Then("^I click on new appointment button$")
	public void i_click_on_new_appointment_button() throws Throwable
	{
		patientcare.iClickOnNewAppointmentButton();
	}
	@Then("^I should see \"([^\"]*)\" present on the new appointment page$")
	public void i_should_see_present_on_the_new_appointment_page(String text) throws Throwable
	{
		patientcare.iShouldSeePresentOnTheNewAppointmentPage(text);
	}
	@Then("^I assign \"([^\"]*)\" under contact$")
	public void i_assign_under_contact(String number) throws Throwable
	{
		patientcare.iAssignUnderContact(number);
	}
	@Then("^I assign \"([^\"]*)\" under contact phone$")
	public void i_assign_under_contact_phone(String number) throws Throwable
	{
		patientcare.iAssignUnderContactPhone(number);
	}
	@Then("^I assign \"([^\"]*)\" under facility$")
	public void i_assign_under_facility(String text) throws Throwable
	{
		patientcare.iAssignUnderFacility(text);
	}
	@Then("^I click on schedule appointment button$")
	public void i_click_on_schedule_appointment_button() throws Throwable
	{
		patientcare.iClickOnScheduleAppointmentButton();
	}

}

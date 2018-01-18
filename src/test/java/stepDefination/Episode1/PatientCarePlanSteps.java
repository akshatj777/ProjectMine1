package stepDefination.Episode1;

import org.openqa.selenium.By;

import com.remedy.episode1.PatientCarePlan;
import com.remedy.resources.DriverScript;

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
	@When("^I click on Notes tab under care plan$")
	public void i_click_on_notes_tab_under_care_plan() throws Throwable
	{
		patientcare.iClickOnNotesTabUnderCarePlan();
	}
	@Then("^I click on new note button$")
	public void i_click_on_new_note_button() throws Throwable
	{
		patientcare.iClickOnNewNoteButton();
	}
	@Then("^I should see \"([^\"]*)\" present on the new note page$")
	public void i_should_see_present_on_the_new_note_page(String text) throws Throwable
	{
		patientcare.iShouldSeePresentOnTheNewNotePage(text);
	}
	@Then("^I click on topic dropdown under new note$")
	public void i_click_on_topic_dropdown_under_new_note() throws Throwable
	{
		patientcare.iClickOnTopicDropdownUnderNewNote();
	}
	@Then("^I select value from the topic dropdown$")
	public void i_select_value_from_the_topic_dropdown() throws Throwable
	{
		patientcare.iSelectValueFromTheTopicDropdown();
	}
	@Then("^I click on create note button$")
	public void i_click_on_create_note_button() throws Throwable
	{
		patientcare.iClickOnCreateNoteButton();
	}
	@Then("^I click on actions column in notes$")
	public void i_click_on_actions_column_in_notes() throws Throwable
	{
		patientcare.iClickOnActionsColumnInNotes();
	}
	@Then("^I click on delete in the actions column$")
	public void i_click_on_delete_in_the_actions_column() throws Throwable
	{
		patientcare.iClickOnDeleteInTheActionsColumn();
	}
	@Then("^I should see a popup for delete confirmation$")
	public void i_should_see_a_popup_for_delete_confirmation() throws Throwable
	{
		patientcare.iShouldSeeAPopupForDeleteConfirmation();
	}
	@Then("^I click on ok button$")
	public void i_click_on_ok_button() throws Throwable
	{
		patientcare.iClickOnOkButton();
	}
	@Then("^I should see \"([^\"]*)\" on popup$")
	public void i_should_see_on_popup(String text) throws Throwable
	{
		patientcare.iShouldSeeOnPopup(text);
	}
	@When("^I click on care team$")
	public void i_click_on_care_team() throws Throwable
	{
		patientcare.iClickOnCareTeam();
	}
	@Then("^I click on join care team$")
	public void i_click_on_join_care_team() throws Throwable
	{
		patientcare.iClickOnJoinCareTeam();
	}
	@Then("^I click on gear icon under care managers$")
	public void i_click_on_gear_icon_under_care_managers() throws Throwable
	{
		patientcare.iClickOnGearIconUnderCareManagers();
	}
	@Then("^I click on remove under the gear icon$")
	public void i_click_on_remove_under_the_gear_icon() throws Throwable
	{
		patientcare.iClickOnRemoveUnderTheGearIcon();
	}
	@Then("^I should see \"([^\"]*)\" on the remove popup$")
	public void i_should_see_on_the_remove_popup(String text) throws Throwable
	{
		patientcare.iShouldSeeOnTheRemovePopup(text);
	}
	@Then("^I should see \"([^\"]*)\" text$")
	public void i_should_see_text(String text) throws Throwable
	{
		patientcare.iShouldSeeText(text);
	}
	@Then("^I agree the attestation if available$")
	public void i_agree_the_attestation_if_available(){
		patientcare.iAcceptAttestation();
		
	}
	
	@Then ("^I click on QA PRM on navigation bar on EC1$")
	public void I_click_on_QA_PRM_on_navigation_bar_on_EC1()
	{
		patientcare.IclickonQAPRMonnavigationbaronEC1();
	}
	
	@Then ("^I click on Return to Remedy from dropdown on QA PRM on navigation bar on EC1$")
	public void I_click_on_Return_to_Remedy_from_dropdown_on_QA_PRM_on_navigation_bar_on_EC1()
	{
		patientcare.IclickonReturntoRemedyfromdropdownonQAPRMonnavigationbaronEC1();	
	}
	
	@Then("^I edit the CRA$")
	public void i_Edit_CRA(){
		patientcare.iEditCRA();	
	}
	
	@Then("^I delete the assigned \"([^\"]*)\" \"([^\"]*)\"$")
	public void i_delete_assigned_form(String form,int n){
		patientcare.ideleteassignedform(form,n);	
	}
	
	@Then("^I edited the assigned \"([^\"]*)\" \"([^\"]*)\"$")
	public void i_edited_assigned_form(String form,int n){
		patientcare.ieditedassignedform(form,n);	
	}
	
	@Then ("^I verify \"([^\"]*)\" in \"([^\"]*)\" \"([^\"]*)\"$")
	public void i_Verify_Risk_Assessment(String text,String formlist,int n){
		patientcare.i_Verify_Risk_Assessment(text,formlist,n);
	}
	
	@Then ("^I verify First Call in \"([^\"]*)\"$")
	public void i_Verify_First_Call_assigned_list(int n){
		patientcare.iVerifyFirstCallassignedlist(n);
	}
	
	@Then ("^I verify Subsequent Call in \"([^\"]*)\"$")
	public void i_Verify_Subsequent_Call_assigned_list(int n){
		patientcare.iVerifySubsequentCallassignedlist(n);
	}
	
	@Then ("^I verify After Hour Call in \"([^\"]*)\"$")
	public void i_Verify_AfterHour_Call_assigned_list(int n){
		patientcare.iVerifyAfterHourCallassignedlist(n);
	}
	
	@Then ("^I verify \"([^\"]*)\" not in \"([^\"]*)\" \"([^\"]*)\"$")
	public void i_Verify_Risk_Assessment_not_in_list(String text,String formlist,int n){
		patientcare.iVerifyRiskAssessmentnotinlist(text,formlist,n);
	}
	
    @And ("^I should see Assign Care Plan Button disabled$")
	public void assign_Care_Plan_Button_disabled(){
		patientcare.assignCarePlanButtondisabled();
	}
	
	@And ("^I should see Assign Care Plan Button enabled$")
	public void assign_Care_Plan_Button_enabled(){
		patientcare.assignCarePlanButtonenabled();
	}
	
	@Then ("^I will \"([^\"]*)\" the \"([^\"]*)\" Care Plan radio button at index \"([^\"]*)\"$")
	public void I_will_check_Care_in_the_radio_button(String action,String buttonname,String position) throws Throwable {
		patientcare.IwillcheckCareintheradiobutton(buttonname);
		
	}
	 @When ("^I fill in Care Plan Search with \"([^\"]*)\"$")
	 public void i_fill_in_Care_Plan_Search(String text){
		 patientcare.ifillinCarePlanSearch(text);
	 }
	 
	 @Then ("^I will not see Care Plan \"([^\"]*)\"$")
	 public void i_will_not_see_Care_Plan(int index){
		 patientcare.iwillnotseeCarePlan(index);
	 }
	 
	 @And ("^I should see text of \"([^\"]*)\" in assigned form counter$")
	 public void i_see_Text_in_assigned_form_counter(String count){
		 patientcare.iseeTextinassignedformcounter(count);
	 }
	 
	 @And ("^I will wait to see Assigned Forms List$")
	 public void i_Will_Wait_To_See_Assigned_Form_List(){
		 patientcare.iWillWaitToSeeAssignedFormList();
	 }
	 
	 @Then ("^I fill in Due Date with logic \"([^\"]*)\" with \"([^\"]*)\" days$")
	 public void i_Fill_in_Due_Date(String logic,int days){
		 patientcare.iFillinDueDate(days);
	 }
	 
	 @And ("^I should see text of \"([^\"]*)\" in active form counter$")
	 public void i_see_Text_in_active_form_counter(String count){
		 patientcare.iseeTextinactiveformcounter(count);
	 } 
	 
	 @And ("^I should see text of \"([^\"]*)\" in archived form counter$")
	 public void i_see_Text_in_archived_form_counter(String count){
		 patientcare.iseeTextinarchivedformcounter(count);
	 } 
	 
	 @And ("^I set patient onboarding status to \"([^\"]*)\"$")
	 public void I_set_patient_onboarding_status_to(String index){
		 patientcare.Isetpatientonboardingstatusto(index);
	 }
	 
	 @Then ("^I enter the \"([^\"]*)\" in necessary services and equipment$")
	 public void i_Enter_value_in_necessary_services(String value){
		 patientcare.iEntervalueinnecessaryservices(value);
	 }
	 
	 @Then ("^I will wait to see CARL Tool$")
	 public void i_will_wait_to_see_CARL_tool(){
		 patientcare.iwillwaittoseeCARLtool();
	 }
	 
	 @Then ("^I will wait to see the proposal \"([^\"]*)\"$")
	 public void i_will_wait_to_see_proposal(String proposal){
		 patientcare.iwillwaittoseeproposal(proposal);
	 }
	 
	 @Then ("^I will wait to see CARL Tool \"([^\"]*)\" on active state$")
	 public void i_will_wait_to_see_CARL_Tool_on_active_state(int index){
		 patientcare.iwillwaittoseeCARLToolonactivestate(index);
	 }
	 
	 @Then("^I submit the Clinical Risk Assessment Form$")
	 public void i_submit_CRA(){
		 patientcare.isubmitCRA();
	 }
	 
	 @Then ("^I verify the Form Type error \"([^\"]*)\"$")
	 public void verify_Form_Type_Error(String message){
		 patientcare.verifyFormTypeError(message);
	 }
	 
	 @Then ("^I verify the Form error \"([^\"]*)\"$")
	 public void verify_Form_Error(String message){
		 patientcare.verifyFormError(message);
	 }
}

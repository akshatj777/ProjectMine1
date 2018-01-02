package stepDefination.Episode1;

import com.remedy.episode1.PatientDashboard;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientDashboardSteps extends DriverScript {
	
	PatientDashboard dashboard = new PatientDashboard(driver);
	
	@And("^I verify \"([^\"]*)\" as selected tab on patient dashboard$")
    public void i_Verify_Selecetd_Tab_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iverifySelectedTabOnPatientDashboard(text);
    }
	
	@And("^I verify patients are appearing on patient dashboard$")
    public void i_Verify_Patients_Are_Apeearing_On_Patient_Dashboard() throws Throwable {
		dashboard.iverifyPatientsAreAppearingOnPatientDashboard();
    }
	
	@And("^I click on \"([^\"]*)\" under open filter$")
    public void i_Click_On_ListOption_Under_Open_Filter(String text) throws Throwable {
		dashboard.iClickOnListOptionUnderOpenFilter(text);
    }
	
	@And("^I click on \"([^\"]*)\" on navigation tab on patient dashboard$")
    public void i_Click_On_Tab_On_Navigation_Tab_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iClickOnTabOnNavigationTabOnPatientDashboard(text);
    }
	
	@And("^I enter \"([^\"]*)\" in filter name on New filter$")
    public void i_Enter_Text_In_Filter_Name_On_New_Filter(String text) throws Throwable {
		dashboard.iEnterTextInFilterNameOnNewFilter(text);
    }
	
	@And("^I click on select all checkbox on patient dashboard$")
    public void i_Click_On_Select_All_Checkbox_On_Patient_Dashboard() throws Throwable {
		dashboard.iClickOnSelectAllCheckboxOnPatientDashboard();
    }
	
	@And("^I click on gear Icon on top on patient dashboard$")
    public void i_Click_On_GearIcon_On_Top_On_Patient_Dashboard() throws Throwable {
		dashboard.iClickOnGearIconOnTopOnPatientDashboard();
    }
	
	@And("^I click on \"([^\"]*)\" present under gear menu on top on patient dashboard$")
    public void i_Click_On_Option_Present_Under_GearMenu_On_Top_On_Patient_Dashboard(String text) throws Throwable {
		dashboard.iClickOnOptionPresentUnderGearMenuOnTopOnPatientDashboard(text);
    }
	
	@And("^I should see \"([^\"]*)\" filter under bookmark$")
    public void i_Should_See_Filter_Under_Bookmark(String text) throws Throwable {
		dashboard.iShouldSeeFilterUnderBookmark(text);
    }
	
	@And("^I click on \"([^\"]*)\" filter name under patients menu$")
    public void i_Click_On_Filter_Name_Under_Patients_Menu(String text) throws Throwable {
		dashboard.iClickOnFilterNameUnderPatientsMenu(text);
    }
	
	@And("^I click on gear icon under \"([^\"]*)\" bookmark$")
    public void i_Click_On_Gear_Icon_Under_Bookmark(String text) throws Throwable {
		dashboard.iClickOnGearIconUnderBookmark(text);
    }
	
	@And("^I enter \"([^\"]*)\" in titile field in bookmark$")
    public void i_Enter_Text_In_TitleField_In_Bookmark(String text) throws Throwable {
		dashboard.iEnterTextInTitleFieldInBookmark(text);
    }
	
	@And("^I click on \"([^\"]*)\" button on edit bookmark$")
    public void i_Click_On_Button_On_Edit_Bookmark(String text) throws Throwable {
		dashboard.iClickOnButtonEditBookmark(text);
    }
	
	@And("^I enter patients fullname in the patient search box under active tab on Dashboard$")
    public void i_Enter_Patients_FullName_In_Patient_SearchBox_Under_Active_Tab_On_Dashboard() throws Throwable {
		dashboard.iEnterPatientsFullNameInPatientSearchBoxUnderActiveTabOnDashboard();
    }
	
	@And("^I should see patient first name appearing under search on Dashboard$")
    public void i_Should_See_Patient_FirstName_Appearing_Under_Search_On_Dashboard() throws Throwable {
		dashboard.iShouldSeePatientFirstNameAppearingUnderSearchOnDashboard();
    }
	
	@Then("^I should see \"([^\"]*)\" under My Task on Dashboard$")
	@And("^I verify \"([^\"]*)\" task description under Task in Care Plan$")
    public void i_Verify_Task_Description_Under_Task_In_CarePlan(String text) throws Throwable {
		dashboard.iVerifyTaskDescriptionUnderTaskInCarePlan(text);
    }
	
	@And("^I verify the count \"([^\"]*)\" on task navigation bar icon$")
    public void i_Verify_Count_On_Task_Navigation_Bar_Icon(String text) throws Throwable {
		dashboard.iVerifyCountOnTaskNavigationBarIcon(text);
    }
	
	@And("^I click on complete task checkbox under My task on Dashboard$")
    public void i_Click_On_Complete_Task_Checkbox_Under_My_Task_On_Dashboard() throws Throwable {
		dashboard.iClickOnCompleteTaskCheckboxUnderMyTaskOnDashboard();
    }
	
	@And("^I should see \"([^\"]*)\" in task type \"([^\"]*)\" under My Task on Dashboard$")
    public void i_Should_See_Count_In_Task_Under_MyTask_On_Dashboard(String count, String field) throws Throwable {
		dashboard.iShouldSeeCountInTaskUnderMyTaskOnDashboard(count,field);
    }
	
	@And("^I click on Message Icon on header navigation bar$")
    public void i_Click_On_Message_Icon_On_Header_Navigation_Bar() throws Throwable {
		dashboard.iClickOnMessageIconOnHeaderNavigationBar();
    }
	
	@And("^I click on see all messages under Message on header navigation bar$")
    public void i_Click_On_See_All_Meassages_Under_Message_On_Header_Navigation_Bar() throws Throwable {
		dashboard.iClickOnSeeAllMessagesUnderMessageOnHeaderNavigationBar();
    }
	
	@And("^I click on \"([^\"]*)\" under Message tab on Dashboard$")
    public void i_Click_Menu_Under_Message_Tab_On_Dashboard(String text) throws Throwable {
		dashboard.iClickMenuUnderMessageTabOnDashboard(text);
    }
	
	@And("^I click on \"([^\"]*)\" button under message tab$")
    public void i_Click_Button_Under_Message(String text) throws Throwable {
		dashboard.iClickButtonUnderMessage(text);
    }
	
	@And("^I click on Reply button for message$")
    public void i_Click_On_Reply_Button_For_Message() throws Throwable {
		dashboard.iClickOnReplyButtonForMessage();
    }
	
	@And("^I click on Add files button to upload files for message$")
    public void i_Click_On_AddFiles_Button_Under_Message() throws Throwable {
		dashboard.iClickOnAddFilesButtonUnderMessage();
    }
	
	@And("^I should see \"([^\"]*)\" text error under Message$")
    public void i_Should_See_text_Under_Message_Error(String text) throws Throwable {
		dashboard.iShouldSeeTextErrorUnderMessage(text);
    }
	
	@And("^I enter \"([^\"]*)\" in To field under Compose message$")
    public void i_Enter_Recipient_In_To_Field_Under_Compose_Message(String text) throws Throwable {
		dashboard.iEnterRecipientInToFieldUnderComposeMessage(text);
    }
	
	@And("^I click on \"([^\"]*)\" to Add recipient in Compose message$")
    public void i_Click_On_Recipient_To_Add_Recipient_In_Compose_Message(String text) throws Throwable {
		dashboard.iClickOnRecipientToAddRecipientInComposeMessage(text);
    }
	
	@Then("^I enter message \"([^\"]*)\" in the compose message field$")
	public void i_enter_message_in_the_compose_message_field(String text) throws Throwable{
		dashboard.iEnterTextInComposeMessage(text);
	}
	
	@Then("^I upload Sample file to send message$")
	public void i_Upload_Sample_File_To_Send_Message() throws Throwable{
		dashboard.iUploadFileToSendMessage();
	}
	
	@Then("^I click on first messaage in Inbox$")
	public void i_Click_On_First_Message_In_Inbox() throws Throwable{
		dashboard.iClickOnFirstMessageInInbox();
	}
	
	@Then("^I click on gear icon for first message$")
	public void i_Click_On_Gear_Icon_For_First_Message_In_Inbox() throws Throwable{
		dashboard.iClickOnGearIconForFirstMessageInInbox();
	}

	@Then("^I select Move to archive for message$")
	public void i_Select_Option_For_Message() throws Throwable{
		dashboard.iSelectOptionForMessage();
	}
	
	@And("^I click on Alert Icon on header navigation bar$")
    public void i_Click_On_Alert_Icon_On_Header_Navigation_Bar() throws Throwable {
		dashboard.iClickOnAlertIconOnHeaderNavigationBar();
    }
	
	@And("^I click on first alert message under alert$")
    public void i_Click_On_First_Alert_Message_Under_Alert() throws Throwable {
		dashboard.iClickOnFirstAlertMessageUnderAlert();
    }
	
	@And("^I should not see any count appearing on Alert Icon$")
    public void i_Should_Not_See_Any_Count_OnAlert_Icon() throws Throwable {
		dashboard.iShouldNotSeeAnyCountOnAlertIcon();
    }



}

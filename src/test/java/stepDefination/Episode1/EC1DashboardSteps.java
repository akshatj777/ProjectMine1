package stepDefination.Episode1;

import com.remedy.episode1.Ec1DashboardPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 5/6/16.
 */
public class EC1DashboardSteps extends DriverScript {

    Ec1DashboardPage ec1Dashboard = new Ec1DashboardPage(driver);


    @And("^I should see \"([^\"]*)\" on Ec1 dashboard page$")
    public void iShouldSeeOnEc(String text) throws Throwable {

        ec1Dashboard.iverifyPageHeader("Dashboard");

    }

    @Then("^I should see \"([^\"]*)\"$")
    public void iShouldSeeMyPatient(String text) throws Throwable {

        ec1Dashboard.iverifyMyPatient(text);
    }


    @And("^I expand the Patients panel on Dashboard$")
    public void iExpandThePatientsPanelOnDashboard() throws Throwable {

        ec1Dashboard.iexapndsPatiensListTab();

    }


    @Then("^I click on patientlist link$")
    public void iClickOnPatientlistLink() throws Throwable {
        ec1Dashboard.iclickPatiensList();
    }

    @And("^I click on the Add Patient Button$")
    public void iClickOnTheAddPatientButton() throws Throwable {
       ec1Dashboard.iclickOnAddPainetButton();
    }


    @Then("^I should see Episode header text \"([^\"]*)\"$")
    public void iShouldSeeEpisodeHeaderText(String header) throws Throwable {

        ec1Dashboard.iverifyEc1DashboardHeaderText(header);
    }
    
    @Then("^I should see user profile icon on product tile page$")
    public void i_should_see_user_profile_icon_on_product_tile_page() throws Throwable {
    	ec1Dashboard.iShouldSeeUserProfileIconOnProductTilePage();
    }

    @Then("^I click on the user profile icon present on the product tile page$")
    public void i_click_on_the_user_profile_icon_present_on_the_product_tile_page() throws Throwable {
    	ec1Dashboard.iClickOnTheUserProfileIconPresentOnTheProductTilePage();
    }

    @Then("^I click on Logout button present on the user profile drop down$")
    public void i_click_on_Logout_button_present_on_the_user_profile_drop_down() throws Throwable {
    	ec1Dashboard.iClickOnLogoutButtonPresentOnTheUserProfileDropDown();
    }
    
    @Then("^I should see Alerts present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_Alerts_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeAlertsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see Messeges present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_Messeges_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeMessegesPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see Notifications present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_Notifications_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeNotificationsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see user profile present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_user_profile_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeUserProfilePresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see \"([^\"]*)\" in the left navigator present on the episode dashboard page$")
    public void i_should_see_in_the_left_navigator_present_on_the_episode_dashboard_page(String text) throws Throwable {
    	ec1Dashboard.iShouldSeeInTheLeftNavigatorPresentOnTheEpisodeDashboardPage(text);
    }

    @Then("^I should see refresh button is present on the episode dashboard page$")
    public void i_should_see_refresh_button_is_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeRefreshButtonIsPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see user profile icon on the episode dashboard page$")
    public void i_should_see_user_profile_icon_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeUserProfileIconOnTheEpisodeDashboardPage();
    }

    @When("^I move the mouse to user profile icon$")
    public void i_move_the_mouse_to_user_profile_icon() throws Throwable {
    	ec1Dashboard.iMoveTheMouseToUserProfileIcon();
    }

    @When("^I click on return on remedy connect present on the user profile dropdown$")
    public void i_click_on_return_on_remedy_connect_present_on_the_user_profile_dropdown() throws Throwable {
    	ec1Dashboard.iClickOnReturnOnRemedyConnectPresentOn_TheUserProfileDropdown();
    }
    
    @When("^I click on Notification button present on the top-nav bar present on the episode dashboard page$")
    public void i_click_on_Notification_button_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iClickOnNotificationButtonPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }
    
    @When("^I click on see all task button present on the notification drop down menu$")
    public void i_click_on_see_all_task_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iClickOnSeeAllTaskButtonPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see Tasks present on the task overview page$")
    public void i_should_see_Tasks_present_on_the_task_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeTasksPresentOnTheTaskOverviewPage();
    }

    @When("^I click on Create a New Task button present on the task overview page$")
    public void i_click_on_Create_a_New_Task_button_present_on_the_task_overview_page() throws Throwable {
    	ec1Dashboard.iClickOnCreateANewTaskButtonPresentOnTheTaskOverviewPage();
    }

    @Then("^I should see New Task present on the create new task task page$")
    public void i_should_see_New_Task_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iShouldSeeNewTaskPresentOnTheCreateNewTaskTaskPage();
    }

    @Then("^I should see Create & Continue button present on the create new task task page$")
    public void i_should_see_Create_Continue_button_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iShouldSeeCreateContinueButtonPresentOnTheCreateNewTaskTaskPage();
    }

    @Then("^I should see Cancel button present on the create new task task page$")
    public void i_should_see_Cancel_button_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iShouldSeeCancelButtonPresentOnTheCreateNewTaskTaskPage();
    }

    @When("^I click on calender icon present on the create new task task page$")
    public void i_click_on_calender_icon_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iClickOnCalenderIconPresentOnTheCreateNewTaskTaskPage();
    }

    @When("^I select date from the calender present on the create new task task page$")
    public void i_select_date_from_the_calender_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iSelectDateFromTheCalenderPresentOnTheCreateNewTaskTaskPage();
    }

    @Then("^I type \"([^\"]*)\" as the task description present on the create new task task page$")
    public void i_type_as_the_task_description_present_on_the_create_new_task_task_page(String text) throws Throwable {
    	ec1Dashboard.iTypeAsTheTaskDescriptionPresentOnTheCreateNewTaskTaskPage(text);
    }

    @When("^I click on Task Type present on the create new task task page$")
    public void i_click_on_Task_Type_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iClickOnTaskTypePresentOnTheCreateNewTaskTaskPage();
    }

    @When("^I select \"([^\"]*)\" from the task type drop down list$")
    public void i_select_from_the_task_type_drop_down_list(String taskType) throws Throwable {
    	ec1Dashboard.iSelectFromTheTaskTypeDropdownList(taskType);
    }

    @When("^I click on Priority present on the create new task task page$")
    public void i_click_on_Priority_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iClickOnPriorityPresentOnTheCreateNewTaskTaskPage();
    }

    @When("^I select \"([^\"]*)\" from the Priority drop down list$")
    public void i_select_from_the_Priority_drop_down_list(String priority) throws Throwable {
    	ec1Dashboard.iSelecFromThePriorityDropdownList(priority);
    }

    @Then("^I click on the Patient Name present on the create new task task page$")
    public void i_click_on_the_Patient_Name_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iClickOnThePatientNamePresentOnTheCreateNewTaskTaskPage();
    }

    @Then("^I Type \"([^\"]*)\" in the patient search box$")
    public void i_Type_in_the_patient_search_box(String patientName) throws Throwable {
    	ec1Dashboard.iTypeInThePatientSearchBox(patientName);
    }

    @Then("^I select patient from the search list present on the create new task task page$")
    public void i_select_patient_from_the_search_list_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iSelectPatientFromTheSearchListPresentOnTheCreateNewTaskTaskPage();
    }

    @Then("^I click on the Create & Continue button present on the create new task task page$")
    public void i_click_on_the_Create_Continue_button_present_on_the_create_new_task_task_page() throws Throwable {
    	ec1Dashboard.iClickOnTheCreateContinueButtonPresentOnTheCreateNewTaskTaskPage();
    }
    
    @Then("^I should see all task button present on the notification drop down menu$")
    public void i_should_see_all_task_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iShouldSeeAllTaskButtonPresentOnTheNotificationDropdownMenu();
    }

    @Then("^I should see Create a New Task button is present on the task overview page$")
    public void i_should_see_Create_a_New_Task_button_is_present_on_the_task_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeCreateANewTaskButtonIsPresentOnTheTaskOverviewPage();
    }

    @Then("^I should see My Tasks button is present on the task overview page$")
    public void i_should_see_My_Tasks_button_is_present_on_the_task_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeMyTasksButtonIsPresentOnTheTaskOverviewPage();
    }

    @Then("^I should see \"([^\"]*)\" is present on the task overview page$")
    public void i_should_see_is_present_on_the_task_overview_page(String tabs) throws Throwable {
    	ec1Dashboard.iShouldSeeIsPresentOnTheTaskOverviewPage(tabs);
    }
    
    @Then("^I click on the checkbox to assign the care team$")
    public void i_click_on_the_checkbox_to_assign_the_care_team() throws Throwable {
    	ec1Dashboard.iClickOnTheCheckboxToAssignTheCareTeam();
    }
    
    @Then("^I should see message icon present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_message_icon_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeMessageIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @When("^I click on message icon present on the top-nav bar present on the episode dashboard page$")
    public void i_click_on_message_icon_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iClickOnMessageIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see See all messages button present on the notification drop down menu$")
    public void i_should_see_See_all_messages_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iShouldSeeSeeAllMessagesButtonPresentOnTheNotificationDropdownMenu();
    }

    @When("^I click on See all messages button present on the notification drop down menu$")
    public void i_click_on_See_all_messages_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iClickOnSeeAllMessagesButtonPresentOnTheNotificationDropdownMenu();
    }

    @Then("^I should see Inbox present on the message overview page$")
    public void i_should_see_Inbox_present_on_the_message_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeInboxPresentOnTheMessageOverviewPage();
    }

    @Then("^I should see Compose button is present on the message overview page$")
    public void i_should_see_Compose_button_is_present_on_the_message_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeComposeButtonIsPresentOnTheMessageOverviewPage();
    }

    @Then("^I should see Inbox button is present on the message overview page$")
    public void i_should_see_Inbox_button_is_present_on_the_message_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeInboxButtonIsPresentOnTheMessageOverviewPage();
    }

    @Then("^I should see Sent button is present on the message overview page$")
    public void i_should_see_Sent_button_is_present_on_the_message_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeSentButtonIsPresentOnTheMessageOverviewPage();
    }

    @Then("^I should see Archive is present on the message overview page$")
    public void i_should_see_Archive_is_present_on_the_message_overview_page() throws Throwable {
    	ec1Dashboard.iShouldSeeArchiveIsPresentOnTheMessageOverviewPage();
    }
    
    @Then("^I click on gear icon present on the inbox page$")
    public void i_click_on_gear_icon_present_on_the_inbox_page() throws Throwable {
    	ec1Dashboard.iClickOnGearIconPresentOnTheInboxPage();
    }

    @Then("^I click on Move to archive present on the inbox page$")
    public void i_click_on_Move_to_archive_present_on_the_inbox_page() throws Throwable {
    	ec1Dashboard.iClickOnMoveToArchivePresentOnTheInboxPage();
    }

    @Then("^I click on the archive message present on the message page$")
    public void i_click_on_the_archive_message_present_on_the_message_page() throws Throwable {
    	ec1Dashboard.iClickOnTheArchiveMessagePresentOnTheMessagePage();
    }

    @Then("^I verify the message is present on the archive page$")
    public void i_verify_the_message_is_present_on_the_archive_page() throws Throwable {
    	ec1Dashboard.iVerifyTheMessageIsPresentOnTheArchivePage();
    }
    
    @Then("^I should see alerts icon present on the top-nav bar present on the episode dashboard page$")
    public void i_should_see_alerts_icon_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iShouldSeeAlertsIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @When("^I click on alerts icon present on the top-nav bar present on the episode dashboard page$")
    public void i_click_on_alerts_icon_present_on_the_top_nav_bar_present_on_the_episode_dashboard_page() throws Throwable {
    	ec1Dashboard.iClickOnAlertsIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage();
    }

    @Then("^I should see See all alerts button present on the notification drop down menu$")
    public void i_should_see_See_all_alerts_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iShouldSeeSeeAllAlertsButtonPresentOnTheNotificationDropdownMenu();
    }

    @Then("^I should see dismiss all button present on the notification drop down menu$")
    public void i_should_see_dismiss_all_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iShouldSeeDismissAllButtonPresentOnTheNotificationDropdownMenu();
    }

    @Then("^I click on dismiss all button present on the notification drop down menu$")
    public void i_click_on_dismiss_all_button_present_on_the_notification_drop_down_menu() throws Throwable {
    	ec1Dashboard.iClickOnDismissAllButtonPresentOnTheNotificationDropdownMenu();
    }

   @Then("I will see patient name title on the patient card")
   public void i_will_wait_to_see_title(){
	   ec1Dashboard.iwillwaittoseetitle();
   }
   
   @When ("^I fill in Facility name with value \"([^\"]*)\"$")
   public void i_fill_in_facility_name(String name){
	   ec1Dashboard.ifillinfacilityname(name);
   }

}
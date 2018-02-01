package com.remedy.episode1;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

/**
 * Created by salam on 5/6/16.
 */
public class Ec1DashboardPage extends BaseClass {

	public Ec1DashboardPage(WebDriver driver) {
		super(driver);
	}

	public void iverifyPageHeader(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);
	}

	public void iexapndsPatiensListTab() {
		clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));
	}

	public void iclickPatiensList() {
		clickElement(driver.findElement(By.cssSelector("#patientsFilter>li:nth-child(1)")));
		delay();
	}

	public void iverifyMyPatient(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector("#ui-nav-tab-dashboard-filter_myPatients")), text);
	}

	public void iclickOnAddPainetButton() {
		clickElement(driver.findElement(By.cssSelector("#patient-add-button")));
		delay();
	}

	public void iverifyEc1DashboardHeaderText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);
	}

	public void iShouldSeeUserProfileIconOnProductTilePage() {
		isElementVisible(driver.findElement(By.cssSelector("menu-toggle.flex-right")));
	}

	public void iClickOnTheUserProfileIconPresentOnTheProductTilePage() {
		clickElement(driver.findElement(By.cssSelector("menu-toggle.flex-right")));
	}

	public void iClickOnLogoutButtonPresentOnTheUserProfileDropDown() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Log Out')]")));
	}

	public void iShouldSeeAlertsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_notification_bar")));
	}

	public void iShouldSeeMessegesPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_inbox_bar")));
	}

	public void iShouldSeeNotificationsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_task_count_bar")));
	}

	public void iShouldSeeUserProfilePresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("span.username")));
	}

	public void iShouldSeeInTheLeftNavigatorPresentOnTheEpisodeDashboardPage(String text) {
		isElementVisible(driver.findElement(By.xpath("//span[@class='title'and text()='Dashboard']")));
	}

	public void iShouldSeeRefreshButtonIsPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("a.refreshPatientsListContainer")));
	}

	public void iShouldSeeUserProfileIconOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("span.username")));
	}

	public void iMoveTheMouseToUserProfileIcon() {
		Actions action = new Actions(driver);
		action.moveToElement(driver.findElement(By.cssSelector("span.username"))).perform();
	}

	public void iClickOnReturnOnRemedyConnectPresentOn_TheUserProfileDropdown() {
		clickElement(driver.findElement(By.cssSelector("a#navbar-dropdown-menu-logout")));
	}

	public void iClickOnNotificationButtonPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		clickElement(driver.findElement(By.cssSelector("li#header_task_count_bar")));
	}

	public void iClickOnSeeAllTaskButtonPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		clickElement(driver.findElement(
				By.cssSelector("li#header_task_count_bar ul.dropdown-menu.extended.inbox>li:nth-child(2)")));
	}

	public void iShouldSeeTasksPresentOnTheTaskOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("span#inboxTitle")));
	}

	public void iClickOnCreateANewTaskButtonPresentOnTheTaskOverviewPage() {
		clickElement(driver.findElement(By.cssSelector("a.compose-btn")));
	}

	public void iShouldSeeNewTaskPresentOnTheCreateNewTaskTaskPage() {
		isElementVisible(driver.findElement(By.cssSelector("div.inbox-header>h1")));
	}

	public void iShouldSeeCreateContinueButtonPresentOnTheCreateNewTaskTaskPage() {
		isElementVisible(driver.findElement(By.cssSelector("button.submitButton")));
	}

	public void iShouldSeeCancelButtonPresentOnTheCreateNewTaskTaskPage() {
		isElementVisible(driver.findElement(By.cssSelector("button.btn.close-btn")));
	}

	public void iClickOnCalenderIconPresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("button.btn.default.date-set")));
	}

	public void iSelectDateFromTheCalenderPresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector(".day.active")));
		clickElement(driver.findElement(By.cssSelector(".hour.active")));
		clickElement(driver.findElement(By.cssSelector(".minute.active")));
	}

	public void iTypeAsTheTaskDescriptionPresentOnTheCreateNewTaskTaskPage(String text) {
		iFillInText(driver.findElement(By.cssSelector("#ec_taskbundle_ectasktype_text")), text);
	}

	public void iClickOnTaskTypePresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("select#ec_taskbundle_ectasktype_type")));
	}

	public void iSelectFromTheTaskTypeDropdownList(String taskType) {
		selectDropdownVisibleElement("select#ec_taskbundle_ectasktype_type", taskType);
	}

	public void iClickOnPriorityPresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("select#ec_taskbundle_ectasktype_priority")));
	}

	public void iSelecFromThePriorityDropdownList(String priority) {
		selectDropdownVisibleElement("select#ec_taskbundle_ectasktype_priority", priority);
	}

	public void iClickOnThePatientNamePresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("a.select2-choice.select2-default")));
	}

	public void iTypeInThePatientSearchBox(String patientName) {
		iFillInText(driver.findElement(By.cssSelector("input.select2-input")), patientName);
	}

	public void iSelectPatientFromTheSearchListPresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("div.select2-search~ul>li:nth-child(1)")));
	}

	public void iClickOnTheCreateContinueButtonPresentOnTheCreateNewTaskTaskPage() {
		clickElement(driver.findElement(By.cssSelector("button.submitButton")));
	}

	public void iShouldSeeAllTaskButtonPresentOnTheNotificationDropdownMenu() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_task_count_bar ul.dropdown-menu.extended.inbox>li:nth-child(2)")));
	}

	public void iShouldSeeCreateANewTaskButtonIsPresentOnTheTaskOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("a.compose-btn")));
	}

	public void iShouldSeeMyTasksButtonIsPresentOnTheTaskOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("ul#tasks-nav>li:nth-child(2)>a")));
	}

	public void iShouldSeeIsPresentOnTheTaskOverviewPage(String tabs) {
		isElementVisible(driver.findElement(By.cssSelector("a[my-task-tasktype=" + tabs + "]")));
	}

	public void iClickOnTheCheckboxToAssignTheCareTeam() {
		clickElement(driver.findElement(By.cssSelector("input[type=checkbox]")));
	}

	public void iShouldSeeMessageIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_inbox_bar")));
	}

	public void iClickOnMessageIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		clickElement(driver.findElement(By.cssSelector("li#header_inbox_bar")));
	}

	public void iShouldSeeSeeAllMessagesButtonPresentOnTheNotificationDropdownMenu() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_inbox_bar li.external.last.inbox-path>a")));
	}

	public void iClickOnSeeAllMessagesButtonPresentOnTheNotificationDropdownMenu() {
		clickElement(driver.findElement(By.cssSelector("li#header_inbox_bar li.external.last.inbox-path>a")));
	}

	public void iShouldSeeInboxPresentOnTheMessageOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("h3.page-title>span:nth-child(1)")));
	}

	public void iShouldSeeComposeButtonIsPresentOnTheMessageOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("a[data-title='Compose']")));
	}

	public void iShouldSeeInboxButtonIsPresentOnTheMessageOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("a[data-title='Inbox']")));
	}

	public void iShouldSeeSentButtonIsPresentOnTheMessageOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("a[data-title='Sent']")));
	}

	public void iShouldSeeArchiveIsPresentOnTheMessageOverviewPage() {
		isElementVisible(driver.findElement(By.cssSelector("a[data-title='Archive']")));
	}

	public void iClickOnGearIconPresentOnTheInboxPage() {
		clickElement(driver.findElement(By.cssSelector("div.table-scrollable>table>tbody>tr>td.settings-column>div>button")));
	}

	public void iClickOnMoveToArchivePresentOnTheInboxPage() {
		clickElement(driver.findElement(By.cssSelector("a.move-to-archive-btn")));
	}

	public void iClickOnTheArchiveMessagePresentOnTheMessagePage() {
		clickElement(driver.findElement(By.cssSelector("a[data-title='Archive']")));
	}

	public void iVerifyTheMessageIsPresentOnTheArchivePage() {
		isElementVisible(driver.findElement(By.cssSelector("div.table-scrollable>table>tbody>tr:nth-child(1)")));
	}

	public void iShouldSeeAlertsIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		isElementVisible(driver.findElement(By.cssSelector("li#header_notification_bar")));
	}

	public void iClickOnAlertsIconPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage() {
		clickElement(driver.findElement(By.cssSelector("li#header_notification_bar")));
	}

	public void iShouldSeeSeeAllAlertsButtonPresentOnTheNotificationDropdownMenu() {
		isElementVisible(driver.findElement(By.cssSelector("ul.dropdown-menu.extended.dropdown-notification li.external>a")));
	}

	public void iShouldSeeDismissAllButtonPresentOnTheNotificationDropdownMenu() {
		isElementVisible(driver.findElement(By.cssSelector("button.btn-dismiss-all")));
	}

	public void iClickOnDismissAllButtonPresentOnTheNotificationDropdownMenu() {
		clickElement(driver.findElement(By.cssSelector("button.btn-dismiss-all")));
	}

	public void iwillwaittoseetitle() {
		iWillWaitToSee(By.cssSelector("div.element-title"));
	}

	public void ifillinfacilityname(String name) {
		iFillInText(driver.findElement(By.xpath("//*[@id='filter-selector-anchor_facility']/div/div/div/div/div/div/input")), name);
	}

	public void ifillindischargefacilityname(String name) {
		iFillInText(driver.findElement(By.xpath("//*[@id='filter-selector-anchor_dicharge_facility']/div/div/div/div/div/div/input")),name);
	}

	public void ifillinCurrentfacilityname(String name) {
		iFillInText(driver.findElement(By.xpath("//*[@id='filter-selector-current_facility']/div/div/div/div/div/div/input")), name);
	}

	public void ifillinDRG(String value) {
		iWillWaitToSee(By.xpath("//*[@id='filter-selector-episode_drg']/div/div/div/div/div/div/input"));
		iFillInText(driver.findElement(By.xpath("//*[@id='filter-selector-episode_drg']/div/div/div/div/div/div/input")),value);
		longDelay();
	}

	public void iClickOnOptionUnderCareSettingFilter(String value) {
		iWillWaitToSee(By.cssSelector(".dropdown-list.available.scroller>label"));
		clickSingleElementFromList(By.cssSelector(".dropdown-list.available.scroller>label"), value);
		waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
	}
}
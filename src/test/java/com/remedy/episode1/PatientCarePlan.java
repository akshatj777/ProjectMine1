package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import com.remedy.baseClass.BaseClass;

public class PatientCarePlan extends BaseClass {
	public PatientCarePlan(WebDriver driver) {
		super(driver);
	}

	public void iClickOnUnderPatientListPage() throws Throwable {
		clickElement(driver.findElement(By.xpath("//*[@id='patientsList']/div/div/span/div[1]/a/div/div[1]")));
	}

	public void iShouldSeeDetails(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".col-md-6.ec2-embed-patient-name")));
	}

	public void iShouldSeeCarePlanpresentonthestudentdetailspage() throws Throwable {
		WebElement element = driver.findElement(By.cssSelector("#carePlanButton"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		isElementVisible(element);
	}

	public void iClickOnCarePlan() throws Throwable {
		WebElement element = driver.findElement(By.cssSelector("#carePlanButton"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("scroll(250, 0)");
		clickElement(element);
	}

	public void iShouldSeeAssignCarePlanUnderCarePlanPage() throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector("#ui-care-plan-container div.row.header-nav-line a")));
	}

	public void iClickOnAssignCarePlan() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#ui-care-plan-container div.row.header-nav-line a")));
	}

	public void iShouldSeePresentOnTheAssignCarePlanPage(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
	}

	public void iShouldSeePresentInThePopup(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-tab.active")));
	}

	public void iShouldSeeTextOnThePopup(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".btn-group>a:nth-of-type(2)")));
	}

	public void iShouldSeeUnderThePlans(String text) throws Throwable {
		isElementVisible(driver.findElement(
				By.xpath("//*[@id='assignCarePlanModal']/div/div[2]/div/div[3]/div/div[2]/div/div/div[1]/h4")));
	}

	public void iAssignWith(String text, String number) throws Throwable {
		iFillInText(driver.findElement(By.cssSelector("input.form-control.input-medium.ng-pristine.ng-valid")), number);
	}

	public void iSelectTheCheckboxInThePlan() throws Throwable {
		WebElement element = driver.findElement(By.xpath("//input[@ng-model='carePlan.selected']"));
		JavascriptExecutor executor = (JavascriptExecutor) driver;
		executor.executeScript("arguments[0].click();", element);
	}

	public void iClickOnSaveButton() throws Throwable {
		clickElement(driver
				.findElement(By.xpath("//button[@class='btn btn-primary'][normalize-space(.) = 'Save changes']")));
	}

	public void iClickOnAppointmentsUnderCarePlan() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#careFlowAppointmentsTab>a")));
	}

	public void iShouldSeeNewApointmentButton() throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-primary.pull-right")));
	}

	public void iClickOnNewAppointmentButton() throws Throwable {
		clickElement(driver.findElement(By.cssSelector(".btn.btn-primary.pull-right")));
	}

	public void iShouldSeePresentOnTheNewAppointmentPage(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
	}

	public void iAssignUnderContact(String number) throws Throwable {
		iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpappointmenttype_contact")), number);
	}

	public void iAssignUnderContactPhone(String number) throws Throwable {
		iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpappointmenttype_contact_phone")), number);
	}

	public void iAssignUnderFacility(String text) throws Throwable {
		iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpappointmenttype_facility")), text);
	}

	public void iClickOnScheduleAppointmentButton() throws Throwable {
		clickElement(driver.findElement(By.cssSelector(".btn.blue.btn-primary")));
	}

	public void iClickOnNotesTabUnderCarePlan() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#careFlowNotesTab>a")));
	}

	public void iClickOnNewNoteButton() throws Throwable {
		WebElement element = driver.findElement(By.cssSelector("#notesList > div > div.buttons.pull-right > a"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void iShouldSeePresentOnTheNewNotePage(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
	}

	public void iClickOnTopicDropdownUnderNewNote() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#bp_personbundle_bpnotetype_topic")));
	}

	public void iSelectValueFromTheTopicDropdown() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#bp_personbundle_bpnotetype_topic>option:nth-of-type(2)")));
	}

	public void iClickOnCreateNoteButton() throws Throwable {
		clickElement(driver.findElement(By.id("submitButton")));
	}

	public void iClickOnActionsColumnInNotes() throws Throwable {
		clickElement(driver.findElement(
				By.cssSelector(".table-scrollable>table>tbody>tr:nth-of-type(1)>td:nth-of-type(7)>div>a")));
	}

	public void iClickOnDeleteInTheActionsColumn() throws Throwable {
		clickElement(driver.findElement(By.cssSelector(
				".table-scrollable>table>tbody>tr:nth-of-type(1)>td:nth-of-type(7)>div>ul:nth-of-type(1)>li:nth-of-type(2)")));
	}

	public void iShouldSeeAPopupForDeleteConfirmation() throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".modal-header")));
	}

	public void iClickOnOkButton() throws Throwable {
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-primary'][normalize-space(.) = 'OK']")));
	}

	public void iShouldSeeOnPopup(String text) throws Throwable {
		verifyTextForElement(driver.findElement(By.cssSelector(".bootbox-body")), text);
	}

	public void iClickOnCareTeam() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#careTeamButton")));
	}

	public void iClickOnJoinCareTeam() throws Throwable {
		clickElement(driver.findElement(By.cssSelector(".pull-right>a:nth-of-type(2)")));
	}

	public void iClickOnGearIconUnderCareManagers() throws Throwable {
		clickElement(driver.findElement(
				By.xpath("//*[@id='tab_4_1']/div[1]/div/div/div/div/div/div/div/div[2]/div/div[2]/div/a/i")));
	}

	public void iClickOnRemoveUnderTheGearIcon() throws Throwable {
		clickElement(driver.findElement(
				By.xpath("//*[@id='tab_4_1']/div[1]/div/div/div/div/div/div/div/div[2]/div/div[2]/div/ul/li[4]")));
	}

	public void iShouldSeeOnTheRemovePopup(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
	}

	public void iShouldSeeText(String text) throws Throwable {
		isElementVisible(driver.findElement(By.cssSelector(".bootbox-body")));
	}

	public void iAcceptAttestation() {

		try {
			isElementVisible(driver.findElement(By.cssSelector("#submitButtonAdd")));
			clickElement(driver.findElement(By.cssSelector("#submitButtonAdd")));
		} catch (Exception e) {
            return;    
		}
	}

	public void IclickonQAPRMonnavigationbaronEC1() {

		clickElement(driver.findElement(By.cssSelector("li.dropdown.dropdown-user")));
	}

	public void IclickonReturntoRemedyfromdropdownonQAPRMonnavigationbaronEC1() {
		clickElement(driver.findElement(By.cssSelector("a#navbar-dropdown-menu-logout")));
	}

}

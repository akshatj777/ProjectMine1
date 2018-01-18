package com.remedy.episode1;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

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
		delay();
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
		iWillWaitToSee(By.cssSelector(".modal-title"));
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
		verifyTextForElement(driver.findElement(By.cssSelector(".modal-title")),text);
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
		iWillWaitToSee(By.cssSelector(".modal-title"));
		isElementVisible(driver.findElement(By.cssSelector(".modal-title")));
		verifyTextForElement(driver.findElement(By.cssSelector(".modal-title")),text);
	}

	public void iClickOnTopicDropdownUnderNewNote() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#bp_personbundle_bpnotetype_topic")));
	}

	public void iSelectValueFromTheTopicDropdown() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#bp_personbundle_bpnotetype_topic>option:nth-of-type(2)")));
	}

	public void iClickOnCreateNoteButton() throws Throwable {
		longDelay();
		clickElement(driver.findElement(By.cssSelector(".modal-footer>#submitButton")));
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

	public void iEditCRA() {
		iWillWaitToSee(By.xpath("//*[@id='edit_BPRAFormCRA']"));
		clickElement(driver.findElement(By.xpath("//*[@id='edit_BPRAFormCRA']")));
	}

	public void i_Verify_Risk_Assessment(String text,String formlist,int n) {
		iWillWaitToSee(By.xpath("//*[@id='formsList']/div/div["+n+"]/div/div[2]/div[2]/div[1]/div/div/div/div"));
		Assert.assertEquals(driver.findElement(By.xpath("//*[@id='formsList']/div/div["+n+"]/div/div[2]/div[2]/div[1]/div/div/div/div")).getAttribute("innerText").trim(), ""+text+"");
	}

	public void assignCarePlanButtondisabled() {
		isElementVisible(driver.findElement(By.xpath("//a[@ng-click='assignCarePlan()' and contains(@class,'btn-disabled')]")));
	}

	public void IwillcheckCareintheradiobutton(String text) {
		longDelay();
		iWillWaitToSee(By.xpath("//h4[text()='"+text+"']/preceding-sibling::div/span"));
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//h4[text()='"+text+"']/preceding-sibling::div/span")));
		clickElement(driver.findElement(By.xpath("//h4[text()='"+text+"']/preceding-sibling::div/span")));
	}

	public void ifillinCarePlanSearch(String text) {
		longDelay();
		iWillWaitToSee(By.xpath("//input[@placeholder='Care Plan search']"));
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Care Plan search']")),text);
	}

	public void iwillnotseeCarePlan(int index) {
		WebDriverWait wait=waitTo();
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div["+index+"]/div/div/div[1]/h4")));
		
	}

	public void iseeTextinassignedformcounter(String count) {
		iWillWaitToSee(By.xpath("//*[@id='formsList']/div[2]/div/div[1]/div[1]/span"));
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='formsList']/div[2]/div/div[1]/div[1]/span")),count);
		
	}

	public void iWillWaitToSeeAssignedFormList() {
		iWillWaitToSee(By.xpath("//*[@id='formsList']/div[2]/div/div[1]/div[1]/span"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='formsList']/div[2]/div/div[1]/div[1]/span")));
		
	}

	public void iFillinDueDate(int days) {
		iWillWaitToSee(By.xpath("//*[@id='bp_personbundle_addnewformratype_dueDate']"));
		String date=currentdate(days,"MM/dd/yyyy");
		setAttributevalue(driver.findElement(By.xpath("//*[@id='bp_personbundle_addnewformratype_dueDate']")),"value",date);
	}

	public void iseeTextinactiveformcounter(String count) {
		iWillWaitToSee(By.xpath("//*[@id='formsList']/div[3]/div/div[1]/div[1]/span"));
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='formsList']/div[3]/div/div[1]/div[1]/span")),count);
		
	}

	public void Isetpatientonboardingstatusto(String index) {
		iWillWaitToSee(By.xpath("//a[@data-onboarding-status="+index+"]"));
		clickElement(driver.findElement(By.xpath("//a[@data-onboarding-status="+index+"]")));
		longDelay();
	}

	public void iEntervalueinnecessaryservices(String value) {
		clickElement(driver.findElement(By.xpath("//*[@id='s2id_bp_first_call_form_type_necessary_equipment']")));
		iFillInText(driver.findElement(By.xpath("//*[@id='s2id_bp_first_call_form_type_necessary_equipment']/ul/li/input")),value);
		delay();
		clickElement(driver.findElement(By.xpath("//*[@id='select2-drop']/ul/li[1]")));
	}

	public void iseeTextinarchivedformcounter(String count) {
		iWillWaitToSee(By.xpath("//*[@id='formsList']/div[4]/div/div[1]/div[1]/span"));
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='formsList']/div[4]/div/div[1]/div[1]/span")),count);
		
	}

	public void iwillwaittoseeCARLtool() {
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div/div/div/div[1]/div[1]"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignedForms']/div/div/div/div[1]/div[1]")));
	}

	public void iwillwaittoseeproposal(String proposal) {
		iWillWaitToSee(By.xpath("//*[@id='bp_nsoc_form_type_recommendation']"));
		String value=driver.findElement(By.xpath("//*[@id='bp_nsoc_form_type_recommendation']")).getAttribute("value");
		Assert.assertEquals(value, proposal);
	}

	public void iwillwaittoseeCARLToolonactivestate(int index) {
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div/div/div/div[1]/div["+index+"]"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignedForms']/div/div/div/div[1]/div["+index+"]")));
	}

	public void assignCarePlanButtonenabled() {
		new WebDriverWait(driver,5).until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//a[@ng-click='assignCarePlan()' and contains(@class,'btn-disabled')]")));
	}

	public void isubmitCRA() {
		delay();
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//*[@id='submitButton']")));
		delay();
		clickElement(driver.findElement(By.xpath("//*[@id='submitButton']")));
	}

	public void iVerifyRiskAssessmentnotinlist(String text, String formlist, int n) {
		new WebDriverWait(driver,05).until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//*[@id='formsList']/div/div["+n+"]/div/div[2]/div[2]/div[1]/div/div/div/div")));
	}

	public void verifyFormTypeError(String message) {
		verifyTextForElement(driver.findElement(By.cssSelector("span.help-block-error")),message);
		}

	public void ideleteassignedform(String form,int n) {
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/a[starts-with(@ng-click,'deleteForm')]"));
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/a[starts-with(@ng-click,'deleteForm')]")));
		clickElement(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/a[starts-with(@ng-click,'deleteForm')]")));
		}

	public void ieditedassignedform(String form, int n) {
		longDelay();
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/*[@id='edit_BPFirstCallForm']"));
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/*[@id='edit_BPFirstCallForm']")));
		clickElement(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]/div[2]/*[@id='edit_BPFirstCallForm']")));
	}

	public void verifyFormError(String message) {
		isElementVisible(driver.findElement(By.xpath("//p[contains(text(),'"+message+"')]")));
		
	}

	public void iVerifyFirstCallassignedlist(int n) {
		longDelay();
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")));
		Assert.assertEquals(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")).getAttribute("innerText").trim(), "First Call assigned");
	}

	public void iVerifySubsequentCallassignedlist(int n) {
		longDelay();
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")));
		Assert.assertEquals(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")).getAttribute("innerText").trim(), "Subsequent Call assigned");
		
	}

	public void iVerifyAfterHourCallassignedlist(int n) {
		longDelay();
		iWillWaitToSee(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]"));
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")));
		Assert.assertEquals(driver.findElement(By.xpath("//*[@id='assignedForms']/div["+n+"]/div/div/div[1]")).getAttribute("innerText").trim(), "After Hour Call assigned");
	}
   
}

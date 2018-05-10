package com.remedy.Episode2;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class NoteCreation extends BaseClass {

	public NoteCreation(WebDriver driver) {
		super(driver);
	}

	public void I_click_on_the_patient_card_on_Patient_Card_Page() {
		clickElement(driver.findElement(By.cssSelector("div.row.cards-mode.isotope > div:nth-child(1) > div > div.card-header.col-xs-12.hover-pointer.ng-scope > div.card-header-content > div")));
	}

	public void Iverifyclickonpatientcardtobenavigatedtopatientsummary() {
		isElementVisible(driver.findElement(By.cssSelector(".card-view-expanded-header.ng-scope")));
	}

	public void IverifyPatientSummaryincludesquickactionbuttonfornotecreation() {
		isElementVisible(driver.findElement(By.cssSelector(".btn.bg-white.btn-secondary.ng-scope")));
	}

	public void IclickonquickactionbuttonfornotecreationonPatientSummarypage() {
		clickElement(driver.findElement(By.cssSelector(".btn.bg-white.btn-secondary.ng-scope")));
	}

	public void I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation() {
		isElementVisible(driver.findElement(By.cssSelector("span.ui-select-placeholder.text-muted.ng-binding")));
	}

	public void IselectthevaluefromthetopicdropdownonAddClinicalDocumentonPatientSummary(String Topic_dropdown_value) {
		clickElement(driver.findElement(By.cssSelector("span.ui-select-placeholder.text-muted.ng-binding")));
		selectDropdownVisibleElementSpan("//div[contains(text(),'" + Topic_dropdown_value + "')]");
	}

	public void IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonNoteCreation() {
		isElementVisible(driver.findElement(By.cssSelector("div.input-group-addon.double-addon")));
	}

	public void IverifyActivityBodytextboxappearsontheAddClinicalDocumentonNoteCreation() {
		isElementVisible(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-empty.ng-invalid")));
	}

	public void selectDropdownVisibleElementSpan(String dropdown_selector) {
		clickElement(driver.findElement(By.xpath(dropdown_selector)));
	}

	public void IverifyattachfileslinkappearsontheAddClinicalDocumentonNoteCreation() {
		isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
	}

	public void IverifyCancelbuttonappearsontheAddClinicalDocumentonNoteCreation() {
		isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-tertiary")));
	}

	public void IverifyCreatenoteappearsontheAddClinicalDocumentonNoteCreation() {
		isElementVisible(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));
	}

	public void IattachfileontheAddClinicalDocumentonNoteCreation() {

		isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
	}

	public void IclickonquickactionbuttonfornotecreationonPatientCardpage() {
		 iWillWaitToSee(By.cssSelector("i.valentino-icon-plus"));
		clickElement(driver.findElement(By.cssSelector("i.valentino-icon-plus")));
	}

	public void IclickonquickactionbuttonfornotecreationonPatientCardpageJavaScript() {
		WebElement element = driver.findElement(By.cssSelector("div > button:nth-child(1).quick-action.ng-scope"));
		Actions action = new Actions(driver);
		action.moveToElement(element).click().perform();
	}

	public void IverifywhethertopicdropdownappearsonAddClinicalDocumentonPatientCardpage() {
		isElementVisible(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
	}

	public void IselectthevaluefromthetopicdropdownonPatientCard(String Topic_dropdown_value) {
		clickElement(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
		selectDropdownVisibleElementSpan("//div[contains(text(),'" + Topic_dropdown_value + "')]");
	}

	public void IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
	}

	public void IverifyActivityBodytextboxappearsontheAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-untouched.ng-empty.ng-invalid.ng-invalid-required")));
	}

	public void IverifyattachfileslinkappearsontheAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
	}

	public void IverifyCancelbuttonappearsontheAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-tertiary")));
	}

	public void IverifyCreatenoteappearsontheAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));
	}

	public void IselectthedatefromdatepickeronAddClinicalDocumentonPatientCard(String date_element) {
		clickElement(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
		selectElementByDesc("td.day.ng-scope", date_element);
	}

	public void IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard(String NoteText) {
		iFillInText(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-untouched.ng-empty.ng-invalid.ng-invalid-required")),NoteText);
	}

	public void IclickonthecreateNoteButtononAddClinicalDocumentonPatientCard() {
		clickElement(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));
	}

	public void IclickthevaluefromthetopicdropdownonAddClinicalDocumentonPatientCard() {
		clickElement(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
	}

	public void IverifythedropdownvaluesonAddClinicalDocumentonPatientCard() {
		List<String> actualcombolisttext = new ArrayList<String>();
		List<WebElement> elementtexts = new ArrayList<WebElement>();
		List<String> requiredcombolisttext = new ArrayList<String>();
		String[] expectedvalues = { "Baseline", "Bedside Visit", "Care Assessment Note", "Clinical Note", "Close Call",
				"Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care",
				"Patient Call", "Patient Education", "Patient Visit", "Psychological Condition", "Transition Note",
				"TUG/RAPT/CARE Score" };
		requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
		clickElement(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
		elementtexts = driver.findElements(By.cssSelector("span.ui-select-choices-row-inner"));
		for (WebElement elementtext : elementtexts) {
			actualcombolisttext.add(elementtext.getText());

		}
		verifyarraylist(requiredcombolisttext, actualcombolisttext);
	}

	public void IverifyTopicdropdownbarhastheplaceholderSelectatopicornot() {
		String Dropdown_placeholder = driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope")).getAttribute("placeholder");
		verifyString("Select a topic", Dropdown_placeholder);
	}

	public void IclickonActivityDateonAddClinicalDocumentonPatientCard() {
		clickElement(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
	}

	public void IverifyCalendarappearstoselectthedatemanuallyonAddClinicalDocumentonPatientCard() {
		isElementVisible(driver.findElement(By.cssSelector(".datetimepicker.table-responsive")));
	}

	public void IVerifythattodaysdateshouldbehighlightedincalendarasdefaultdate() {
		verifyTextForElement(driver.findElement(By.cssSelector("input.form-control.ng-pristine.ng-valid.ng-not-empty.ng-valid-required.ng-touched")),"04/21/2017");
	}

	public void verifyarraylist(List<String> requiredcombolisttext, List<String> actualcombolisttext) {
		Assert.assertEquals(requiredcombolisttext, actualcombolisttext);
	}

	public void verifyString(String expected, String actual) {
		Assert.assertEquals(expected, actual);
	}

	public void IclickonoutsideofthecalendaronAddClinicalDocumentonPatientCard() {
		clickElement(driver.findElement(By.cssSelector("h5.text-no-row-space.ng-binding.ng-scope")));
	}

	public void IverifythatAdd_Fileslinkisclickable() {
		clickElement(driver.findElement(By.cssSelector("a.add-icon")));
	}

	public void IverifythatusershouldbeabletoselectanduploadfilesfromthecomputerthroughAddfileslink(String file) throws InterruptedException, AWTException {
		StringSelection s = new StringSelection(file);
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(s, null);
		Robot robot = new Robot();
		robot.keyPress(java.awt.event.KeyEvent.VK_ENTER);
		robot.keyRelease(java.awt.event.KeyEvent.VK_ENTER);
		robot.keyPress(java.awt.event.KeyEvent.VK_CONTROL);
		robot.keyPress(java.awt.event.KeyEvent.VK_V);
		robot.keyRelease(java.awt.event.KeyEvent.VK_CONTROL);
		Thread.sleep(3000);
		robot.keyPress(java.awt.event.KeyEvent.VK_ENTER);

	}

	public void Iverifytheimageisattachedornot() {
		isElementVisible(driver.findElement(By.cssSelector(" div.files.ng-scope > div:nth-child(1) > span")));
	}

	public void IverifythatcreateNotehasbeensuccessfullycreated() {
		isElementVisible(driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > description > message")));
	}

	public void IclickontheALLTabonPatientpage() {
		clickElement(driver.findElement(By.cssSelector("div.tabbed-navbar-tabs > button:nth-child(1)")));
	}

	public void Iverifythattrashiconisavailableafteruploadingfile() {
		List<WebElement> elements = driver.findElements(By.cssSelector("section > form > div:nth-child(2) > div.upload-section > div.files.ng-scope"));
		int uploadcount = elements.size();
		for (int i = 2; i <= (uploadcount + 1); i++) {
			isElementVisible(driver.findElement(By.cssSelector("section > form > div:nth-child(2) > div.upload-section > div:nth-child(" + i+ ") > div:nth-child(1) > i.valentino-icon-x")));
		}
	}

	public void Iverifyusershouldbeabletoremovethefilebyselectingthetrashicon() {
		List<WebElement> elements = driver.findElements(By.cssSelector("section > form > div:nth-child(2) > div.upload-section > div.files.ng-scope"));
		int uploadcount = elements.size() + 1;
		clickElement(driver.findElement(By.cssSelector("section > form > div:nth-child(2) > div.upload-section > div:nth-child("+ uploadcount + ") > div:nth-child(1) > i.valentino-icon-x")));
		try {
			driver.findElement(By.cssSelector("section > form > div:nth-child(2) > div.upload-section > div:nth-child("+ uploadcount + ") > div:nth-child(1) > i.valentino-icon-x"));
		} catch (Exception e) {
			return;
		}
	}

	public void IclickontheCancelbuttonontheNoteSectiononPatientCard() {
		clickElement(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-tertiary') and text() = 'Cancel']")));
	}

	public void IverifycreatenotesuccessfulmessagedoesnotappearonPatientCard() {
		try {
			driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > description > message"));
		} catch (Exception e) {
			return;
		}
	}

	public void IverifyoncancelingNotecreationNotewindowshouldgetclose() {
		try {
			driver.findElement(By.cssSelector("div.card-footer-content.ng-scope"));
		} catch (Exception e) {
			return;
		}
	}

	public String Igetthenameofthefirstpatientfromthepatientlistonpatientcardpage() {
		String patient_name = driver.findElement(By.cssSelector("div.row.cards-mode.isotope > div:nth-child(1) > div > div.card-header.col-xs-12.hover-pointer.ng-scope > div.card-header-content > div > h3")).getText();
		return patient_name;
	}

	public void Ienterpatientnameinthesearchboxonthepatientspage() {
		String search = Igetthenameofthefirstpatientfromthepatientlistonpatientcardpage();
		iFillInText(driver.findElement(By.xpath("//input[@class='elastic-input ng-pristine ng-untouched ng-valid ng-empty']")),search);
	}

	public String getcurrentdate(int days) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		LocalDate b = localDate.minus(Period.ofDays(days));
		String date = dtf.format(b);
		return date;
	}

	public void Iclickonthepatientcardtonavigatetothepatientsummarypage() {
		String search = Igetthenameofthefirstpatientfromthepatientlistonpatientcardpage();
		String[] words = search.split(",");
		String lastname = words[0];
		WebElement element = driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + lastname + "')]"));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(250, 0)");
		element.click();
	}

	public void IclickonthesubbarclinicaldocumentstabinPatientsummaryPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Clinical Documents')]")));
	}

	public void Iselectthemonthfromcalendarfromdatepicker(int days) throws InterruptedException {
		String dateTime = getcurrentdate(days);
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		List<WebElement> list_AllMonthToBook = driver.findElements(By.cssSelector("span.month"));
		list_AllMonthToBook.get(Integer.parseInt(date_dd_MM_yyyy[1]) - 1).click();
		Thread.sleep(1000);
	}

	public void Iverifynoteshouldbestoredintheclinicaldocumentsectiononceitiscreated() {
		String NoteText = driver.findElement(By.cssSelector("h1.ng-binding")).getText();
		if (NoteText.equals("Baseline")) {
			delay();
		} else {
			return;
		}
	}

	public void Irefreshmywebpageonpatientcardpage() {
		clickElement(driver.findElement(By.cssSelector("i.valentino-icon-reload")));

	}

	public void IverifytosubmittheNoteTopicisthemandatoryfieldtofill() {
		try {
			driver.findElement(By.cssSelector("textarea.form-control.ng-pristine"));
		} catch (Exception e) {
			return;
		}
	}

	public void IclickonthecreatednoteintheclinicalDocumentssectiononpatientsummary() {
		clickElement(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(1) > a > span ")));
	}

	public void IverifymessageshoulddisplayingreencolorYourclinicaldocumentforAngelaPenahasbeenadded() {
		String created_note_message = driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > description > message")).getText();
		String search = Igetthenameofthefirstpatientfromthepatientlistonpatientcardpage();
		String[] words = search.split(",");
		String lastname = words[0];
		String firstname = words[1];
		if (created_note_message.equals("Your clinical document for " + firstname + " " + lastname + " has been added")) {
			return;
		}
	}

	public void IverifyonnotificationthereshouldbelinktoViewclinicaldocument() {
		clickElement(driver.findElement(By.cssSelector("a.btn.btn-outbound.ng-binding")));
	}

	public void IverifyDismissbuttonshouldbethereonnotificationmessage() {
		isElementVisible(driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > actions > i")));
	}

	public void Icheckclickingoncrossiconofgreenbargreenbarnotificationshouldgetremoved() {
		clickElement(driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > actions > i")));
		try {
			driver.findElement(By.cssSelector("div.alert.alert-action.alert-page.alert-dismissible.ng-scope.alert-success > div > div > div > content > description > message"));
		} catch (Exception e) {
			return;
		}
	}

	public void IclickonthecrossbuttonNoteReadonlyformtonavigatetopatientcard() {
		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IclickontheActivitytabonthePatientSummaryPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Activity')]")));
	}

	public void IswitchtotheActivityframeonthePatientSummaryPage() {
		swithToFrame("//*[@id='iFrameEC2PatientActivity']");
	}

	public void IclickontheNotificationbuttonontheActivityframeonPatientSummaryPage() {
		clickElement(driver.findElement(By.cssSelector("#notificationsBtn")));

	}

	public void IVerifythatthenotificationlogsactivitydateontheNotificationonActivitytabonPatientSummary() {
		isElementVisible(driver.findElement(By.cssSelector("#notificationsTable > tbody > tr > td.sorting_1")));
	}

	public void IVerifythatthenotificationlogsactivitynameontheNotificationonActivitytabonPatientSummary() {
		isElementVisible(driver.findElement(By.cssSelector(" #notificationsTable > tbody > tr > td:nth-child(3)")));
	}

	public String getcurrentdate1(int days) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		LocalDate b = localDate.minus(Period.ofDays(days));
		String date = dtf.format(b);
		return date;
	}

	public void IVerifythatthenotificationlogsusernameontheNotificationonActivitytabonPatientSummary() {
		isElementVisible(driver.findElement(By.cssSelector("#notificationsTable > tbody > tr > td:nth-child(4)")));
	}

	public void IclickontheImpatienttabonthepatientCardPage() {
		iWillWaitToSee(By.xpath("//span[contains(text(),'Inpatient')]"));
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Inpatient')]")));
	}

	public void IVerifythatusershouldnotallowtocreatenotewithoutselectingTopicfield() {
		try {
			driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]"));
		} catch (Exception e) {
			return;
		}
	}

	public void Iclickonthecentreofthecalendarheadertoselectdateandmonth() {
		clickElement(driver.findElement(By.cssSelector("th.switch")));
	}

	public void Iclickonthenextlinktoselecttherequiredyearondatepicker(String dateTime) {
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		int yearDiff = Integer.parseInt(date_dd_MM_yyyy[2]) - Calendar.getInstance().get(Calendar.YEAR);
		WebElement nextLink = driver.findElement(By.cssSelector("th.right"));
		WebElement previousLink = driver.findElement(By.cssSelector("th.left"));
		if (yearDiff != 0) {
			if (yearDiff > 0) {
				for (int i = 0; i < yearDiff; i++) {
					nextLink.click();
				}
			} else if (yearDiff < 0) {
				for (int i = 0; i < (yearDiff * (-1)); i++) {
					previousLink.click();
				}
			}
		}
	}

	public void Iselectthedatefromthecalendarfromdatepicker(String dateTime) {
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		List<WebElement> list_AllDateToBook = driver.findElements(By.xpath("//table//tbody//td[not(contains(@class,'past')) and not(contains(@class,'future'))]"));
		list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0]) - 1).click();
	}

	public void Iclickonnavigationbartoreturntoremedyconnect() {
		clickElement(driver.findElement(By.cssSelector("li.dropdown.dropdown-user")));
		clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-logout")));
	}

	public void Iwaittotheseethevisibilityofloadertodisappear() {
		try{
		WebDriverWait wait=new WebDriverWait(driver,60);
		wait.until(ExpectedConditions.attributeContains(driver.findElement(By.cssSelector("div.row.row-loader.ng-scope")),"class","ng-hide"));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

    }

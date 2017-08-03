package com.remedy.Episode2;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class ReadmissionWorklist extends BaseClass {

	public ReadmissionWorklist(WebDriver driver) {
		super(driver);
	}

	public void IclickontheTransitionssubtabonthePatientSummaryPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void Iselectthecaresettingvalueonaddanewtransition(String caresetting) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory", caresetting);
	}

	public void Iselectthecaretypevalueonaddanewtransition(String caretypevalue) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", caretypevalue);
	}

	public void Iselectthefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		Actions actions = new Actions(driver);
		actions.moveToElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"))).click().perform();
		iWillWaitToSee(By.cssSelector("#select2-drop > div > input.select2-input"));
		WebElement element2 = driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input"));
		js.executeScript("arguments[0].click();", element2);
		iFillInText(element2,facilityvalue);
		iWillWaitToSee(By.cssSelector("li.select2-highlighted"));
		actions.moveToElement(driver.findElement(By.cssSelector("li.select2-highlighted"))).click().perform();
	}

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(String DRGtype) {
		iWillWaitToSee(By.cssSelector("#bp_personbundle_bpadmissiontype_drgType"));
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType", DRGtype);
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(String DRG) {
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input")), DRG);
		clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
	}

	public void IclickontheagreebuttononthePatientCardpage() {
		try {
			clickElement(driver.findElement(By.cssSelector("span.attestation-label.ng-binding")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void IclickonlastnamethesearchedpatientonthePatientCardPage(String lastname) {
		String newname = lastname.toUpperCase();
		iWillWaitToSee(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + newname + "')]"));
		clickElement(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + newname + "')]")));
	}

	public static String getcurrentdate(int days) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		LocalDate b = localDate.minus(Period.ofDays(days));
		String date = dtf.format(b);
		return date;
	}

	public void Iclickonthenextlinktoselecttherequiredyearondatepicker(int days) {
		String dateTime = getcurrentdate(days);
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		int yearDiff = Integer.parseInt(date_dd_MM_yyyy[2]) - Calendar.getInstance().get(Calendar.YEAR);
		WebElement nextLink = driver.findElement(By.cssSelector("th.next"));
		WebElement previousLink = driver.findElement(By.cssSelector("th.prev"));
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

	public void Iselectthedatefromthecalendarfromdatepicker(int days) {
		String dateTime = getcurrentdate(days);
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		List<WebElement> list_AllDateToBook = driver.findElements(By.xpath("//div[@class='datetimepicker-days']//table[@class=' table-condensed']//tbody//td[not(contains(@class,'old')) and not(contains(@class,'new'))]"));
		list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0]) - 1).click();
	}

	public void IclickonthecentreofthecalendarheadertoselectdateandmonthonTransitionPage() {
		clickElement(driver.findElement(By.xpath("/html/body/div[12]/div[3]/table/thead/tr[1]/th[2]")));
	}

	public void IselectthetimefromthecalendarfromdatepickeronTransitionPage(String date) {
		clickElement(driver.findElement(By.cssSelector("span.hour.active")));
		clickElement(driver.findElement(By.cssSelector("span.minute.active")));
	}

	public void IselecttheLOSdaysonDischargedateonAddTransition(String days) {
		iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_los")), days);
	}

	public void IclickontheReadmissionssubtabonImpatienttabonpatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Readmissions')]")));
	}

	public void IverifythepatientpresentonthePatientCardPage(String last_name) {
		String newname = last_name.toUpperCase();
		isElementVisible(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + newname + "')]")));
	}

	public void IverifythepatientnotpresentonthePatientCardPage(String last_name) {
		try {
			driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + last_name + "')]"));
		} catch (Exception e) {
			return;
		}
	}

	public String Igetthedischargedateoftheprevioustransitionaddedfromtransitionlist() {
		return driver.findElement(By.cssSelector("td.discharge_date-column")).getText();
	}

	public void IclickontheeditbuttontoedittheActivetransition(String transition_value) throws InterruptedException {
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div/ul/li[1]/a")));
	}

	public void IclickonthecentreofthecalendarheaderonDischargedatepickertoselectdateandmonthonTransitionPage() {
		WebElement element = driver.findElement(By.cssSelector("body > div:nth-child(17) > div.datetimepicker-days > table > thead > tr:nth-child(1) > th.switch"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element);
		clickElement(element);
	}

	public void Iclickondatepickerbuttontoselectthedischargedate() {
		WebElement element = driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_dischargeDate"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void Iclickonupdatetransitiontoaddanewepisode() {
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector("#submitButton"));
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void Iselectthedischargecaresettingvalueonaddanewtransition(String caresetting) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_dischargeFacilityCategory", caresetting);
	}

	public void Iselectthedischargecaretypevalueonaddanewtransition(String caretypevalue) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_dischargeCareType", caretypevalue);
	}

	public void Iselectthedischargefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));
		js.executeScript("arguments[0].click();", element1);
		clickElement(element1);
		Thread.sleep(2000);
		WebElement element2 = driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input"));
		js.executeScript("arguments[0].click();", element2);
		element2.sendKeys(facilityvalue);
		Thread.sleep(4000);
		WebElement element3 = driver.findElement(By.cssSelector("li.select2-highlighted"));
		js.executeScript("arguments[0].click();", element3);
		clickElement(element3);
	}

	public void Iclickonthedeletebuttononthetransitiontodeleteallthetransitions() throws InterruptedException {
		iWillWaitToSee(By.cssSelector("td.settings-column.center.cursor-default > div"));
		int count = getElementCount("td.settings-column.center.cursor-default > div");
		for (int i = 1; i <= count; i++) {
			iWillWaitToSee(By.cssSelector("td.settings-column.center.cursor-default > div"));
			clickElement(driver.findElement(By.cssSelector("td.settings-column.center.cursor-default > div")));
			iWillWaitToSee(By.cssSelector("td.settings-column.center.cursor-default > div > ul > li:nth-child(3) > a"));
			clickElement(driver.findElement(By.cssSelector("td.settings-column.center.cursor-default > div > ul > li:nth-child(3) > a")));
			iWillWaitToSee(By.xpath("//button[contains(text(),'OK')]"));
			clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
			Thread.sleep(3000);
		}
	}

	public void ienterandinthesearchboxontheadmissiontabonpatientspage(String search) {
		iFillInText(driver.findElement(By.cssSelector("search-bar > div.elastic-input-directive.ng-isolate-scope.open > div > input")),search);
	}

	public void Iselectthe63DRGontheDiagnosisandDRGtabonaddanewtransition(String DRG) {
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input")), DRG);
		clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
	}

	public void IenteroncreatetransitionpageontransitiontabonPatientSummary(String admitreason) {
		iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitReason")), admitreason);

	}


	}

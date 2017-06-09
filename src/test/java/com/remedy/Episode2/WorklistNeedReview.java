package com.remedy.Episode2;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class WorklistNeedReview extends BaseClass {

	public WorklistNeedReview(WebDriver driver) {
		super(driver);
	}

	public void IclickontheNeedsReviewtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Needs Review')]")));

	}

	public void IselectthemidinighttimefromthecalendarfromdatepickeronTransitionPage() {
		clickElement(driver.findElement(By.cssSelector(
				"body > div:nth-child(17) > div.datetimepicker-hours > table > tbody > tr > td > span:nth-child(1)")));
		clickElement(driver.findElement(By.cssSelector(
				"body > div:nth-child(17) > div.datetimepicker-minutes > table > tbody > tr > td > span:nth-child(1)")));
	}

	public void IselectthebeforemidinighttimefromthecalendarfromdatepickeronTransitionPage() {
		clickElement(driver.findElement(By.cssSelector(
				"body > div:nth-child(17) > div.datetimepicker-hours > table > tbody > tr > td > span:nth-child(24)")));
		clickElement(driver.findElement(By.cssSelector(
				"body > div:nth-child(17) > div.datetimepicker-minutes > table > tbody > tr > td > span:nth-child(12)")));
	}

	public void Izoomoutmybrowser(String pix) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.body.style.zoom='" + pix + "%'");

	}

	public void IclickonthecentreofthecalendarheadertoselectdischargedateandmonthonTransitionPage() {
		try {
			WebDriverWait wait = new WebDriverWait(driver, 15);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(
					"body > div:nth-child(18) > div.datetimepicker-days > table > thead> tr > th:nth-child(2)")));
			wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector(
					"body > div:nth-child(18) > div.datetimepicker-days > table > thead> tr > th:nth-child(2)")))
					.click();
		} catch (WebDriverException wde) {
			scrollToElement(driver.findElement(By.cssSelector(
					"body > div:nth-child(18) > div.datetimepicker-days > table > thead> tr > th:nth-child(2)")));
			driver.findElement(By.cssSelector(
					"body > div:nth-child(18) > div.datetimepicker-days > table > thead> tr > th:nth-child(2)"))
					.click();
		}
	}

	private void scrollToElement(WebElement el) {
		if (driver instanceof JavascriptExecutor) {
			((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", el);
		}

	}

	public void IselectthemonthfromcalendarfromdatepickerDischarge(int days) throws InterruptedException {
		String dateTime = getcurrentdate(days);
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		List<WebElement> list_AllMonthToBook = driver.findElements(By
				.cssSelector("body > div:nth-child(18) > div.datetimepicker-months > table > tbody > tr > td > span"));
		System.out.println("*****List of months***" + list_AllMonthToBook);
		Thread.sleep(3000);
		list_AllMonthToBook.get(Integer.parseInt(date_dd_MM_yyyy[1]) - 1).click();
		Thread.sleep(4000);

	}

	public String getcurrentdate(int days) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		LocalDate b = localDate.minus(Period.ofDays(days));
		System.out.println("$$$$$Local Date is" + b);
		String date = dtf.format(b);
		System.out.println(dtf.format(b));
		return date;
	}

	public void IselectthedatefromthecalendarDischargefromdatepicker(int days) {
		String dateTime = getcurrentdate(days);
		String date_dd_MM_yyyy[] = (dateTime.split("/"));
		List<WebElement> list_AllDateToBook = driver.findElements(By.xpath(
				"//div[@class='datetimepicker-days']//table[@class=' table-condensed']//tbody//td[not(contains(@class,'old')) and not(contains(@class,'new'))]"));
		list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0]) - 1).click();

	}

}
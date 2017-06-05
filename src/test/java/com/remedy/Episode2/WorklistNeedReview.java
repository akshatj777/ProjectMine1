package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
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

	public void IclickonthecentreofthecalendarheadertoselectdischargedateandmonthonTransitionPage() {
		WebElement element = driver.findElement(By.xpath("/html/body/div[13]/div[3]/table/thead/tr[1]/th[2]"));

		clickElement(element);
	}

	public void Izoomoutmybrowser(String pix) {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.body.style.zoom='" + pix + "%'");

	}

}

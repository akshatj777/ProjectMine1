package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class ReadmissionDischarges extends BaseClass {
	public ReadmissionDischarges(WebDriver driver) {
		super(driver);
	}

	public void IclickonReadmissionDischargeFacilitysubtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Readmission Discharges')]")));
		}

	public void IselectthemidinighttimefromthecalendaronadmitdatefromdatepickeronTransitionPage() {
		clickElement(driver.findElement(By.cssSelector("body > div:nth-child(16) > div.datetimepicker-hours > table > tbody > tr > td > span:nth-child(1)")));
		clickElement(driver.findElement(By.cssSelector("body > div:nth-child(16) > div.datetimepicker-minutes > table > tbody > tr > td > span:nth-child(1)")));
		
	}

	public void IselectthebeforemidinighttimefromthecalendaronadmitdatefromdatepickeronTransitionPage() {
		clickElement(driver.findElement(By.cssSelector("body > div:nth-child(16) > div.datetimepicker-hours > table > tbody > tr > td > span:nth-child(24)")));
		clickElement(driver.findElement(By.cssSelector("body > div:nth-child(16) > div.datetimepicker-minutes > table > tbody > tr > td > span:nth-child(12)")));
		
	}

	}


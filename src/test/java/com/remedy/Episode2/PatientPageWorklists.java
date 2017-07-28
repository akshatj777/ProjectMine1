package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class PatientPageWorklists extends BaseClass {

	public PatientPageWorklists(WebDriver driver) {
		super(driver);
	}

	public void iVerifyDaysToReadsmissionSection() {
		isElementVisible(driver
				.findElement(By.xpath("//div[div[span[@ng-bind='::patient.numberDaysToAdmission.config.label']]]")));
	}

	public void iSeeNumberDaysToInEpisode() {
		isElementVisible(driver.findElement(By
				.xpath("//div[@class='patient-admission-days-row col-equal-rows emphasized-datum ng-scope']/div[1]")));
	}

	public void iSeeReadmissionCount() {
		isElementVisible(driver.findElement(By
				.xpath("//div[@class='patient-admission-days-row col-equal-rows emphasized-datum ng-scope']/div[2]")));
	}

	public void iSeeEpisodeProgressKnob() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='progress-knob']")));
	}

	public void iSeeReadmittedUnderWorklist(String text) {
		verifyTextForElementFromListByXpath("//span[@ng-bind='::patient.admitDate.config.label']", text);
	}

	public void iSeeNumberDaysAsInpatient() {
		isElementVisible(
				driver.findElement(By.xpath("//div[span[@ng-bind='::patient.numberInpatientDays.config.label']]")));
	}
}

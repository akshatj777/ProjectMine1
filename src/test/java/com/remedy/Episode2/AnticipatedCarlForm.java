package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class AnticipatedCarlForm extends BaseClass{

	public AnticipatedCarlForm(WebDriver driver) {
		super(driver);
	}
	
	public void IVerifySubTittleOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h2[text()='"+text+"']")),text);
	}
	
	public void IVerifyTheCheckBoxOptionsForTherapiesNeededOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElementFromListByXpath("//div[h2[text()='Therapies Needed']]/following-sibling::div[//span]", text);
	}
	
	public void IVerifyTheCheckBoxOptionsForTransitionOfCareNeedsOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElementFromListByXpath("//div[h2[text()='Transition of Care Needs']]/following-sibling::div[//span]", text);
	}
}

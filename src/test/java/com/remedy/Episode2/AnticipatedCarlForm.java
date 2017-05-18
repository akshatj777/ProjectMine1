package com.remedy.Episode2;

import org.junit.Assert;
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
	
	public void IClickOnCheckBoxUnderTherapiesNeededOnAnticipatedDischargeNeedsSection(String text) {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'"+text+"')]")));
	}
	
	public void IVerifyTheEnabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(String checkbox){
		boolean value = true;
    	try {
    		driver.findElement(By.xpath("//span[contains(text(),'"+checkbox+"')]/ancestor::div[@disabled='disabled']"));
            
        } catch (org.openqa.selenium.NoSuchElementException e) {
        	value = false;
        }
           Assert.assertFalse(value);
	}
	
	public void IVerifyTheDisabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(String checkbox){
		Assert.assertTrue(isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'"+checkbox+"')]/ancestor::div[@disabled='disabled']"))));
	}
	
	public void IClickOnCheckBox() {
		clickElement(driver.findElement(By.xpath("//input[contains(@class,'ng-untouched ng-valid ng-dirty ng-valid-parse ng-not-empty')]/following-sibling::label//span")));
	}
}

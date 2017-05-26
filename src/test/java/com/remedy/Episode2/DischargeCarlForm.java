package com.remedy.Episode2;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class DischargeCarlForm extends BaseClass {

	public DischargeCarlForm(WebDriver driver) {
		super(driver);
	}
	
	public void IVerifySubtitleUnderDischargeSectionOnDishargeTabOfTheCarlForm(String text) {
		boolean value = isElementPresentOnPage(By.xpath("//h2[text()='"+text+"']"));
		Assert.assertTrue(value);
	}
	
	public void IVerifyRecommendationUnderDischargeSectionOnDishargeTabOfTheCarlForm(String text) {
		boolean value = isElementPresentOnPage(By.xpath("//div//p[contains(text(),'"+text+"')]"));
		Assert.assertTrue(value);
	}
	
	public void IVerifySubFormFieldUnderCARLRecommendationOnDischargeSectionOnCarlForm(String subForm) {
		verifyTextForElementFromListByXpath("//div[p[text()='CARL Recommendation']]/following-sibling::form[@name='dischargeForm']//label[contains(text(),'"+subForm+"')]",subForm);	
	}
	
	public void IClickOnSubFormDropDownUnderCARLRecommendationOnDischargeSectionOnCarlForm(String text) {
		clickElement(driver.findElement(By.xpath("//label[text()='"+text+"']/preceding-sibling::div")));
	}
	
	public void ISelectOptionFromSubFormDropDownUnderCARLRecommendationOnDischargeSectionOnCarlForm(String dropdown, String subForm) {
		clickElement(driver.findElement(By.xpath("//label[text()='"+subForm+"']/preceding-sibling::div//div[text()='"+dropdown+"']")));
	}
	
	public void IVerifyDoneButtonIsDisabledUnderSubFormOnDischargeSectionOnCarlForm() {
		Assert.assertFalse(driver.findElement(By.xpath("//button[text()='Done']")).isEnabled());		
	}
	
	public void IVerifyDoneButtonIsEnabledUnderSubFormOnDischargeSectionOnCarlForm() {
		Assert.assertTrue(driver.findElement(By.xpath("//button[text()='Done']")).isEnabled());		
	}
	
	public void IVerifyFirstQuestionUnderDischargeSectionOnCarlForm(String text) {
		verifyTextForElement(driver.findElement(By.xpath(("//form[@class='carl-interdisciplinary ng-pristine ng-valid ng-scope ng-valid-maxlength']/strong"))),text);	
	}
	
	public void IVerifyRadioOptionForFirstQuestionUnderDischargeSectionOnCarlForm(String radio, String text) {
		isElementPresentOnPage(By.xpath("//strong[text()='"+text+"']/parent::form//div[@class='radio ng-not-empty ng-valid']//span[text()='"+radio+"']"));
	}
	
	public void IVerifySecondQuestionUnderDischargeSectionOnCarlForm(String text) {
		verifyTextForElement(driver.findElement(By.xpath(("//div[@class='disagreement-section ng-scope']/strong"))),text);	
	}
	
	public void IVerifyDropDownUnderSecondQuestionUnderDischargeSectionOnCarlForm(String text) {
		isElementPresentOnPage(By.xpath("//label[text()='"+text+"']"));	
	}
	
	public void IVerifyLegalMessageAppearsWithiIconUnderDischargeSectionOnCarlForm() {
		isElementPresentOnPage(By.xpath("//div[@class='carl-tool-disclaimer']/i[@class='valentino-icon-circle-info']/following-sibling::p"));		
	}
	
	public void IClickOnButtonUnderSubFormOnDischargeSectionOnCarlForm(String button) {
		clickElement(driver.findElement(By.xpath("//div[@class='controls ng-scope']//button[text()='"+button+"']")));
	}
}

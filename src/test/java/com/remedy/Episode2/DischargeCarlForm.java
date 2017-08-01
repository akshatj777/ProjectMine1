package com.remedy.Episode2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class DischargeCarlForm extends BaseClass {

	public final static DateFormat df = new SimpleDateFormat("dd");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);
	
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
	
	public void IVerifySubFormFieldUnderRecommendationOnDischargeSectionOnCarlForm(String subForm) {
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//label[contains(text(),'"+subForm+"')]")));	
	}
	
	public void IVerifySubFormFieldNotAppearingUnderRecommendationOnDischargeSectionOnCarlForm(String subForm) {
		Assert.assertFalse(isElementPresentOnPage(By.xpath("//label[contains(text(),'"+subForm+"')]")));	
	}
	
	public void IClickOnSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(String text) {
		clickElement(driver.findElement(By.xpath("//label[text()='"+text+"']/preceding-sibling::div")));
	}
	
	public void ISelectOptionFromSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(String dropdown, String subForm) {
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
	
	public void IVerifyAdditionalCommentsSectionUnderDischargeOnCarlForm() {
		isElementPresentOnPage(By.xpath("//label[text()='Additional Comments']/preceding-sibling::div//textarea"));
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
	
	public void IClickOnCalednarIconOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm() {
		clickElement(driver.findElement(By.xpath("//i[@class='valentino-icon-calendar']")));
	}
	
	public void ISelectTodaysDateOnCalednarOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm() {
		clickElement(driver.findElement(By.xpath("//td[@class='day ng-scope']//div[text()='"+time+"']")));
	}
	
	public void IEnterAndSelectDischargeLocationeUnderSubFormOnDischargeSectionOnCarlForm(String text) {
		driver.findElement(By.xpath("//label[text()='Discharge Location']/preceding-sibling::div//input[@type='search']")).sendKeys(text);
		delay();
		selectElementByDesc(".ng-binding.ng-scope", "A Helping Hand Hha (Wickenbury, AZ) (HHA)");
	}	
}

package com.remedy.Episode2;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class IndependenceCarlForm extends BaseClass {

	public IndependenceCarlForm(WebDriver driver) {
		super(driver);

	}

	public void IClickOnSideNavigationTabOnCarlForm(String text) {
		clickElement(driver.findElement(By.xpath("//span[text()='"+text+"']")));
	}
	
	public void IVerifySelectedSectionOnTheCarlFormUponClickingOnIt(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h2[contains(text(),'"+text+"')]")),text);
	}
	
	public void IVerifyThatSelectedSectionOnCarlFormGetsHihlightedInLeftNavigatorUponClick(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//li[@class='list-group-item tab ng-scope selected appears-selected']//span[text()='"+text+"']")),text);
	}
	
	public void IVerifyTheDropdownBarsPresentInIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//section[@label='"+text+"']")),text);
	}
	
	public void IVerifyTheQuestionPresentInIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h3[text()='"+text+"']")),text);
	}
	
	public void IVerifyOptionsPresentBelowPatientHaveHistoryFallsQuestionInIndependenceSection(String text) {
		verifyTextForElementfromList(".radio.ng-not-empty.ng-valid>label",text);
	}
	
	public void IVerifyOptionSelectedAppearsInThePlaceHolderOfDropDownOnIndependenceSection(String text1, String text2) {
		verifyTextForElement(driver.findElement(By.xpath("//section[@label='"+text2+"']//span[text()='"+text1+"']")),text1);
	}
	
	public void IClickOnTheDropDownOnIndependenceSection(String text) {
		clickElement(driver.findElement(By.xpath("//section[@label='"+text+"']//span[@aria-label='Select box activate']")));
	}
	
	public void IVerifyOptionsPresentInDropDownOnIndependeceSection(String option) {
		verifyTextForElementFromListByXpath("//div[@class='ng-binding ng-scope']",option);
	}
	
	public void ISelectTheOptionInTheDropDownOnIndependenceSection(String option) {
		clickElement(driver.findElement(By.xpath("//div[text()='"+option+"']")));
	}
	
	public void IVerifyTextForRadioButtonsPresentOnIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//div[@class='radio-wrapper ng-scope']//span[text()='"+text+"']")), text);
	}
	
	public void IClickOnTheRadioButtonOnIndependenceSection(String text) {
		clickElement(driver.findElement(By.xpath("//span[text()='"+text+"']")));
	}
	
	public void IVerifyTheSelectedRadioButtonOnIndependenceSection(String text) {
		try{
           Assert.assertTrue(driver.findElement(By.xpath("//label[span[text()='"+text+"']]/preceding-sibling::input")).isSelected());
           } catch(Exception e){
        	   e.printStackTrace();
           }
           
	}

}

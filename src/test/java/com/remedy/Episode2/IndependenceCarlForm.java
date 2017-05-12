package com.remedy.Episode2;

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
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='"+text+"']")),text);
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

}

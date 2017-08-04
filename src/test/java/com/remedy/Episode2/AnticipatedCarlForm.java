package com.remedy.Episode2;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class AnticipatedCarlForm extends BaseClass {

	public AnticipatedCarlForm(WebDriver driver) {
		super(driver);
	}

	public void IVerifySubTittleOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h2[text()='" + text + "']")), text);
	}

	public void IVerifyTheCheckBoxOptionsForTherapiesNeededOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElementFromListByXpath("//div[h2[text()='Therapies Needed']]/following-sibling::div[//span]",text);
	}

	public void IVerifyTheCheckBoxOptionsForTransitionOfCareNeedsOnAnticipatedDischargeNeedsSection(String text) {
		verifyTextForElementFromListByXpath("//div[h2[text()='Transition of Care Needs']]/following-sibling::div[//span]", text);
	}

	public void IClickOnCheckBoxUnderTherapiesNeededOnAnticipatedDischargeNeedsSection(String text) {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]")));
	}

	public void IVerifyTheEnabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(String checkbox) {
		boolean value = true;
		try {
			driver.findElement(By.xpath("//span[contains(text(),'" + checkbox + "')]/ancestor::div[@disabled='disabled']"));
          } catch (org.openqa.selenium.NoSuchElementException e) {
			value = false;
		}
		Assert.assertFalse(value);
	}

	public void IVerifyTheDisabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(String checkbox) {
		Assert.assertTrue(isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'" + checkbox + "')]/ancestor::div[@disabled='disabled']"))));
	}

	public void IVerifyPatientsRestorationPotentialSectionOnSelectingPhysicalTherapy() {
		Assert.assertTrue(isElementVisible(driver.findElement(By.cssSelector(".restoration-potential.ng-scope"))));
	}

	public void IVerifyTheSelectTextInPlaceHolderOfPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(String text) {
		String text1 = driver.findElement(By.cssSelector("div.restoration-potential.ng-scope > div > input.form-control")).getAttribute("placeholder");
		Assert.assertEquals(text, text1);

	}

	public void IClickOnPhysicalTherapyDropDownOnPatientRestorationPotentialSection() {
		clickElement(driver.findElement(By.xpath("//div[@class='restoration-potential ng-scope']//span[@tabindex='-1']")));
	}

	public void IVerifyTheOtionsInPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(String text) {
		verifyTextForElementFromListByXpath("//div[@class='restoration-potential ng-scope']//li//div[@class='ng-binding ng-scope']", text);
	}

	public void ISelectTheOptionInPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(String text) {
		clickElement(driver.findElement(By.xpath("//div[text()='" + text + "']")));
	}

	public void IVerifyOptionSelectedInPhysicalTherapyPlaceHolderOnAnticipatedDischargeNeeds(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//div[@class='restoration-potential ng-scope']//span[@class='ui-select-match-text pull-left']")),text);
	}

	public void ISelectTheCheckBoxOptionUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String text) {
		clickElement(driver.findElement(By.xpath("//label[@for='" + text + "']")));
	}

	public void IUnCheckTheCheckBoxOptionUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String text) {
		Assert.assertTrue((driver.findElement(By.xpath("//input[@id='" + text + "' and (contains(@class,'ng-not-empty'))]")).isSelected()));
		clickElement(driver.findElement(By.xpath("//label[@for='" + text + "']")));
	}

	public void IVeriyUponSelectTheCheckBoxOptionSubFieldSectionAppearUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String text) {
		Assert.assertTrue((driver.findElement(By.xpath("//input[@id='" + text + "' and (contains(@class,'ng-not-empty'))]")).isSelected()));
		Assert.assertTrue((driver.findElement(By.xpath("//div[div[input[@id='" + text + "']]]/following-sibling::div[contains(@class,'survey-section')]")).isDisplayed()));
	}

	public void IVeriyTextForRequiredFieldUponSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String text, String label) {
		verifyTextForElementFromListByXpath("//div[div[input[@id='" + text+ "']]]/following-sibling::div[contains(@class,'survey-section')]//label[@class='required-field ng-binding']",label);
	}

	public void IVeriyRadioOptionsUponSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String radio, String text) {
		Assert.assertTrue(driver.findElement(By.xpath("//div[input[contains(@id,'" + text + "')]]//label//span[contains(text(),'" + radio + "')]")).isDisplayed());
	}

	public void IClickRadioOptionAfterSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String radio, String text) {
		clickElement(driver.findElement(By.xpath("//div[input[contains(@id,'" + text + "')]]//label//span[contains(text(),'" + radio + "')]")));
	}

	public void IVerifyCheckedRadioOptionUnderSelectedCheckBoxForTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String radio, String text) {
		String value = driver.findElement(By.xpath("//label[contains(@for,'" + text + "')][span[contains(text(),'" + radio + "')]]/parent::div/input")).getAttribute("class");
		Assert.assertTrue(value.contains("ng-valid-parse"));
	}

	public void IVerifyUnCheckedRadioOptionUnderSelectedCheckBoxForTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String radio, String text) {
		String value = driver.findElement(By.xpath("//label[contains(@for,'" + text + "')][span[contains(text(),'" + radio + "')]]/parent::div/input")).getAttribute("class");
		Assert.assertTrue(value.contains("ng-valid ng-not-empty ng-dirty ng-touched"));
	}

	public void IVeriyUponUnSelectTheCheckBoxOptionSubFieldSectionDisAppearUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String text) {
		Assert.assertFalse((driver.findElement(By.xpath("//input[@id='" + text + "' and (contains(@class,'ng-empty'))]")).isSelected()));
		boolean value = isElementPresentOnPage(By.xpath("//div[div[input[@id='" + text + "']]]/following-sibling::div[contains(@class,'survey-section')]"));
		Assert.assertFalse(value);
	}

	public void IVerifyRadioOptionIsAtDefaultStateUnderSelectedCheckBoxForTransitionOfCareNeedsOnAnticipatedDischargeNeeds(String radio, String text) {
		String value = driver.findElement(By.xpath("//label[contains(@for,'" + text + "')][span[contains(text(),'" + radio + "')]]/parent::div/input")).getAttribute("class");
		Assert.assertTrue(value.contains("ng-pristine ng-untouched ng-valid ng-not-empty"));
	}

	public void IclickonthePhysicalTheraphydropdownonPatientsRestorationPotential() {
		clickElement(driver.findElement(By.cssSelector(" div.restoration-potential.ng-scope > div > div.ui-select-match.ng-scope > span")));

	}
}

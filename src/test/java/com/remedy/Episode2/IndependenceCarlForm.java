package com.remedy.Episode2;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import com.remedy.baseClass.BaseClass;

public class IndependenceCarlForm extends BaseClass {

	public IndependenceCarlForm(WebDriver driver) {
		super(driver);

	}

	public void IClickOnSideNavigationTabOnCarlForm(String text) {
		delay();
		iWillWaitToSee(By.xpath("//a/div/h5/div/span[text()='" + text + "']"));
		try{
			clickElement(driver.findElement(By.xpath("//a/div/h5/div/span[text()='" + text + "']")));
		}catch(Exception e)
		{
		Actions actions=new Actions(driver);
		actions.moveToElement(driver.findElement(By.xpath("//a/div/h5/div/span[text()='" + text + "']"))).click().perform();
		}
		}

	public void IVerifySelectedSectionOnTheCarlFormUponClickingOnIt(String text) {

		String text1 = driver.findElement(By.cssSelector("h2.ng-binding")).getText();
		String subtext = text1.substring(3);
		Assert.assertEquals(text, subtext);
	}

	public void IVerifyThatSelectedSectionOnCarlFormGetsHihlightedInLeftNavigatorUponClick(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//li[@class='list-group-item tab ng-scope selected appears-selected']//span[text()='" + text + "']")),text);
	}

	public void IVerifyTheDropdownBarsPresentInIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//section[@label='" + text + "']")), text);
	}

	public void IVerifyTheQuestionPresentInIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h3[text()='" + text + "']")), text);
	}

	public void IVerifyOptionsPresentBelowPatientHaveHistoryFallsQuestionInIndependenceSection(String text) {
		verifyTextForElementfromList(".radio.ng-not-empty.ng-valid>label", text);
	}

	public void IVerifyOptionSelectedAppearsInThePlaceHolderOfDropDownOnIndependenceSection(String text1,String text2) {
		verifyTextForElement(driver.findElement(By.xpath("//section[@label='" + text2 + "']//span[text()='" + text1 + "']")), text1);
	}

	public void IClickOnTheDropDownOnIndependenceSection(String text) {
		try{
		iWillWaitToSee(By.xpath("//section[@label='" + text + "']//span[@aria-label='Select box activate']"));
		clickElement(driver.findElement(By.xpath("//section[@label='" + text + "']//span[@aria-label='Select box activate']")));
		}catch(Exception e)
		{
			Actions actions=new Actions(driver);
			actions.moveToElement(driver.findElement(By.xpath("//section[@label='" + text + "']//span[@aria-label='Select box activate']"))).click().perform();
		}
	}

	public void IVerifyOptionsPresentInDropDownOnIndependeceSection(String option) {
		verifyTextForElementFromListByXpath("//div[@class='ng-binding ng-scope']", option);
	}

	public void ISelectTheOptionInTheDropDownOnIndependenceSection(String option) {
		delay();
		clickElement(driver.findElement(By.xpath("//div[text()='" + option + "']")));
	}

	public void IVerifyTextForRadioButtonsPresentOnIndependenceSection(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//div[@class='radio-wrapper ng-scope']//span[text()='" + text + "']")),text);
	}

	public void IClickOnTheRadioButtonOnIndependenceSection(String text) {
		clickElement(driver.findElement(By.xpath("//span[text()='" + text + "']")));
	}

	public void IVerifyTheSelectedRadioButtonOnIndependenceSection(String text) {
		try {
			Assert.assertTrue(driver.findElement(By.xpath("//label[span[text()='" + text + "']]/preceding-sibling::input")).isSelected());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void IverifyCARLRecommendationfieldondischargesection(String text) {
		delay();
		verifyTextForElement(driver.findElement(By.cssSelector("p.text-bold-700.margin-left-20.margin-top-0")),text);
		
	}

	public void IverifytextnotpresentonCARLRecommendationfieldondischargesection(String text) {
		Assert.assertTrue(!(driver.findElement(By.cssSelector("p.text-bold-700.margin-left-20.margin-top-0")).getText().equals(text)));
	}

}
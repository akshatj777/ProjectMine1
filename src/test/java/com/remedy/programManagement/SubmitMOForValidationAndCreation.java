package com.remedy.programManagement;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;



public class SubmitMOForValidationAndCreation extends BaseClass{

	public SubmitMOForValidationAndCreation(WebDriver driver) {
		super(driver);
	}
	
	WebDriverWait wait = new WebDriverWait(driver, 30);
	
	public void iVerifyNoValidationErrorOccurOnCreateOrganizationPage() {
		boolean bol = isElementPresentOnPage(By.cssSelector(".error-message>span"));
		if (bol==true){
		List<WebElement> listItems = driver.findElements(By.cssSelector(".error-message>span"));
		for (WebElement item : listItems) {
			Assert.assertTrue(item.getText().contentEquals(null));
			
		}}
	}
	
	public void iClickOnParticularOrganizationTabOrganizationDashboard(String text) {
		List<WebElement> element = driver.findElements(By.cssSelector(".navLink.noselect"));
		for (WebElement ele : element) {
			if(ele.getText().contains(text)){
				ele.click();
			}
		}
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iSelectRadioButtonForManagingOrganization(String value) {
		clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='"+value+"']")));
	}
	
	public void iSelectRegionFromDropDownOnCreateOrganization(String text) {
	    delay();
	    iFillInText(driver.findElement(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")), text);
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
}
	
	public void iSelectMarketFromDropDownOnCreateOrganization(String text) { 
		delay();
		iFillInText(driver.findElement(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")), text);
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
	
	public void iSelectManagingOrgNameInHasAManagingOrganizationDropDown(String text) {
		iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), text);
		delay();
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}

}

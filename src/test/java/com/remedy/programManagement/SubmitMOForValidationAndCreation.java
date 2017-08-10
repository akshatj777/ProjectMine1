package com.remedy.programManagement;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;



public class SubmitMOForValidationAndCreation extends BaseClass{

	public SubmitMOForValidationAndCreation(WebDriver driver) {
		super(driver);
	}
	
	WebDriverWait wait = new WebDriverWait(driver, 20);
	
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
			System.out.println("1");
			if(ele.getText().contains(text)){
				System.out.println(ele.getText());
				ele.click();
			}
		}
	}
	
	public void iSelectRadioButtonForManagingOrganization(String value) {
		clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='"+value+"']")));
		System.out.println("Clicked");
	}
	
	public void iSelectRegionFromDropDownOnCreateOrganization(String text) {
	    delay();
	    driver.findElements(By.cssSelector(".Select-placeholder")).get(1).click();
	    iFillInText(driver.findElements(By.xpath("//input[@role='combobox']")).get(1), text);
	    iWillWaitToSee(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption"));
	    clickElement(driver.findElement(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
	}
	
	public void iSelectMarketFromDropDownOnCreateOrganization(String text) {
	    delay();
		driver.findElements(By.cssSelector(".Select-placeholder")).get(2).click();
		iFillInText(driver.findElements(By.xpath("//input[@role='combobox']")).get(2), text);
		iWillWaitToSee(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption"));
		clickElement(driver.findElement(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		}

}

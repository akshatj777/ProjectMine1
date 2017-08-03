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

}

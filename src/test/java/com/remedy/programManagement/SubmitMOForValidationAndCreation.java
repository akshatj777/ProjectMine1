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
			
			}
		}
	}
	
	public void iClickOnParticularOrganizationTabOrganizationDashboard(String text) {
		delay();
		List<WebElement> element = driver.findElements(By.cssSelector(".navLink.noselect"));
		for (WebElement ele : element) {
			if(ele.getText().contains(text)){
				ele.click();
			}
		}
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
}

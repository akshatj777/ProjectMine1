package com.remedy.programManagement;

import static org.junit.Assert.assertEquals;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;



public class HomePagePM extends BaseClass {
	
	WebDriverWait wait = new WebDriverWait(driver, 10);

	 public HomePagePM (WebDriver driver ){
	        super( driver);
	    }
	 
	 public void iVerifyThePageHeaderOnProgramManagementPage(String text) {
		 iWillWaitToSee(By.cssSelector("h1"));
		 String value = getTextForElement(driver.findElement(By.cssSelector("h1")));
		 assertEquals(value, text);
	 }
	
	 public void iClickOnOrganizationalLinkOnProgramManagementPage() {
		 clickElement(driver.findElement(By.cssSelector(".navLink.noselect")));
		 wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	 }
	 
	 public void iVerifyDefaultTabOrganizationSelectedOnHomepage(String text) {
		 iWillWaitToSee(By.xpath("//a[text()='Managing']"));
		 wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector(".navLink.noselect.activeNavLink")));
		 verifyTextForElementfromList(".navLink.noselect.activeNavLink", "Managing");
		}
	 
	 public void iVerifyOrganizationTypeOnHomepage(String text) {
		 iWillWaitToSee(By.xpath("//a[text()='"+text+"']"));
	 } 
}

package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class ViewProfileManagingOrganization extends BaseClass{

	public ViewProfileManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyNameOnHeaderOnViewProfile(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".organization-name.row")), text);
		System.out.println(driver.findElement(By.cssSelector(".participant-id")).getText());
	}
	
	public void iVerifyParticipantIdOnVewProfileOfManagingOrganization(String text) {
		boolean bol = driver.findElement(By.cssSelector(".participant-id")).getText().contains("4571271");
		Assert.assertTrue(bol);
		System.out.println(driver.findElement(By.cssSelector(".organization-address1")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-address2")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-city")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-state")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-zip")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-contact-name")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-contact-phone")).getText());
		System.out.println(driver.findElement(By.cssSelector(".organization-contact-email")).getText());
		
		
	}
	
	public void iVerifyDetailsInFieldOnViewProfileOfManagingOrganization(String text, String sel) {
		
		verifyTextForElement(driver.findElement(By.cssSelector(".organization-"+sel+"")), text);
	}
	

}

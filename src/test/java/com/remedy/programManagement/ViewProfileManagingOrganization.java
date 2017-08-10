package com.remedy.programManagement;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

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
	}
	
	public void iVerifyDetailsInFieldOnViewProfileOfManagingOrganization(String text, String sel) {
		String result = driver.findElement(By.cssSelector(".organization-"+sel+"")).getText();
		Assert.assertEquals(result.trim(), text);
	}
	
	public void iVerifyOrganizationPresentUnderManagingOrganization(String org) {
		verifyTextForElementfromList(".navLink.noselect", org);
		System.out.println("Pass============");
	}
	
	public void iVerifyOrganizationByDefaultSelectedUnderManagingOrganization(String org) {
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}
	
	public void iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(String header,String org) {
//		iWillWaitToSee(By.xpath("//a[@class='navLink noselect activeNavLink' And text()='"+org+"']"));
		verifyTextForElementfromList(".data-table-header-cell>a", header);
	}
	
	public void iClickOnOrganizationUnderManagingOrganization(String org) {
		clickElement(driver.findElement(By.xpath("//a[text()='"+org+"']")));
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}

}

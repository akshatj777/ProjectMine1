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
		//verifyTextForElement(driver.findElement(By.cssSelector(".organization-name.row")), text);
		isElementPresentOnPage(By.xpath("//a[@href='mailto:"+text+"']"));
	}
	
	public void iVerifyParticipantIdOnVewProfileOfOrganization(String id) {	
		if(isElementPresentOnPage(By.cssSelector(".participant-id"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".participant-id"))); 
		   if(("Participant Id: "+id).contentEquals(text)) {
		    }
		   else {
			   Assert.assertEquals("Participant Id: "+id+"|", text);
		    }
		  }
	}
	
	public void iVerifyDetailsInFieldOnViewProfileOfOrganization(String text, String sel) {
		String result = driver.findElement(By.cssSelector(".organization-"+sel+"")).getText();
		Assert.assertEquals(result.replace(",", "").trim(), text);
	}
	
	public void iVerifyOrganizationPresentUnderManagingOrganization(String org, String org1) {
		verifyTextForElementfromList(".navLink.noselect", org);
	}
	
	public void iVerifyOrganizationByDefaultSelectedUnderManagingOrganization(String org) {
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}
	
	public void iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(String header,String org) {
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}
	
	public void iClickOnOrganizationUnderManagingOrganization(String org) {
		clickElement(driver.findElement(By.xpath("//a[text()='"+org+"']")));
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}
	
	public void iVerifyManagingOrganizationNameOnViewProfileOfOrganization(String name) {
		if(isElementPresentOnPage(By.cssSelector(".id.market-name"))) {
		String text = getTextForElement(driver.findElement(By.cssSelector(".managing-org-view>.id.market-name"))); 
        Assert.assertEquals("Managing Organization: "+name,text.replace("|","").trim());
	        }
    }
	
	public void iClickontheCrossButton() {
		clickElement(driver.findElement(By.cssSelector(".back-button.col-md-offset-11")));
	}
	
	public void userShouldGetRedirectedToTheManagingOrganizationTabPage(String text) {
		iWillWaitToSeeElement(driver.findElement(By.cssSelector(".row.col-md-10")), text);
		verifyTextForElement(driver.findElement(By.cssSelector(".row.col-md-10")),text);
	}
}


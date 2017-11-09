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
		delay();
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}
	
	public void iVerifytheCountFortheAssociatedorganization() {
		delay();
		getTextForElement(driver.findElement(By.cssSelector(".fixed-data-table.noselect>div")));
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
	
	public void userShouldGetRedirectedToTheManagingOrganizationTabPage() {
		//verifyTextForElement(driver.findElement(By.cssSelector(".row.col-md-10")),text);
		delay();
		WebElement elem= driver.findElement(By.cssSelector(".row.col-md-10"));
		elem.getText();
	}
	
	public void iVerifytheCountfortheassociatedOrganizations() {
		WebElement industries = driver.findElement(By.cssSelector(".selection-bar.organization-type-selector>ul"));
		List<WebElement> links = industries.findElements(By.tagName("div"));
	}
	
	public void iVerifyEINTINIdOnViewProfilePGPOrganization(String id) {
		if(isElementPresentOnPage(By.cssSelector(".id-ein"))) {	
		String text = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
	    Assert.assertEquals("EIN/TIN: "+id,text.replace("|", ""));
		}
	}
	
	public void iVerifyNPIOnViewProfilePGPOrganization(String num) {
		if(isElementPresentOnPage(By.cssSelector(".id-npi"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".id-npi"))); 
		    Assert.assertEquals("NPI: "+num,text.replace("|","").trim());
			}
	}
	
	public void iVerifyTheEditButtonontheViewPage() {
		getTextForElement(driver.findElement(By.cssSelector(".edit-button.col-md-offset-11")));
	}
	
}


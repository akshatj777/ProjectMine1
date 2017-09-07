package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class ViewProfileSNFOrganization extends BaseClass {

	public ViewProfileSNFOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSeeCountUnderLocationInSNFOrganization(String count) {
		iWillWaitToSee(By.xpath("//div[text()='"+count+"']"));
	}
	
	public void iVerifyHeaderNameUnderSelectedOrganization(String tab) {
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), tab);	
	}
	
	public void iVerifyCCNOnViewProfileOfSelectedOrganization(String id) {
		if(isElementPresentOnPage(By.cssSelector(".id-ccn"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".id-ccn"))); 
		    Assert.assertEquals("CCN: "+id,text.replace("|", ""));
			}
	}
	
	public void iVerifyRegionNameInVeiwProfileOfSelectedOrganization(String region) {
		if(isElementPresentOnPage(By.cssSelector(".region-name"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".region-name"))); 
		    Assert.assertEquals("Region: "+region,text.replace("|", ""));
			}
	}
	
	public void iVerifyMarketNameInVeiwProfileOfSelectedOrganization(String market) {
		if(isElementPresentOnPage(By.cssSelector(".region-market-view>.id.market-name"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".region-market-view>.id.market-name"))); 
		    Assert.assertEquals("Market: "+market,text.trim());
			}
	}

}

package com.remedy.programManagement;

import java.util.HashMap;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class ViewACHOrganization  extends BaseClass{

	public ViewACHOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyHeaderNameUnderSelectedOrganization(String tab) {
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), tab);	
	}
	
	public void iVerifyCCNOnViewProfileOfSelectedOrganization(String id, String org) {
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
	
	public void iVerifyEINTINIdOnViewProfileOrganization(String id, String org) {
		if(isElementPresentOnPage(By.cssSelector(".id-ein"))) {	
		String text = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
	    Assert.assertEquals("EIN/TIN: "+id,text.replace("|", ""));
		}
	}
	
	public void iVerifyNPIOnViewProfileOrganization(String num, String org) {
		if(isElementPresentOnPage(By.cssSelector(".id-npi"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".id-npi"))); 
		    Assert.assertEquals("NPI: "+num,text.replace("|","").trim());
			}
	}
	
	public void iVerifytheCountOftheLoaction(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".fixed-data-table.ach-snf-location-data-table>div")), text);
	}
	
	public void iClickonAddNewLocationButton(String button){
		clickElement(driver.findElement(By.cssSelector(".row.col-md-11>button")));
	}
	
	public void iVerifytheSaerchBarinLocationonProfilePage(String text){
		isElementPresent(By.cssSelector(".text-input-field-locationFilterTerm"));
	}
}

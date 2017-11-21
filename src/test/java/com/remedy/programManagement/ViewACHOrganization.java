package com.remedy.programManagement;

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
	
	public void iVerifyCCNOnViewProfileOfSelectedOrganization(String text, String org) {
		if (org.contains("Hospital")){
			if (text.contains("YES")){
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ccn"))); 
			    Assert.assertEquals("CCN: "+CreateACHOrganization.achOrg.get("CCN"),actual.replace("|", ""));
			}
			else if (text.contains("NO")){
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ccn"))); 
			    Assert.assertEquals("CCN: "+CreateACHOrganization.achOrg_noMO.get("CCN"),actual.replace("|", ""));
			}
		}
		else {
			String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ccn"))); 
		    Assert.assertEquals("CCN: "+text,actual.replace("|", ""));
		}
	}
	
	public void iVerifyEINTINIdOnViewProfileOrganization(String text, String org) {
		if (org.contains("Hospital")){
			if (text.contains("YES")){	
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
				Assert.assertEquals("EIN/TIN: "+CreateACHOrganization.achOrg.get("EIN"),actual.replace("|", ""));
			}
			else if (text.contains("NO")){
			String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
			Assert.assertEquals("EIN/TIN: "+CreateACHOrganization.achOrg_noMO.get("EIN"),actual.replace("|", ""));
			}
		}
		else {
			String actual = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
			Assert.assertEquals("EIN/TIN: "+text,actual.replace("|", ""));
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
	
	public void iVerifyNPIOnViewProfileOrganization(String text, String org) {
		if(text.contains("Hospital")){
			if(text.contains("YES")){
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id.id-npi"))); 
				Assert.assertEquals("NPI: "+CreateACHOrganization.achOrg.get("NPI"),actual.replace("|",""));
			   }
			else if(text.contains("NO")){
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id.id-npi"))); 
				Assert.assertEquals("NPI: "+CreateACHOrganization.achOrg_noMO.get("NPI"),actual.replace("|", ""));	
				}
			}
			else {
				String actual = getTextForElement(driver.findElement(By.cssSelector(".id.id-npi"))); 
				Assert.assertEquals("NPI: "+text,actual.replace("|", ""));	
				
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
	
	public void userShouldGetRedirectedToTheOrganizationTabPage(String text){
		iWillWaitToSee(By.cssSelector(".navLink.noselect"));
		iVerifyTextFromListOfElement(By.cssSelector(".navLink.noselect"), text);

	}
	
	public void iVerifyMONameInVeiwProfileOfSelectedOrganization(String name, String org){
		iWillWaitToSee(By.cssSelector(".navLink.noselect"));
		iVerifyTextFromListOfElement(By.cssSelector("..navLink.noselect"), name);

	}

	public void iVerifyParticipantIDInVeiwProfileOfSelectedOrganization(String name, String org){
		iWillWaitToSee(By.cssSelector(".navLink.noselect"));
		iVerifyTextFromListOfElement(By.cssSelector("..navLink.noselect"), name);

	}

}

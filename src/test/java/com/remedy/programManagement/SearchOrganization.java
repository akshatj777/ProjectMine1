package com.remedy.programManagement;

import java.sql.SQLException;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import com.remedy.baseClass.BaseClass;

public class SearchOrganization extends BaseClass{

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		if(text.contains("MONAME"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moOrg.get("MONAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("ACHNAME - YES"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("ACHNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("ACHNAME - NO"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("ACHNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("PGPNAME - YES"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg.get("PGPNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("PGPNAME - NO"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg_noMO.get("PGPNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("PAYORNAME"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePayorOrganization.payorOrg.get("PAYORNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("SNFNAME - YES"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg.get("SNFNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("SNFNAME - NO"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg_noMO.get("SNFNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("HHANAME - YES"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg.get("HHANAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("HHANAME - NO"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg_noMO.get("HHANAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{	
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}	
	}
	
	public void iSearchWithSearchListFieldOnOrganizationInSearchBox(String searchParam, String org) throws ClassNotFoundException, SQLException{
		String value = searchParam;
		if (org.equalsIgnoreCase("Managing")){
			if (value.equals("MONAME")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moOrg.get("MONAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateManagingOrganization.moOrg.get("MONAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("PID")){
				  String query = "SELECT participant_id from program_management.organization where name = '"+CreateManagingOrganization.moOrg.get("MONAME")+"'";
				  value = fetchParticipantID(query);
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
			}
		  else if (org.equalsIgnoreCase("Hospital")){
			  if (value.equals("ACHNAME - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("ACHNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateACHOrganization.achOrg.get("ACHNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("ACHNAME - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("ACHNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateACHOrganization.achOrg_noMO.get("ACHNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateACHOrganization.achOrg.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateACHOrganization.achOrg_noMO.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
	     }
		  else if (org.equalsIgnoreCase("PGP")){
			  if (value.equals("PGPNAME - YES"))
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg.get("PGPNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreatePGPOrganization.pgpOrg.get("PGPNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("PGPNAME - NO"))
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg_noMO.get("PGPNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreatePGPOrganization.pgpOrg_noMO.get("PGPNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("EIN - YES"))
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg.get("EIN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreatePGPOrganization.pgpOrg.get("EIN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("EIN - NO"))
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.pgpOrg_noMO.get("EIN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreatePGPOrganization.pgpOrg_noMO.get("EIN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
	     }
		  else if (org.equalsIgnoreCase("Payor")){
			  if (value.equals("PAYORNAME"))
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePayorOrganization.payorOrg.get("PAYORNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreatePayorOrganization.payorOrg.get("PAYORNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("PID")){
				  String query = "SELECT participant_id from program_management.organization where name = '"+CreatePayorOrganization.payorOrg.get("PAYORNAME")+"'";
				  value = fetchParticipantID(query);
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
		  }
		  else if (org.equalsIgnoreCase("SNF")){
			  if (value.equals("SNFNAME - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg.get("SNFNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateSNFOrganization.SNFOrg.get("SNFNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("SNFNAME - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg_noMO.get("SNFNAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateSNFOrganization.SNFOrg_noMO.get("SNFNAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateSNFOrganization.SNFOrg.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.SNFOrg_noMO.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateSNFOrganization.SNFOrg_noMO.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
		  }
		  else if (org.equalsIgnoreCase("HHA")){
			  if (value.equals("HHANAME - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg.get("HHANAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateHHAOrganization.HHAOrg.get("HHANAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("HHANAME - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg_noMO.get("HHANAME"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateHHAOrganization.HHAOrg_noMO.get("HHANAME");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - YES")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateHHAOrganization.HHAOrg.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else if (value.equals("CCN - NO")){
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.HHAOrg_noMO.get("CCN"));
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  value = CreateHHAOrganization.HHAOrg_noMO.get("CCN");
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+value+"')]")));
			  }
			  else
			  {
				  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value.replace("-", "").trim());
				  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				  Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
			  }
		  }
	}	
	
	public void iVerifySearchBarOnOrganizationPage(String text) {
		iWillWaitToSee(By.cssSelector(".text-input-field-organizationFilterTerm"));
		isElementPresent(By.cssSelector(".text-input-field-organizationFilterTerm"));
	}
	
	public void iVerifytheNewMatchesMessage(String text) {
		iWillWaitToSee(By.cssSelector(".data-table-overlay-message"));
		Assert.assertEquals(text, driver.findElement(By.cssSelector(".data-table-overlay-message")).getText().trim());
	}
	
	public void iVerifytheCreateNewOrganizationLinkUnderNoMatches(String link) {
		Assert.assertEquals(link, driver.findElement(By.cssSelector(".data-table-overlay-link>a")).getText().trim());
	}

	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		if(text.contains("MONAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"']"));
		}
		else if(text.contains("ACHNAME - YES")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg.get("ACHNAME")+"']"));
		}
		else if(text.contains("ACHNAME - NO")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg_noMO.get("ACHNAME")+"']"));
		}
		else if(text.contains("PAYORNAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreatePayorOrganization.payorOrg.get("PAYORNAME")+"']"));
		}
		else if(text.contains("SNFNAME - YES")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateSNFOrganization.SNFOrg.get("SNFNAME")+"']"));
		}
		else if(text.contains("SNFNAME - NO")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateSNFOrganization.SNFOrg_noMO.get("SNFNAME")+"']"));
		}
		else
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
		}	
	}
	
	public void iSearchWithOldNameInOrganizationSerachBox(String org){
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")).clear();
		if (org.equals("MONAME"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moName);
		}
		else if(org.equals("ACHNAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.oldACH_WithMO);
		}
		else if (org.equals("ACHNAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.oldACH_WithoutMO);
		}
		else if(org.equals("PGPNAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.oldPGP_WithMO);
		}
		else if (org.equals("PGPNAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePGPOrganization.oldPGP_WithoutMO);
		}
		else if (org.equals("PAYORNAME"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreatePayorOrganization.oldPayorOrg);
		}
		else if(org.equals("SNFNAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.oldSNF_WithMO);
		}
		else if (org.equals("SNFNAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateSNFOrganization.oldSNF_WithoutMO);
		}
		else if(org.equals("HHANAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.oldHHA_WithMO );
		}
		else if (org.equals("HHANAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateHHAOrganization.oldHHA_WithoutMO);
		}
	}
	
	public void iSearchWithSearchListFieldOnLocationInOrganizationProfilePage(String searchParam, String org) throws ClassNotFoundException, SQLException{ 
		String value = searchParam;
		if(org.equals("ACHNAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='public_fixedDataTableCell_cellContent' and contains(text(),'"+value+"')]")));
		}
		else if(org.equals("ACHNAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='public_fixedDataTableCell_cellContent' and contains(text(),'"+value+"')]")));
		}
		else if(org.equals("SNFNAME - YES"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='public_fixedDataTableCell_cellContent' and contains(text(),'"+value+"')]")));
		}
		else if(org.equals("SNFNAME - NO"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='public_fixedDataTableCell_cellContent' and contains(text(),'"+value+"')]")));
		}
		else
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='public_fixedDataTableCell_cellContent' and contains(text(),'"+value+"')]")));
		}
	}
	
	public void iSearchFieldOnLocationParametersonViewProfilePage(String text, String org) {
		iWillWaitToSee(By.cssSelector(".text-input-field-locationFilterTerm"));
		iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), text);
	}
}
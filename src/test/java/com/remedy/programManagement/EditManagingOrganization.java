package com.remedy.programManagement;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class EditManagingOrganization extends BaseClass {

	public EditManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iClickFieldInSearchListOnOrganizationPage(String field) {
		if(field.contains("MONAME"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("ACHNAME - YES"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreateACHOrganization.achOrg.get("ACHNAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("ACHNAME - NO"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreateACHOrganization.achOrg_noMO.get("ACHNAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("PGPNAME - YES"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreatePGPOrganization.pgpOrg.get("PGPNAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("PGPNAME - NO"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreatePGPOrganization.pgpOrg_noMO.get("PGPNAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("PAYORNAME"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreatePayorOrganization.payorOrg.get("PAYORNAME")+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+field+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
	}
	
	public void iClickOnButtonOnParticularOrganization(String button) throws IOException {
		clickElement(driver.findElement(By.xpath("//button[text()='"+button+"']")));
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iEditAllFieldsOFOrganization(String field1, String field2) {
		if(field2.contains("MONAME")){
			CreateManagingOrganization.moName = CreateManagingOrganization.moOrg.get("MONAME");
			CreateManagingOrganization.tempMoOrg.put("MONAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreateManagingOrganization.tempMoOrg.get("MONAME"));
			}
		else if(field2.equalsIgnoreCase("ACHNAME - YES")){
			CreateACHOrganization.oldACH_WithMO = CreateACHOrganization.achOrg.get("ACHNAME");
			CreateACHOrganization.tempAchOrg.put("ACHNAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreateACHOrganization.tempAchOrg.get("ACHNAME"));
		}
		else if(field2.equalsIgnoreCase("ACHNAME - NO")){
			CreateACHOrganization.oldACH_WithoutMO = CreateACHOrganization.achOrg_noMO.get("ACHNAME");
			CreateACHOrganization.tempAchOrg.put("ACHNAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreateACHOrganization.tempAchOrg.get("ACHNAME"));
		}
		else if(field2.equalsIgnoreCase("DUPLICATE_ACH - YES")){
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreateACHOrganization.achOrg_noMO.get("ACHNAME"));
		}
		else if(field2.equalsIgnoreCase("DUPLICATE_ACH - NO")){
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreateACHOrganization.achOrg.get("ACHNAME"));
		}
		else if(field2.contains("PGPNAME - YES")){
			CreatePGPOrganization.oldPGP_WithMO = CreatePGPOrganization.pgpOrg.get("PGPNAME");
			CreatePGPOrganization.tempPGPOrg.put("PGPNAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePGPOrganization.tempPGPOrg.get("PGPNAME"));
		}
		else if(field2.contains("PGPNAME - NO")){
			CreatePGPOrganization.oldPGP_WithoutMO = CreatePGPOrganization.pgpOrg_noMO.get("PGPNAME");
			CreatePGPOrganization.tempPGPOrg.put("PGPNAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePGPOrganization.tempPGPOrg.get("PGPNAME"));
		}
		else if(field2.equalsIgnoreCase("DUPLICATE_PGP - YES")){
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePGPOrganization.pgpOrg_noMO.get("ACHNAME"));
		}
		else if(field2.equalsIgnoreCase("DUPLICATE_PGP - NO")){
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePGPOrganization.pgpOrg.get("ACHNAME"));
		}
		else if(field2.equals("PAYORNAME")){
			CreatePayorOrganization.oldPayorOrg = CreatePayorOrganization.payorOrg.get("PAYORNAME");
			CreatePayorOrganization.tempPayorOrg.put("PAYORNAME",createRandomName(field2));
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePayorOrganization.tempPayorOrg.get("PAYORNAME"));
			}
		else if(field2.equalsIgnoreCase("Duplicate_Payor")){
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), CreatePayorOrganization.payorOrg.get("PAYORNAME"));
		}
		else 
		{
			driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), field2);
		}
	}		
	
	public void iEditStateFieldForOrganization(String text) {
		if(!text.isEmpty()){
			if(driver.findElements(By.cssSelector(".Select.Select--single.is-clearable.is-searchable.has-value>input[name='address.stateSelection']")).size()>0){
				driver.findElement(By.xpath("//div[input[@name='address.stateSelection']]//span[@class='Select-clear']")).click();
			}
			//driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//div[@class='Select-value']//span")).click();
			driver.findElements(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")).get(0).sendKeys(text);
	        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
		}
		else {
			if(driver.findElements(By.cssSelector(".Select.Select--single.is-clearable.is-searchable.has-value>input[name='address.stateSelection']")).size()>0){
				driver.findElement(By.xpath("//div[input[@name='address.stateSelection']]//span[@class='Select-clear']")).click();
			}
		}
	}
	
	public void clickStateClearButton() throws Throwable {
		driver.findElement(By.xpath("//span[@class='Select-clear']")).click();
    }
}
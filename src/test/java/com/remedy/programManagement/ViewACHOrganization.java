package com.remedy.programManagement;

import java.sql.SQLException;
import java.util.List;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class ViewACHOrganization  extends BaseClass{

	public static String orgCount;
	
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
		if(org.contains("Hospital")){
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
	
	public void iVerifyManagingOrganizationOnViewProfileOfOrganizationPage(String text, String org) throws ClassNotFoundException, SQLException{
		String result = null;	
		if(text.contains("YES"))
			{
				if(text.contains("Managing Organization"))
				{
					result = getTextForElement(driver.findElement(By.xpath("//span[contains(text(),'Managing Organization:')]")));
					result = result.substring(result.indexOf(":")+1, result.indexOf("|")).trim();
					Assert.assertEquals(result,CreateManagingOrganization.moOrg.get("MONAME"));
				}
				else if(text.contains("Participant Id"))
				{
					String query = "SELECT participant_id from program_management.organization where name = '"+CreateManagingOrganization.moOrg.get("MONAME")+"'";
					result = getTextForElement(driver.findElement(By.cssSelector(".id.participant-id")));
					result = result.substring(result.indexOf(":")+1).trim();
					String queryResult = fetchParticipantID(query);
					Assert.assertEquals(result,queryResult);
				}
			}
		else
		{
			result = getTextForElement(driver.findElement(By.cssSelector(".managing-org-view"))).trim();
			Assert.assertEquals(result,"This Organization does not have a Managing Organization");

		}
			
	}
	
	public void iVerifyMORadioButtonChecked(String name){
		if(name.contains("Has")){
			boolean bol = driver.findElement(By.cssSelector(".radio-button->input[value='true']")).isSelected();
			Assert.assertTrue(bol);		
		}
		else
		{
			boolean bol = driver.findElement(By.cssSelector(".radio-button->input[value='false']")).isSelected();
			Assert.assertTrue(bol);
		}
	}
	
	public void iVerifyManagingOrganizationOnAutoFilledOnOrganizationPage(String org){
		List<WebElement> listItems = driver.findElements(By.cssSelector("span[aria-selected='true']"));
		for (WebElement item : listItems) {
			  if (item.getText().trim().contains(CreateManagingOrganization.moOrg.get("MONAME"))) {
				  Assert.assertTrue(item.getText().trim().contains(CreateManagingOrganization.moOrg.get("MONAME")));  
			  } 
		}
	}
	
	public void iVerifyDetailsOfOrgAssociatedWithMO(String name, String org){
		if(name.contains("ACHNAME")){
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg.get("ACHNAME")+"']")));
		}
		else if(name.contains("CCN")){
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg.get("CCN")+"']")));
		}
		else{
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[text()='"+name+"']")));
		}
	}
	
	public void iGetCountOfAssociatedOrganization(String org){
		orgCount = getTextForElement(driver.findElement(By.cssSelector(".fixed-data-table.noselect>div")));
		orgCount = orgCount.replaceAll("Organization|s", "").trim();
	}
	
	public void iVerifyCountOfAssociatedOrgIncreasedBy1(String org){
		String count= getTextForElement(driver.findElement(By.cssSelector(".fixed-data-table.noselect>div")));
		count = count.replaceAll("Organization|s", "").trim();
		orgCount = Integer.toString(Integer.parseInt(orgCount)+1);
		Assert.assertEquals(orgCount,count);
		
	}
}

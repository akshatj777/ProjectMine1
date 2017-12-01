package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class EditHospitalOrganization extends BaseClass{

	public EditHospitalOrganization(WebDriver driver) {
		super(driver);
	}

	public void iVerifyManagingOrgFieldOnOrganizationPage(String org){
		if (org.contains("YES")){
			String actual = getTextForElement(driver.findElement(By.cssSelector(".display-managing-org")));
			actual = actual.substring((actual.indexOf(":"))+1).trim();
			Assert.assertEquals(CreateManagingOrganization.moOrg.get("MONAME"),actual);
		}
		else
		{
			String actual = getTextForElement(driver.findElement(By.cssSelector(".display-managing-org")));
			actual = actual.substring((actual.indexOf(":"))+1).trim();
			Assert.assertEquals("No Managing Organization Selected",actual);
		}
	}
	
	public void iEditLocationFieldsSelectedOrganization(String field1, String field2,int num){
		if(field1.equals("Location Name")){
			num = num-1;
			driver.findElements(By.xpath("//input[@placeholder='"+field1+"']")).get(num).clear();
			iFillInText(driver.findElements(By.xpath("//input[@placeholder='"+field1+"']")).get(num), field2);
		}
		else
		{
			num = num-1;
			driver.findElements(By.xpath("//input[@name='locations["+num+"].address."+field1+"']")).get(num).clear();
			iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address."+field1+"']")), field2);
		}
	}
	
	public void iEditLocationStateForLocationsofSelectedOrganization(String text, int num){
		num = num-1;
		scrollIntoViewByJS(driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//span[@class='Select-clear-zone']/span")));
		iWillWaitToSee(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//span[@class='Select-clear-zone']/span"));
		clickElement(driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//span[@class='Select-clear-zone']/span")));
		if(!text.equals("")){
		
    	iFillInText(driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//span[@class='Select-clear-zone']")), text);
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
		}
	}
	
	public void iEditLocationTypeForLocation(String text, int num) {
		num = num-1;
		driver.findElements(By.xpath("//div[input[@name='locations["+num+"].locationTypeSelector']]//span[text()='×']")).get(0).click();
		driver.findElements(By.xpath("//div[text()='Location Type']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	delay();
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text); 
	}
	
	public void iEditRegionForLocation(String text, int num) {
		num = num-1;
	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
	
    public void iEditMarketForLocation(String text, int num) {
    	num = num-1;
	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
    }
	
	public void iVerifyIdentifierIsNotEditable(String id){
		Assert.assertEquals("true",driver.findElement(By.cssSelector(".text-input-field-"+id)).getAttribute("disabled"));
	}

}

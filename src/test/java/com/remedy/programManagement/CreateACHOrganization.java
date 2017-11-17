package com.remedy.programManagement;

import java.util.HashMap;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import com.remedy.baseClass.BaseClass;

public class CreateACHOrganization extends BaseClass{
	public static HashMap<String, String> tempAchOrg = new HashMap<String, String>();
	public static HashMap<String, String> achOrg = new HashMap<String, String>();

	public CreateACHOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(String header,String org) {
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}
	
	public void iVerifyLabelDropDownFieldOnCreateOrganizationPage(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".select-field-caption.required")), text);
	}
	
	public void iClickOnParticularOrganizationTabOrganizationDashboard(String text) {
		delay();
		List<WebElement> element = driver.findElements(By.cssSelector(".navLink.noselect"));
		for (WebElement ele : element) {
			if(ele.getText().contains(text)){
				ele.click();
			}
		}
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iEnterCNNorNPIorEINIdOnCreateOrganizationPage(String id, String field) throws InterruptedException {
		if(id.equals("CCN")){
			tempAchOrg.put(id, createRandomNumber(10));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get(id));
			}
		else if(id.equals("EIN")){
			tempAchOrg.put(id, createRandomNumber(10));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get(id));
			}
		else if(id.equals("NPI")){
			tempAchOrg.put(id, createRandomNumber(10));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get(id));
			}
		else if(id.contains("DUPLICATE")){
			if(id.contains("CCN")){
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get("CCN"));
			}
			else if(id.contains("EIN")){
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get("EIN"));
			}
			else if(id.contains("NPI")){
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get("NPI"));
			}
		}
		else if(id.equals("lessThan6")){
			String value = createRandomNumber(5);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), value);
		}
		else if(id.equals("greaterThan10")){
			String value = createRandomNumber(11);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), value);
		}
		else {
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), id);
			delay();
		}
	}
	
	public void iEnterLocationNameForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].locationName']")), text);
    }
    
    public void iEnterAddress1ForLocationOnACHOrg(String add1, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address1']")), add1);
    }
    
    public void iEnterLocationTypeForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	driver.findElements(By.xpath("//div[text()='Location Type']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	delay();
    	clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    }	
    
    public void iEnterAddress2ForLocationOnACHOrg(String add2, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address2']")), add2);
    }
    
    public void iEnterRegionForLocationOnACHOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
   
    }
    
    public void iEnterCityForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.city']")), text);
    }
    
    public void iEnterMarketForLocationOnACHOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));  
    }
    
    public void iEnterStateForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//input[@role='combobox']")).sendKeys(text);
    	clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    }
    
    public void iEnterZipForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.postalCode']")), text);
    }

	public void iSelectRadioButtonForManagingOrganization(String text) { 
		if(text.equals("true")) {
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='true']")));
		}
		else if (text.equals("false")){
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='false']")));
		}
	}
	
	public void iSelectManagingOrgNameInHasAManagingOrganizationDropDown(String text) {
		if(text.contains("true")){
			iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), CreateManagingOrganization.moOrg.get("MONAME"));
			delay();
		    clickElement(driver.findElement(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		}
	}
	
	public void iVerifyLocationHeaderOnOrganizationPage(String location) {
		iVerifyTextFromListOfElement(By.cssSelector(".col-md-11.location-indcator"), location);
	}
}

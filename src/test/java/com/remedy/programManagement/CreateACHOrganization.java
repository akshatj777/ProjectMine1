package com.remedy.programManagement;

import java.util.HashMap;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import com.remedy.baseClass.BaseClass;

public class CreateACHOrganization extends BaseClass{
	public static HashMap<String, String> tempAchOrg = new HashMap<String, String>();
	public static HashMap<String, String> achOrg = new HashMap<String, String>();
	public static HashMap<String, String> achOrg_noMO = new HashMap<String, String>();

	public CreateACHOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyLabelDropDownFieldOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".select-field-caption"), text);
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
		if(id.equalsIgnoreCase("CCN")){
			tempAchOrg.put(id, createRandomNumber(10));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get(id));
			}
		else if(id.equalsIgnoreCase("EIN")){
			tempAchOrg.put(id, createRandomNumber(10));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempAchOrg.get(id));
			}
		else if(id.equalsIgnoreCase("NPI")){
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
		else if(id.equalsIgnoreCase("lessThan6")){
			String value = createRandomNumber(5);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), value);
		}
		else if(id.equalsIgnoreCase("greaterThan10")){
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
    	if(!text.isEmpty()){
    		num = num-1;
    		driver.findElements(By.xpath("//div[text()='Location Type']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    		delay();
    		clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}	
    }	
    
    public void iEnterAddress2ForLocationOnACHOrg(String add2, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address2']")), add2);
    }
    
    public void iEnterRegionForLocationOnACHOrg(String text, int num) {
    	if(!text.isEmpty()){
    		num = num-1;
    	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}
    }
    
    public void iEnterCityForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.city']")), text);
    }
    
    public void iEnterMarketForLocationOnACHOrg(String text, int num) {
    	if(!text.isEmpty()){
    		num = num-1;
    	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}
    }
    
    public void iEnterStateForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//input[@role='combobox']")).sendKeys(text);
    	if(!text.isEmpty()){
    	clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}
    }
    
    public void iEnterZipForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.postalCode']")), text);
    }

	public void iSelectRadioButtonForManagingOrganization(String text) { 
		if(text.equalsIgnoreCase("YES")) {
			waitTo().until(ExpectedConditions.elementToBeClickable(By.cssSelector(".radio-button->input[value='true']")));
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='true']")));
		}
		else if (text.equalsIgnoreCase("NO")){
			waitTo().until(ExpectedConditions.elementToBeClickable(By.cssSelector(".radio-button->input[value='false']")));
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='false']")));
		}
	}
	
	public void iSelectManagingOrgNameInHasAManagingOrganizationDropDown(String managingOrg, String text) {
		if(text.equalsIgnoreCase("YES")){
			if(managingOrg.equalsIgnoreCase("BLANK")){
				iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), "");	
			}
			else if (managingOrg.contains("Invalid")){
				iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), managingOrg);	
			}
			else {
				iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), CreateManagingOrganization.moOrg.get("MONAME"));
				clickElement(driver.findElement(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
			}
		}
	}
	
	public void iVerifyLocationHeaderOnOrganizationPage(String location) {
		String actual = null;
		List <WebElement> element = driver.findElements(By.cssSelector(".col-md-11.location-indcator"));
	    for(WebElement ele: element) {
	    	if (ele.getText().replace("-", "").trim().equals(location)) {
	    		actual = ele.getText().replace("-", "").trim();
	    	}
	    }
	    Assert.assertEquals(actual,location);
	}
	
    public void iVerifyLocationCountOnViewOrganizationPage(int count) {
    	List<WebElement> element = driver.findElements(By.xpath("//div[@class='fixedDataTableCellGroupLayout_cellGroupWrapper' and (contains(@style,'width: 947px'))]"));
    	int actual = (element.size())-1;
    	Assert.assertEquals(count, actual);
    }
    
    public void iVerifyMessageInHasAManagementOrganization(String text) {
    	verifyTextForElement(driver.findElement(By.cssSelector(".Select-noresults")), text);
    }

}

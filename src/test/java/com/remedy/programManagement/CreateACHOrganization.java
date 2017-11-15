package com.remedy.programManagement;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.baseClass.BaseClass;

public class CreateACHOrganization extends BaseClass{
	
	WebDriverWait wait = new WebDriverWait(driver, 20);
	DateFormat datef = new SimpleDateFormat("ddMMyy");
	Date ts = new Date();
	String timef = datef.format(ts);
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	final String time = df.format(timestamp);
	public static String CCN;
	public static String EIN;
	public static String NPI;	

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
	
	public void iEnterCNNorNPIorEINIdOnCreateOrganizationPage(String ccn, String field) {
		if(!ccn.isEmpty()){
		CCN = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CCN);
		}
	}
	
	public void iEnterEINIdOnCreateOrganizationPage(String ein, String field) {
		if(!ein.isEmpty()){
		EIN = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), EIN);
		}
	}
	
	public void iEnterNPIOnCreateOrganizationPage(String npi, String field) {
		if(!npi.isEmpty()){
		NPI = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), NPI);
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
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
    }	
    
    public void iEnterAddress2ForLocationOnACHOrg(String add2, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address2']")), add2);
    }
    
    
    public void iEnterRegionForLocationOnACHOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);    
    }
    
    public void iEnterCityForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.city']")), text);
    }
    
    public void iEnterMarketForLocationOnACHOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);  
    }
    
    public void iEnterStateForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//input[@role='combobox']")).sendKeys(text);
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
    }
    
    public void iEnterZipForLocationOnACHOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.postalCode']")), text);
    }

	public void iSelectRadioButtonForManagingOrganization(String text) { 
		if(text.contentEquals("Has a Management Organization")) {
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='true']")));
		}
		else if (text.contentEquals("No Management Organization")){
			clickElement(driver.findElement(By.cssSelector(".radio-button->input[value='false']")));
		}
	}

}

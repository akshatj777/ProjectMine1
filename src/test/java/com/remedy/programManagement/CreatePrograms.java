package com.remedy.programManagement;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class CreatePrograms extends BaseClass {
	
	public static HashMap<String, String> tempPrograms = new HashMap<String, String>();
	public static HashMap<String, String> programs = new HashMap<String, String>();
	public static String programName;

	public CreatePrograms(WebDriver driver) {
		super(driver);
	}
	
	Actions build= new Actions(driver);
	
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPageUnderPayorOrganization(String msg, String org) {
		
		if(driver.findElements(By.cssSelector(".alert.alert-dismissible.alert-success>div")).size() > 0)	
		{
			if(org.contains("Programs")){
				iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>div"));
				verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>div")), msg);
				if(!CreatePrograms.tempPrograms.isEmpty())
				{
					CreatePrograms.programs.putAll(CreatePrograms.tempPrograms);
					CreatePrograms.tempPrograms.clear();
				}
				waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			}
		}
		else 
		   {
		    	iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-danger>div"));
		    	verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-danger>div")), msg);
		    	waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		    }	
		}

	public void iVerifyHeaderLabelUnderSelectedOrganization(String header,String org) {
		iWillWaitToSee(By.cssSelector(".data-table-header-cell>a"));
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}

	public void iSelectProgramNameInCreateContractPageUnderPayorOrganization(String text) {
//		iFillInText(driver.findElement(By.xpath("//div[text()='Select a Program']")), CreatePrograms.programs.get("PROGRAMNAME"));
//		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
//		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), CreatePrograms.programs.get("PROGRAMNAME"));
	clickElement(driver.findElement(By.xpath("//div[text()='Select a Program']")));
	clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), CreatePrograms.programs.get("PROGRAMNAME"));
	}
	
	
	public void iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".col-sm-11.row.contract-indicator>div")), text);
	}
	
	public void iSelectOrganizationTypeOnCreateContratsPageUnderPayorOrganization(String text, int num, String field) {
//			iFillInText(driver.findElement(By.cssSelector(".Select-value")), text);
//			waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		    clickElement(driver.findElement(By.cssSelector(".Select-value")));
			clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iSelectOrganizationNameOnCreateContratsPageUnderPayorOrganization(String text, int num, String field) {
//		iFillInText(driver.findElement(By.xpath("//div[text()='Search Name or CCN']")), text);
//		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		clickElement(driver.findElement(By.xpath("//div[text()='Search Name or CCN']")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iSelectStartDateforOrganizationNameContractsPage(int num, String field) {
//		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
//		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon' AND @aria-label='day-1']")));
		
		build.moveToElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']"))).click().perform();
		iWillWaitToSee(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon' AND @aria-label='day-1']"));
		build.moveToElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon' AND @aria-label='day-1']"))).click().perform();
	}
	
	public void iSelectEndDateforOrganizationNameContractsPage(int num, String field) {
		//clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='YYYY/MM/DD']")));
		build.moveToElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='YYYY/MM/DD']"))).click();
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--wed' AND @aria-label='day-31']")));
	}
	
	public void iSelectStartDateforBundle1ContractsPage(int num, String field) {
		//clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='Enter the start date']")));
		build.moveToElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='Enter the start date']"))).click();
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--wed' AND @aria-label='day-3']")));
	}
	
	public void iSelectEndDateforBundle1ContractsPage(int num, String field) {
		//clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='YYYY/MM/DD']")));
		build.moveToElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='YYYY/MM/DD']"))).click();
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon' AND @aria-label='day-29']")));
	}
	
	public void iSelectStartDateforBundle_Price1ContractsPage(int num, String field) {
		//clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
		build.moveToElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']"))).click();
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--sat react-datepicker__day--weekend' AND @aria-label='day-6']")));
	}
	
	public void iSelectEndDateforBundle_Price1ContractsPage(int num, String field) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--fri' AND @aria-label='day-26']")));
	}
	
	public void iSelectBundle1OnCreateContratsPageUnderPayorOrganization(String text, int num, String field) {
//		iFillInText(driver.findElement(By.xpath("//div[text()='Select a Bundle']")), text);
//		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		clickElement(driver.findElement(By.xpath("//div[text()='Select a Bundle']")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iEnterBundle_Price1DetailsOnContractsPage(String text, String field, int num, String field1) {
		num=num-1;
		iFillInText(driver.findElement(By.xpath("//div//input[@class='text-input-field-contracts["+num+"].contractBundles["+num+"].bundlePrices["+num+"].trendFactor']")), text);
	}

	public void iInsertdays(List<Integer> days) {
		List<WebElement> listItemsStart = driver.findElements(By.xpath("//label[@class='date-picker-input-label' and text()='Enter the start date']"));
		List<WebElement> listItemsEnd = driver.findElements(By.xpath("//label[@class='date-picker-input-label' and text()='YYYY/MM/DD']"));
		List<String> Dates=new ArrayList<String>();
//		for(int i=0;i<days.size();i++){
//			 date1=currentdate(days.get(i),"dd/MM/yyyy");
//		}
//		
		for(int i=0;i<listItemsStart.size();i++){
			listItemsStart.get(i).sendKeys("");
		}
		
	}
	
	public static String currentdate(int days,String format) {
		  DateTimeFormatter dtf = DateTimeFormatter.ofPattern(format);
		  LocalDate localDate = LocalDate.now();
		  LocalDate b = localDate.minus(Period.ofDays(days));
		  String date = dtf.format(b);
		  return date;
		 }
}

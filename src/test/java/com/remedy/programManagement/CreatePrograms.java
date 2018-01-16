package com.remedy.programManagement;

import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class CreatePrograms extends BaseClass {
	
	public static HashMap<String, String> tempPrograms = new HashMap<String, String>();
	public static HashMap<String, String> programs = new HashMap<String, String>();
	public static String programName;

	public CreatePrograms(WebDriver driver) {
		super(driver);
	}
	
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
		iFillInText(driver.findElement(By.xpath("//div[text()='Select a Program']")), CreatePrograms.programs.get("PROGRAMNAME"));
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), CreatePrograms.programs.get("PROGRAMNAME"));
	}
	
	public void iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".col-sm-11.row.contract-indicator>div")), text);
	}
	
	public void iSelectOrganizationTypeOnCreateContratsPageUnderPayorOrganization(String text) {
			iFillInText(driver.findElement(By.cssSelector(".Select-value")), text);
			waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
			clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iSelectOrganizationNameOnCreateContratsPageUnderPayorOrganization(String text) {
		iFillInText(driver.findElement(By.xpath("//div[text()='Search Name or CCN']")), text);
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iSelectStartDateforOrganizationNameContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon' AND @aria-label='day-1']")));
	}
	
	public void iSelectEndDateforOrganizationNameContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='YYYY/MM/DD']")));
		clickElement(driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--wed' AND @aria-label='day-31']")));
	}
	
	public void iSelectStartDateforBundle1ContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='Enter the start date']")));
		clickElement(driver.findElement(By.xpath("")));
	}
	
	public void iSelectEndDateforBundle1ContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-8']//preceding::label[text()='YYYY/MM/DD']")));
		clickElement(driver.findElement(By.xpath("")));
	}
	
	public void iSelectStartDateforBundle_Price1ContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
		clickElement(driver.findElement(By.xpath("")));
	}
	
	public void iSelectEndDateforBundle_Price1ContractsPage(int num) {
		clickElement(driver.findElement(By.xpath("//form//div[@class='start-date-end-date-block col-sm-9']//preceding::label[text()='Enter the start date']")));
		clickElement(driver.findElement(By.xpath("")));
	}
	
	public void iSelectBundle1eOnCreateContratsPageUnderPayorOrganization(String text) {
		iFillInText(driver.findElement(By.xpath("//div[text()='Select a Bundle']")), text);
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
}

}

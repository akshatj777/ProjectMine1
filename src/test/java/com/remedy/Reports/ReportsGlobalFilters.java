package com.remedy.Reports;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass; 

public class ReportsGlobalFilters extends BaseClass{

	public ReportsGlobalFilters(WebDriver driver) {
		
		super(driver);
	}

	public void iVerifyReportHeaderInGlobalFilter(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".ng-binding.ng-scope")), text);
	}
	
	public void iSeeUnderGlobalFilterAppliedCount(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".pull-left.ng-binding")), text);
	}
	
	public void iClickOnSummaryButtonUnderGlobalFilter(){
		clickElement(driver.findElement(By.cssSelector(".toggle-page-summary.ng-binding")));
	}
	
	public void iVerifyFilterAppearingUnderGlobalFilter(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='"+text+"']")), text);
	}
	
	public void iSeeAppearingUnderFilterNameOfGlobalFilters(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='ng-binding'][text()='"+text+"']")), text);
	}
	
	public void iClickOnCheckboxForGlobalFilters(String text){
		clickElement(driver.findElement(By.xpath("//span[@class='ng-binding'][text()='"+text+"']/preceding-sibling::i")));
	}
	
	public void iShouldSeeUnderAppliedFilterOfGlobalFilter(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='"+text+"']")), text);
	}
	
	public void iClickOnApplyFilterButton(){
		clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
	}
	
	public void iClickOnReportTileOnTopOfReportPage(String report,String tile){
		clickElement(driver.findElement(By.xpath("//li[button[text()='"+tile+"']] //span[text()='"+report+"']")));
	}
}

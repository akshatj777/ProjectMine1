package com.remedy.Episode2;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PatientExport extends BaseClass {

	public PatientExport(WebDriver driver) {
		super(driver);
	}

	public void iVerifyExportBesidePatientCount(String export){
		verifyTextForElement(driver.findElement(By.cssSelector(".export-link>a")), export);
	}
	
	public void iSeeExportDrawerIsAppearingOnClickingExportButton(){
		isElementVisible(driver.findElement(By.cssSelector(".export-drawer.ng-scope")));
	}
	
	public void iShouldStillSeeExportButtonAfterExportDraweropened(String text){
		isElementVisible(driver.findElement(By.cssSelector(".export-link>a")));
	}
	
	public void iVerifyPatientAndExportInSameAllignment(){
		isElementVisible(driver.findElement(By.cssSelector(".row.controls-bar.ng-scope>div:nth-child(1)")));
	}
	
	public void iVerifyButtonIsAppearingInExportDrawerBox(String button){
		isElementVisible(driver.findElement(By.xpath("//div[@class='export-footer container-fluid']//button[text()='"+button+"']")));
	}
	
	public void iSeeOpenedDrawerOnExportDrawerBox(){
		isElementVisible(driver.findElement(By.cssSelector(".export-content.container-fluid")));
	}
	
	public void iVerifySearchAreaOnExportDrawerBox(){
		isElementVisible(driver.findElement(By.cssSelector(".filter-bar-active-filters.filter-scroll")));
	}
	
	public void iVerifyFiltersAppearingInExportDrawerBox(){
		isElementVisible(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid")));
	}
	
	public void iClickOnCancelButtonOnExportDrawerBox(){
		clickElement(driver.findElement(By.xpath("//div[@class='export-footer container-fluid']//button[text()='Cancel']")));
	}
	
	public void iVerifyFiltersAppearingOnClickingOnFiltersOnPatientPage(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".btn.btn-tertiary.open")), text);
	}
	
	public void iVerifyColumnListAppearingOnExportDrawerBox(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>span")), text);
	}
	
	public void iVerifyColumnListTextAppearingOnExportDrawerBox(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='"+text+"']")), text);
	}
	
	public void iVerifyCheckboxBesideColumnListInExportDrawerBox(){
		isElementVisible(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>i")));
	}
	
}

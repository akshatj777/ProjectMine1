package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class PatientExport extends BaseClass {

	public PatientExport(WebDriver driver) {
		super(driver);
	}

	public void iVerifyExportBesidePatientCount(String export) {
		verifyTextForElement(driver.findElement(By.cssSelector(".export-link>a")), export);
	}

	public void iSeeExportDrawerIsAppearingOnClickingExportButton() {
		isElementVisible(driver.findElement(By.cssSelector(".export-drawer.ng-scope")));
	}

	public void iShouldStillSeeExportButtonAfterExportDraweropened(String text) {
		isElementVisible(driver.findElement(By.cssSelector(".export-link>a")));
	}

	public void iVerifyPatientAndExportInSameAllignment() {
		isElementVisible(driver.findElement(By.cssSelector(".row.controls-bar.ng-scope>div:nth-child(1)")));
	}

	public void iVerifyButtonIsAppearingInExportDrawerBox(String button) {
		isElementVisible(driver.findElement(By.xpath("//div[@class='export-footer container-fluid']//button[text()='" + button + "']")));
	}

	public void iSeeOpenedDrawerOnExportDrawerBox() {
		isElementVisible(driver.findElement(By.cssSelector(".export-content.container-fluid")));
	}

	public void iVerifySearchAreaOnExportDrawerBox() {
		isElementVisible(driver.findElement(By.cssSelector(".filter-bar-active-filters.filter-scroll")));
	}

	public void iVerifyFiltersAppearingInExportDrawerBox() {
		isElementVisible(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid")));
	}

	public void iClickOnCancelButtonOnExportDrawerBox() {
		clickElement(driver.findElement(By.xpath("//div[@class='export-footer container-fluid']//button[text()='Cancel']")));
	}

	public void iVerifyFiltersAppearingOnClickingOnFiltersOnPatientPage(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".btn.btn-tertiary.open")), text);
	}

	public void iVerifyColumnListAppearingOnExportDrawerBox(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>span")), text);
	}

	public void iVerifyColumnListTextAppearingOnExportDrawerBox(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='" + text + "']")), text);
	}

	public void iVerifyCheckboxBesideColumnListInExportDrawerBox() {
		isElementVisible(driver.findElement(By.cssSelector(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>i")));
	}

	public void iVerifyErrorPopClickinOnExport() {
		isElementVisible(driver.findElement(By.xpath("//div[@title='Error']")));
	}

	public void iVerifyCloseButtonOnErrorPage() {
		isElementVisible(driver.findElement(By.cssSelector("i.alert-close-icon")));
	}

	public void iClickOnCloseOnErrorForExportPatientList() {
		clickElement(driver.findElement(By.xpath("//div[@class='tooltip-alert alert alert-danger alert-dismissible']//i[@class='alert-close-icon']")));
	}

	public void iVerifyAppliedFilterOnExportDrawerBox(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".margin-left.ng-binding")), text);
	}

	public void iClickOnAppliedFilterOnExportDrawerBox() {
		clickElement(driver.findElement(By.cssSelector(".margin-left.ng-binding")));
	}

	public void iClickOnExportLinkBesideCount() {
		clickElement(driver.findElement(By.cssSelector(".export-link>a")));
	}
}

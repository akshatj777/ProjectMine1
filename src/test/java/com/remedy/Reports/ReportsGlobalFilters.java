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
		clickElement(driver.findElement(By.xpath("//span[@class='ng-binding'][text()='"+text+"']")));
	}
	
	public void iShouldSeeUnderParticipantAppliedFilterOfGlobalFilter(String text){
		verifyTextForElementfromList(".margin-left.ng-binding", text);
	}
	
	public void iShouldSeeUnderEpisodeInitiatorAppliedFilterOfGlobalFilter(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='margin-left ng-binding']")), text);
	}
	
	public void iShouldSeeUnderAnchorFacilityAppliedFilterOfGlobalFilter(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='margin-left ng-binding']")), text);
	}
	
	public void iClickOnApplyFilterButton(){
		clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
	}
	
	public void iClickOnReportTileOnTopOfReportPage(String report,String tile){
		clickElement(driver.findElement(By.xpath("//li[button[text()='"+tile+"']] //button[span[text()='"+report+"']]")));
	}
	
	public void iMovetoElementToClickOnReportTileOnTopOfReportPage(String moveToElementLocator){
		moveToTheElement(driver.findElement(By.xpath(moveToElementLocator)));
	}
	
	public void iSeeReportTileOnTopOfReportPage(String report,String tile){
		isElementVisible(driver.findElement(By.xpath("//li[button[text()='"+tile+"']] //button[span[text()='"+report+"']]")));
	}
	
	public void iVerifyParticipantIDAppearingInSelectedFilter(String participantid){
		verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Episode Initiator].[Participant ID]']/span")),participantid);
	}
	
	public void iVerifyBPIDAppearingInSelectedFilter(String bpid){
		verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Episode Initiator].[BPID]']/span")),bpid);
	}
	
	public void iVerifyCCNAppearingInSelectedFilter(String ccn){
		verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Dashboard - Anchor Facility].[CCN]']/span")),ccn);
	}
	
	public void iClickOnReportTileOnTheTopOfReportsPage(){
		clickElement(driver.findElement(By.cssSelector(".flex-item.order-2.btn.logo.valentino-icon-reports")));
	}
	
	public void iClickOnCrossMarkForSelectedParticipantFilter(String participant){
		clickElement(driver.findElement(By.xpath("//span[text()='Participant: "+participant+"']/preceding-sibling::i")));
	}
	
	public void iClickOnCrossMarkForSelectedEpisodeInitiatorFilter(String episodeinitiator){
		clickElement(driver.findElement(By.xpath("//span[text()='Episode Initiator: "+episodeinitiator+"']/preceding-sibling::i")));
	}
	
	public void iClickOnCrossMarkForSelectedAnchorFacilityFilter(String anchorfacility){
		clickElement(driver.findElement(By.xpath("//span[text()='Anchor Facility: "+anchorfacility+"']/preceding-sibling::i")));
	}
	
	public void iClickOnClearButtonToClearSelectedFilter(){
		clickElement(driver.findElement(By.xpath("//button[text()='Clear']")));
	}
	
	public void iClickOnSearchIconForGlobalFilter(String text){
		clickElement(driver.findElement(By.xpath("//div[h5[span[text()='"+text+"']]]//div[@class='elastic-input-wrapper']")));
	}
	
	public void iSearchUnderFilterOnGlobalFilter(String search,String filter){
		iFillInText(driver.findElement(By.xpath("//div[h5[span[text()='"+filter+"']]] //input[@placeholder='Search "+filter+"']")), search);
	}
	
	public void iClickOnTileOnTheTopNavigationOfReportsPage(String tile){
		clickElement(driver.findElement(By.xpath("//button[text()='"+tile+"']")));
	}
}

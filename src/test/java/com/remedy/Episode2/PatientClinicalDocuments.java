package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PatientClinicalDocuments extends BaseClass {

	public PatientClinicalDocuments(WebDriver driver) {
        super(driver);
    }

	public void IverifythesearchedpatienthastheCARLcompletetextornot() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope > strong")));
	}

	public void IclickonthesearchedpatientwhichhastheCARLtextinit(String lastname) {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'"+lastname+"')]")));
		
	}

	public void IclickontheClinicalDocumentstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Clinical Documents')]")));
	}

	public void IverifytheCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'CARL')]")));
	}

	public void IverifythatifuserhassavedaformbutnotsubmittedstatusshouldbereadasInProgress() {
	
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'In Progress')]")));
		}

	public void IverifythatInprogressstatusshouldbeinpurplecolorwithColorcodeAD77B3() {
		// TODO Auto-generated method stub
		
		isElementVisible(driver.findElement(By.cssSelector(" span.status-tag.status-tag-1")));
		String value=driver.findElement(By.cssSelector(" span.status-tag.status-tag-1")).getCssValue("background-color");
		Assert.assertTrue(value.equals("ad77b3"));
	}

	public void IclickonthecompleteCARLonthePatientSummary() {
		// TODO Auto-generated method stub
	     
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-primary.ng-binding.ng-scope")));
	}

	public void IsaveandcontinuethecompleteCARLform() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-primary.ng-binding.ng-scope")));
	}

	public void IverifythatifusersubmitsapatientformstatusshouldbereadasActive() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Active')]")));
	}

	public void IverifythatActivestatusshouldbeingreencolorwithColorcode4EB96F() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-2.active")));
		String value=driver.findElement(By.cssSelector(" span.status-tag.status-tag-2.active")).getCssValue("background-color");
		Assert.assertTrue(value.equals("4EB96F"));
	}

	public void IclickoncrossbuttontoclosethePatientSummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
		}

	public void IclickontheTransitionButtontoaddthenewepisode() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void IverifythatifpatienthashasaformedassignedthatisthesameasanexistingformthestatusofthealreadyexistingformshouldbereadasArchived() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Archived')]")));
	}
	
	public void IverifythatArchivedstatusshouldbeinGreycolorwithColorcode959595() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-3.active")));
		String value=driver.findElement(By.cssSelector(" span.status-tag.status-tag-3.active")).getCssValue("background-color");
		Assert.assertTrue(value.equals("959595"));
	}

	
	
	
	//Updated Table generic functions
	
	//span[contains(text(),'All')]
	public void Iverifythereshouldbefilterlinkonclinicaldocumentsection() {
		// TODO Auto-generated method stub
		
		isElementVisible(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button ")));
	}

	public void IclickontheALLTabonPatientpage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("div.tabbed-navbar-tabs > button:nth-child(1)")));
		
	}

	public void IverifyClinicalDocumentTableshouldcontainthefollowingsections() {
		// TODO Auto-generated method stub
		
		 List<String> actualcombolisttext = new ArrayList();
        List<WebElement> elementtexts = new ArrayList();
        List<String> requiredcombolisttext=new ArrayList();
        String[] expectedvalues={"Document","Status","Summary","Activity"};
        		
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
       
        elementtexts=driver.findElements(By.cssSelector("table > thead > tr "));
        
        for(WebElement elementtext:elementtexts )
        {
        actualcombolisttext.add(elementtext.getText());
      
          }
       
        verifyarraylist(requiredcombolisttext,actualcombolisttext);
             }
	}
	
	


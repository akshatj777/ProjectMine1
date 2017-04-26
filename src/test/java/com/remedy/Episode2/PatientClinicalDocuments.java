package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
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



	public void IcountthenumberofdocumentsthatappearintheclinicalDocuments() {
		// TODO Auto-generated method stub
		getElementCount("table > tbody");
	}

	public void Toverifytableshouldbesortedchronologicallybyactivitydatemostrecentfirst() {
		// TODO Auto-generated method stub
		int count=getElementCount("table > tbody");
		List<String> listtexts = new ArrayList<String>();
		listtexts.add(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > div > span.time.ng-binding")).getText());
		
		for(int i=2;i<=count;i++)
		{
			String text=driver.findElement(By.cssSelector("table > tbody > tr:nth-child("+i+") > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")).getText();
			listtexts.add(text);
		}
		
		}

	public void IverifythepresenceofSummarysectionoftheClinicalDocumenttable() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("div > div.ng-scope > table > thead > tr > th:nth-child(3)")));
		
	}

	public void IverifybodytextoftheNoteisappearinginthesummarysection() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.ellip")));
		
	}

	public void Iverifyforclinicalnoteandbaselinesummaryshouldbedisplayedupto2lines() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value=driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("line-height");
		Assert.assertTrue(value.equals("20px"));	
	}

	public void IverifyifsummaryislongerthanthecharacterlimitthenEllipsisthreedotsshouldshow() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value=driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("text-overflow");
		Assert.assertTrue(value.equals("ellipsis"));
	}

	public void Iverifyifanoteishavingattachmentanddonothaveanysummarythenattachmentcountshouldappearinthesummarysection() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("//p[contains(text(),'attachments')]")));
		System.out.println("^^^^^^The attached count is^^^^^^"+driver.findElement(By.cssSelector("//p[contains(text(),'attachments')]")).getText());
		
}

	public void Iverifyformsshouldnotdisplayanymessageinthesummarysectionanditshouldbegreyedoutblank() {
		// TODO Auto-generated method stub
		if(isElementVisible(driver.findElement(By.xpath("span[contains(text(),'CARL')]"))));
		{
			isElementVisible(driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell")));
			String value=driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell")).getCssValue("background-color");
			Assert.assertTrue(value.equals("transparent"));
		}
	}

	public void IclickontheTransitionstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
		}

	public void ThenIclickonaddanewtransitiontoaddanewepisode() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#btnNewTransition")));
		}

	public void Iclickondatepickerbuttontoselecttheadmitdate() {
		// TODO Auto-generated method stub
		WebElement element=driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate"));
		JavascriptExecutor js = (JavascriptExecutor)driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void Iclickonthedatefromthedatepickeronaddanewtransition() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.id("table > tbody > tr:nth-child(5) > td.day.active")));
		
	}

	public void Iselectthecaresettingvalueonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory","HHH - Hospital");
	}

	public void Iselectthecaretypevalueonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("bp_personbundle_bpadmissiontype_admitCareType","Inpatient");
	}

	public void Iselectthefacilityvalueonaddanewtransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#select2-drop-mask")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")),"Allentown");
		clickElement(driver.findElement(By.cssSelector("select2-result-label-1412")));
		
	}
	//a[contains(text(),'Diagnosis and DRG')]

	public void IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("//a[contains(text(),'Diagnosis and DRG')]")));
		
	}

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType","Working");
	}
	
	

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#select2-drop-mask")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")),"61");
		clickElement(driver.findElement(By.cssSelector("select2-result-label-1761")));
	}

	public void IswitchtoPatientTransitionsframe() {
		// TODO Auto-generated method stub
		swithToFrame("//*[@id='iFrameEC2PatientTransitions']");
	}

	public void Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection() {
		// TODO Auto-generated method stub
		
	}
	
	
	}

	
	
	
		

	
	
	


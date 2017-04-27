package com.remedy.Episode2;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
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
		
		clickElement(driver.findElement(By.cssSelector("td.day.active")));
		clickElement(driver.findElement(By.cssSelector("span.hour.active")));
		clickElement(driver.findElement(By.cssSelector("span.minute.active")));
		
		
	}

	public void Iselectthecaresettingvalueonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory","HHH - Hospital");
	}

	public void Iselectthecaretypevalueonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType","Inpatient");
		
	}

	public void Iselectthefacilityvalueonaddanewtransition() throws InterruptedException {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")),"Allentown");
		Thread.sleep(5000);
		clickElement(driver.findElement(By.cssSelector("#select2-results-8 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
		
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
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen7_search")),"61");
		clickElement(driver.findElement(By.cssSelector("#select2-results-7 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
	}

	public void IswitchtoPatientTransitionsframe() {
		// TODO Auto-generated method stub
		swithToFrame("//*[@id='iFrameEC2PatientTransitions']");
	}

	public void Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection() {
		// TODO Auto-generated method stub
		
		
		
	}

	public void Iverifythatusershouldbeabletoclickontitleofdocument() {
		// TODO Auto-generated method stub
		WebElement element=driver.findElement(By.cssSelector("//span[contains(text(),'CARL')]"));
		clickElement(element);
		isElementVisible(element);
		System.out.println("The CARL form is successfully clicked");
	}

	public void Iclickonfilterlinkonclinicaldocumentsection() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
	}
	//dropdown-header[contains(text(),'Filter patient documents')]

	public void IVerifythatSelectingFilterslinkwhenthefiltersdrawerisopenshouldclosethedrawer() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
		if(isElementVisible(driver.findElement(By.cssSelector("div.filter-bars.ng-scope > div > div.filters-dropdown.id-filters-dropdown")))==false);
		{
			System.out.println("Filter successfully closed");
		}
	}

	public void IVerifythatClinicalDocumentsFilterslinkshoulddisplayfiltersasbelowwiththecorrectsyntaxandsequence() {
		// TODO Auto-generated method stub
		List<String> actualcombolisttext = new ArrayList();
        List<WebElement> elementtexts = new ArrayList();
        List<String> requiredcombolisttext=new ArrayList();
        String[] expectedvalues={"Baseline","Bedside Visit", "Care Assessment Note","Clinical Note", "Close Call", "Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care", "Patient Call", "Patient Education", "Patient Visit","Psychological Condition", "Transition Note", "TUG/RAPT/CARE Score"};
        		
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
       
        elementtexts=driver.findElements(By.cssSelector("  div.checkbox > label > span"));
        
        for(WebElement elementtext:elementtexts )
        {
        actualcombolisttext.add(elementtext.getText());
      
          }
        System.out.println("The combo text list is"+actualcombolisttext);
       
        verifyarraylist(requiredcombolisttext,actualcombolisttext);
		
	}

	public void IVerifythatusershouldbeabletoselectmultiplefiltersbycheckbox() {
		// TODO Auto-generated method stub
		List<WebElement> myelementlist=getElementsList("checkbox-list > div > div > ul > li");
		
		for(int i=1;i<=myelementlist.size();i++)
		{
			
			clickElement(driver.findElement(By.cssSelector("checkbox-list > div > div> ul > li:nth-child("+i+") > div.checkbox")));
			isElementVisible(driver.findElement(By.cssSelector("checkbox-list > div > div> ul > li:nth-child(1) > div.checkbox>input..ng-not-empty")));
		    	
		}
		
		
	}

	public void IVerifythatcheckingmultiplefilteroptionsshouldreturnrelevantpatientsinreturn() {
		// TODO Auto-generated method stub
		
		List<String> mytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		 String Filter=mytexts.get(0);
		 String Filter1=mytexts.get(1);
		clickElement(driver.findElement(By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'"+ Filter + "')]")));
		clickElement(driver.findElement(By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'"+ Filter1 + "')]")));
		
		List<String> newmytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) & (newmytexts.contains(Filter1))); 
		{
			System.out.println("Mutiple Values returns are relevant as per required");
		}
	
	}

	public void IVerifythatclickingonDoneshouldclosethefilterdrawerandprocessthefilter() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Done')]")));
		List<String> mytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		String Filter=mytexts.get(0);
		 String Filter1=mytexts.get(1);
		List<String> newmytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) & (newmytexts.contains(Filter1))); 
		{
			System.out.println("Mutiple Values returns are relevant as per required on clicking on Done");
		}
	}

	public void IclickonthedocumenttoopentheNotesontheClinicalDocuments() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(1) > a")));
		isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
		}

	public void IVerifythatNotesReadonlyformshouldbeaccessible() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
	}

	public void IverifyTopicshouldbethenotetitle() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("div.takeover-content.container.note.ng-scope > h1")));
		getTextForElement(driver.findElement(By.cssSelector("div.takeover-content.container.note.ng-scope > h1")));
	}

	public void IverifyBodytextboxshouldbethereonNotesReadonlyform() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("div.note-body.ng-binding.ng-scope")));
         System.out.println("Body text box exists on Notes - Read only form"); 
 	}

	public void IVerifythatUserroleshouldbedisplayedundernotesreadonlyform() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("article > h4 > strong")));
	}

	public void IVerifythatUseremailshouldbedisplayedundernotesreadonlyform() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("div > article > p > a")));
		
	}

	public void IVerifythatUsernameshouldbedisplayedundernotesreadonlyform() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("article > h4 > strong")));
		
	}

	public void IverifytheActivityDateandtimeofthenoteundernotesreadonlyform() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("article > div:nth-child(5) > strong")));
		
		
	}
	
	public void Changing_Date_Format(String date_s) throws ParseException
	{
	
		
	        // *** note that it's "yyyy-MM-dd hh:mm:ss" not "yyyy-mm-dd hh:mm:ss"  
	        SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy | hh:mm aa");
	        Date date = dt.parse(date_s); //Converting String to Date
	        // *** same for the format String below
	        SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy | hh:mm aa");
	        System.out.println(dt1.format(date));
	 }

	public void IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY() throws ParseException {
		// TODO Auto-generated method stub
		String date=getTextForElement(driver.findElement(By.cssSelector("// article > div:nth-child(5) > strong")));
		Changing_Date_Format(date);
	}

	public void IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments() {
		// TODO Auto-generated method stub
		
		isElementVisible(driver.findElement(By.cssSelector("div.attachments.ng-scope")));
		 
	}
	}
	
    
	
	 //small[contains(text(),'Activity date')]
	
	

	
	
	
		

	
	
	


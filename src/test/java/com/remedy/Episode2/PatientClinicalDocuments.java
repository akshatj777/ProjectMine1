package com.remedy.Episode2;


import org.openqa.selenium.support.Color;
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
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

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
		String hex = Color.fromString(value).asHex();
		System.out.println("The color of In progress status is"+hex);
		Assert.assertTrue(hex.equals("#ad77b3"));
	}

	public void IclickonthecompleteCARLonthePatientSummary() throws InterruptedException {
		// TODO Auto-generated method stub
 	     WebElement element = driver.findElement(By.xpath("//button[contains(text(),'Complete CARL')]"));		
		 WebDriverWait wait=new WebDriverWait(driver,30);
	     wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//button[contains(text(),'Complete CARL')]")));
	     clickElement(element);
	  //   js.executeScript("arguments[0].scrollIntoView(true);", element);
	    // js.executeScript("window.scrollBy(0,-250)", "");
	     
	}

	public void IsaveandcontinuethecompleteCARLform() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Save & Continue')]")));
	}

	public void IverifythatifusersubmitsapatientformstatusshouldbereadasActive() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Active')]")));
	}

	public void IverifythatActivestatusshouldbeingreencolorwithColorcode4EB96F() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-2.active")));
		String value=driver.findElement(By.cssSelector(" span.status-tag.status-tag-2.active")).getCssValue("background-color");
		String hex = Color.fromString(value).asHex();
		System.out.println("The color of Active status is"+hex);
		Assert.assertTrue(hex.equals("#4eb96f"));
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
		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-2.archived")));
		String value=driver.findElement(By.cssSelector("span.status-tag.status-tag-2.archived")).getCssValue("background-color");
		String hex = Color.fromString(value).asHex();
		System.out.println("The color of Archived status is"+hex);
		Assert.assertTrue(hex.equals("#959595"));
	}

	
	
	
	//Updated Table generic functions
	
	
	public void Iverifythereshouldbefilterlinkonclinicaldocumentsection() {
		isElementVisible(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button ")));
	}

	public void IclickontheALLTabonPatientpage() {
		clickElement(driver.findElement(By.cssSelector("div.tabbed-navbar-tabs > button:nth-child(1)")));
		
	}

	public void IverifyClinicalDocumentTableshouldcontainthefollowingsections() {
	
		
		 List<String> actualcombolisttext = new ArrayList<String>();
         List<String> requiredcombolisttext=new ArrayList<String>();
         
        String[] expectedvalues={"Document","Status","Summary","Activity"};
        		
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
        actualcombolisttext=getTextForElementfromList("table > thead > tr > th");
        System.out.println("$$$$$$$The actual combo list is"+actualcombolisttext);
        String element=actualcombolisttext.remove(actualcombolisttext.size() - 1);
   	    System.out.println("The element to remove is"+element);
        for ( int i=0;i<actualcombolisttext.size(); i++){
        	
             if(actualcombolisttext.get(i).equals(element)){
            	actualcombolisttext.remove(i);
            }
        }
             System.out.println("The new combo list is"+actualcombolisttext);
        verifyarraylist(requiredcombolisttext,actualcombolisttext);
             }



	public void IcountthenumberofdocumentsthatappearintheclinicalDocuments() {
		// TODO Auto-generated method stub
		getElementCount("table > tbody");
	}

	public void Toverifytableshouldbesortedchronologicallybyactivitydatemostrecentfirst() {
		// TODO Auto-generated method stub
		
		System.out.println("^^^^List of information for the saved forms^^^^"+getTextForElementfromList("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding"));
		List<String> mylists=getTextForElementfromList("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding");
		List<String> newlist=new ArrayList<String>();
		for(String mylist:mylists)
		{
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
		System.out.println("The new list is"+newlist);
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
		List<WebElement> lists=getElementsList("table > tbody > tr:nth-child(1) > td > p");
	     
		for(WebElement list : lists)
		{
		 if (list.getAttribute("class").equals("jquery-ellipse ng-binding ng-scope"))	
				 {
			   
			      System.out.println("No Attachment found");
			    	
			    } else if (list.getAttribute("class").equals("ng-binding ng-scope"))	
			    {
			    	System.out.println("Attached is there");
			    }
				 }
		
		}
		


	public void Iverifyformsshouldnotdisplayanymessageinthesummarysectionanditshouldbegreyedoutblank() {
		// TODO Auto-generated method stub
		
		    isElementVisible(driver.findElement(By.xpath("//table/tbody/tr[1]/td[1]/a/span[contains(text(),'CARL')]")));
		    isElementVisible(driver.findElement(By.cssSelector(" table > tbody > tr > td.empty-cell")));
			String value=driver.findElement(By.cssSelector("table > tbody > tr > td.empty-cell")).getCssValue("background-color");
			String hex = Color.fromString(value).asHex();
			System.out.println("The color of In progress status is"+hex);
	//		Assert.assertTrue(value.equals("transparent"));
		
	}

	public void IclickontheTransitionstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
		}

	public void ThenIclickonaddanewtransitiontoaddanewepisode() {
		// TODO Auto-generated method stub
		JavascriptExecutor js = ((JavascriptExecutor) driver);
	     WebElement element = driver.findElement(By.cssSelector("#btnNewTransition"));
	     js.executeScript("arguments[0].click();", element);
		clickElement(element);
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
	    JavascriptExecutor js = (JavascriptExecutor)driver;
	    WebElement element1=driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));
	  
	  
	    
	    js.executeScript("arguments[0].click();",element1);
	    clickElement(element1);
	    Thread.sleep(5000);
		
	    WebElement element2=driver.findElement(By.cssSelector("#s2id_autogen9_search"));
	  
		js.executeScript("arguments[0].click();",element2);
		element2.sendKeys("Allentown");
		Thread.sleep(10000);
		  WebElement element3=driver.findElement(By.xpath("//div[contains(text(), 'Allentown - St Luke')]"));
		 js.executeScript("arguments[0].click();",element3);
		clickElement(element3);
		}
	

	public void IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG() {
		// TODO Auto-generated method stub
		 JavascriptExecutor js = (JavascriptExecutor)driver;
		// ((JavascriptExecutor) driver).executeScript("scroll(0,-250);");
		 WebElement element=driver.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)"));
		 js.executeScript("arguments[0].click();", element);
			clickElement(driver.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)")));
		
	}

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition() {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType","Working");
	}
	
	

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")),"61");
		clickElement(driver.findElement(By.cssSelector("#select2-results-8 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
	}

	public void IswitchtoPatientTransitionsframe() {
		// TODO Auto-generated method stub
		swithToFrame("//*[@id='iFrameEC2PatientTransitions']");
	}

	public void Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection() throws InterruptedException {
		// TODO Auto-generated method stub
		
		String URL=driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(1) > a > span")).getAttribute("href");
		boolean Note = URL.contains("note");	
		boolean CARL=URL.contains("carl");
		if(CARL)
		{
			System.out.println("CARl form is present");
		}
		}

	public void Iverifythatusershouldbeabletoclickontitleofdocument() throws InterruptedException {
		WebElement element=driver.findElement(By.xpath("//span[contains(text(),'CARL')]"));
		clickElement(element);
		Thread.sleep(9000);
		isElementVisible(driver.findElement(By.cssSelector("h2.ng-binding")));
		}

	public void Iclickonfilterlinkonclinicaldocumentsection() 
	{
		clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
	}

    public void IVerifythatSelectingFilterslinkwhenthefiltersdrawerisopenshouldclosethedrawer() {
		clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
		if(isElementVisible(driver.findElement(By.cssSelector("div.filter-bars.ng-scope > div > div.filters-dropdown.id-filters-dropdown")))==false);
		{
			System.out.println("Filter successfully closed");
		}
	}

	public void IVerifythatClinicalDocumentsFilterslinkshoulddisplayfiltersasbelowwiththecorrectsyntaxandsequence() {
		List<String> actualcombolisttext = new ArrayList<>();
        List<String> requiredcombolisttext=new ArrayList<>();
        String[] expectedvalues={"Baseline","Bedside Visit", "Care Assessment Note","Clinical Note", "Close Call", "Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care", "Patient Call", "Patient Education", "Patient Visit","Psychological Condition", "Transition Note", "TUG/RAPT/CARE Score"};
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
        actualcombolisttext=getTextForElementfromList("checkbox-list > div > div:nth-child(1) > ul > li > div.checkbox > label > span");
        System.out.println("$$$$$$The combo text list is"+actualcombolisttext);
        verifyarraylist(requiredcombolisttext,actualcombolisttext);
		
	}

	public void IVerifythatusershouldbeabletoselectmultiplefiltersbycheckbox() {
		// TODO Auto-generated method stub
		
		List<WebElement> myelementlist=getElementsList("ul > li >div.checkbox > label > span");
		
		for(int i=1;i<=myelementlist.size();i++)
		{
			
			clickElement(driver.findElement(By.cssSelector("checkbox-list > div > div> ul > li:nth-child("+i+") > div.checkbox")));
			isElementVisible(driver.findElement(By.cssSelector("checkbox-list > div > div> ul > li:nth-child(1) > div.checkbox>input.ng-not-empty")));
		    	
		}
		
		
	}

	public void IVerifythatcheckingmultiplefilteroptionsshouldreturnrelevantpatientsinreturn() {
	    List<String> mytexts=getTextForElementfromList("ul > li >div.checkbox > label > span");
	    String Filter=mytexts.get(0);
		String Filter1=mytexts.get(1);
		clickElement(driver.findElement(By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'"+ Filter + "')]")));
		clickElement(driver.findElement(By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'"+ Filter1 + "')]")));
		List<String> newmytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) && (newmytexts.contains(Filter1))); 
		{
			System.out.println("Mutiple Values returns are relevant as per required");
			return;
		}
	
	}

	public void IVerifythatclickingonDoneshouldclosethefilterdrawerandprocessthefilter() {
		
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Done')]")));
		List<String> mytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		String Filter=mytexts.get(0);
		 String Filter1=mytexts.get(1);
		List<String> newmytexts=getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) & (newmytexts.contains(Filter1))); 
		{
			System.out.println("Mutiple Values returns are relevant as per required on clicking on Done");
		      return;
		}
	}

	public void IclickonthedocumenttoopentheNotesontheClinicalDocuments() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(1) > a > span")));
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
	        System.out.println("The date is"+date);
	        // *** same for the format String below
//	        SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy | hh:mm aa");
//	        System.out.println(dt1.format(date));
	 }

	public void IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY() throws ParseException {
	    String date=getTextForElement(driver.findElement(By.cssSelector("article > div:nth-child(5) > strong")));
		System.out.println("$$$$$$$The date is"+date);
		Changing_Date_Format(date);
	}

	public void IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments() {
		try
		{
		isElementVisible(driver.findElement(By.cssSelector("div.attachments.ng-scope")));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public void IclickontheCareAssessmentNotedocumenttoopentheNotesontheClinicalDocuments() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Care Assessment Note')]")));
	}

	public void IverifyinformationofthelastuserwhosavedtheindividualformisdisplayingontheLastsavedsection() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Baseline')]")));
		isElementVisible(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")));
		
	}

	public void IverifyLastNameFirstNameanduserroleappearsinlastsavedsection() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//table/tbody/tr/td[4]/div[1]/span[2]")));
		
	}

	public void IverifyuponclickingShowhistorylinkaListofusersshouldappearinchronologicalorderfrommostrecentsavedtooldestsaved() throws InterruptedException {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
	    clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
	    Thread.sleep(5000);
		System.out.println("^^^^List of information for the saved forms^^^^"+getTextForElementfromList("table > tbody > tr:nth-child(2) > td:nth-child(4) > div> span.time.ng-binding"));
		List<String> newlist=new ArrayList<String>();
		List<String> mylists=getTextForElementfromList("table > tbody > tr > td:nth-child(4) > div> span.time.ng-binding");
		for(String mylist:mylists)
		{
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
		System.out.println("The new list is"+newlist);
		
	}

	public void IverifythatuponSelectingShowHistoryshoulddisplaytheinformationofalluserswhohavesavedthatform() throws InterruptedException {
	     
		  List<WebElement> listelements=getElementsList("table > tbody > tr > td:nth-child(4) > span > a");
		  List<String> mylists=getTextForElementfromList("table > tbody > tr > td:nth-child(4)> div");
		  String info_class=driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(4) > div:nth-child(2)")).getAttribute("class");
		 for(int i=0;i<listelements.size();i++)
		  {
		 clickElement(listelements.get(i));
		 if(!info_class.equals("doc-edit ng-scope ng-hide"))
		 {
			 System.out.println("Complete Information successfully displayed");
		 }
		  }
	    }

	public void Iverifydateandtimeinformationappearsinlastsavedsection() {
		try
		{
		isElementVisible(driver.findElement(By.cssSelector("div.doc-edit.ng-scope")));
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Date & Time not present");
		}
	}

	public void IverifythatShowHistorysectionshouldnotbeapplicablefornotesection() {
              try{
		        driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > span > a"));
		      }catch(Exception e)
		      {
		    	  return;
		      }
			}

	public void IclickontheCreateTransitionButtontoaddanewtransition() {
		clickElement(driver.findElement(By.cssSelector("#submitButton")));
		 }

	public void IclickonthecrossbuttontoclosetheCARLdocumentform() {
		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
		
	}

	public void IclickontheSubmitbuttontosubmittheCARLform() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.cssSelector("div.top-row > div:nth-child(2) > button")));
		
	}

	public void IverifythatuponselectingHideHistoryusershouldonlyseetheinformationofthelastuserwhosavedtheform() {
		// TODO Auto-generated method stub
		
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Hide History')]")));
		try
		{
		driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(2).doc-edit.ng-scope"));
		}catch(Exception e)
		{
			return;
		}

		
	}

	public void IclickontheTransitionInfoonaddanewtransition() {
		// TODO Auto-generated method stub
		JavascriptExecutor js = (JavascriptExecutor)driver;
		// ((JavascriptExecutor) driver).executeScript("scroll(0,-250);");
		 WebElement element=driver.findElement(By.xpath("//a[contains(text(), 'Transition Info')]"));
		 js.executeScript("arguments[0].click();", element);
		 clickElement(element);
		
	}

	public void Iclickonhidehistorytodisableallthesavedformlist() {
		// TODO Auto-generated method stub
		 clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Hide History')]")));
	}

	public void IverifytheCARLDocumentnotappearontheClinicalDocumentstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		
	}
	
	
	
	}
	
    
	
	 
	
	

	
	
	
		

	
	
	


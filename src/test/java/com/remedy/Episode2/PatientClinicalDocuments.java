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

		isElementVisible(
				driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope > strong")));
	}

	public void IclickonthesearchedpatientwhichhastheCARLtextinit(String lastname) {

		clickElement(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + lastname + "')]")));

	}

	public void IclickontheClinicalDocumentstabinthepatientsummaryPage() {

		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Clinical Documents')]")));
	}

	public void IverifytheCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage() {

		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'CARL')]")));
	}

	public void IverifythatifuserhassavedaformbutnotsubmittedstatusshouldbereadasInProgress() {

		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'In Progress')]")));
	}

	public void IverifythatInprogressstatusshouldbeinpurplecolorwithColorcodeAD77B3() {

		isElementVisible(driver.findElement(By.cssSelector(" span.status-tag.status-tag-1")));
		String value = driver.findElement(By.cssSelector(" span.status-tag.status-tag-1"))
				.getCssValue("background-color");
		Assert.assertTrue(value.equals("ad77b3"));
	}

	public void IclickonthecompleteCARLonthePatientSummary() {

		// JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector(".btn.btn-primary.ng-binding.ng-scope"));
		// js.executeScript("arguments[0].click();", element);
		// delay();
		clickElement(element);
		// delay();
	}

	public void IsaveandcontinuethecompleteCARLform() {

		clickElement(driver.findElement(By.cssSelector("button.btn.btn-primary.ng-binding.ng-scope")));
	}

	public void IverifythatifusersubmitsapatientformstatusshouldbereadasActive() {

		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Active')]")));
	}

	public void IverifythatActivestatusshouldbeingreencolorwithColorcode4EB96F() {

		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-2.active")));
		String value = driver.findElement(By.cssSelector(" span.status-tag.status-tag-2.active"))
				.getCssValue("background-color");
		Assert.assertTrue(value.equals("4EB96F"));
	}

	public void IclickoncrossbuttontoclosethePatientSummaryPage() {

		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IclickontheTransitionButtontoaddthenewepisode() {

		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void IverifythatifpatienthashasaformedassignedthatisthesameasanexistingformthestatusofthealreadyexistingformshouldbereadasArchived() {

		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Archived')]")));
	}

	public void IverifythatArchivedstatusshouldbeinGreycolorwithColorcode959595() {

		isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-3.active")));
		String value = driver.findElement(By.cssSelector(" span.status-tag.status-tag-3.active"))
				.getCssValue("background-color");
		Assert.assertTrue(value.equals("959595"));
	}

	public void Iverifythereshouldbefilterlinkonclinicaldocumentsection() {

		isElementVisible(driver.findElement(By.cssSelector(
				"div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button ")));
	}

	public void IclickontheALLTabonPatientpage() {

		clickElement(driver.findElement(By.cssSelector("div.tabbed-navbar-tabs > button:nth-child(1)")));

	}

	public void IverifyClinicalDocumentTableshouldcontainthefollowingsections() {

		List<String> actualcombolisttext = new ArrayList();
		List<WebElement> elementtexts = new ArrayList();
		List<String> requiredcombolisttext = new ArrayList();
		String[] expectedvalues = { "Document", "Status", "Summary", "Activity" };

		requiredcombolisttext.addAll(Arrays.asList(expectedvalues));

		elementtexts = driver.findElements(By.cssSelector("table > thead > tr > th "));

		for (WebElement elementtext : elementtexts) {
			actualcombolisttext.add(elementtext.getText());

		}

		for (int i = 0; i < actualcombolisttext.size(); i++) {
			String element = actualcombolisttext.remove(actualcombolisttext.size() - 1);
			if (actualcombolisttext.get(i).equals(element)) {
				actualcombolisttext.remove(i);
			}
		}

		verifyarraylist(requiredcombolisttext, actualcombolisttext);
	}

	public void IcountthenumberofdocumentsthatappearintheclinicalDocuments() {

		getElementCount("table > tbody");
	}

	public void Toverifytableshouldbesortedchronologicallybyactivitydatemostrecentfirst() {

		System.out.println("^^^^List of information for the saved forms^^^^" + getTextForElementfromList(
				"table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding"));
		List<String> mylists = getTextForElementfromList(
				"table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding");
		List<String> newlist = new ArrayList<String>();
		for (String mylist : mylists) {
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
		System.out.println("The new list is" + newlist);
	}

	public void IverifythepresenceofSummarysectionoftheClinicalDocumenttable() {

		isElementVisible(
				driver.findElement(By.cssSelector("div > div.ng-scope > table > thead > tr > th:nth-child(3)")));

	}

	public void IverifybodytextoftheNoteisappearinginthesummarysection() {

		isElementVisible(driver.findElement(By.cssSelector("span.ellip")));

	}

	public void Iverifyforclinicalnoteandbaselinesummaryshouldbedisplayedupto2lines() {

		isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value = driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("line-height");
		Assert.assertTrue(value.equals("20px"));
	}

	public void IverifyifsummaryislongerthanthecharacterlimitthenEllipsisthreedotsshouldshow() {

		isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value = driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("text-overflow");
		Assert.assertTrue(value.equals("ellipsis"));
	}

	public void Iverifyifanoteishavingattachmentanddonothaveanysummarythenattachmentcountshouldappearinthesummarysection() {

		List<WebElement> lists = getElementsList("table > tbody > tr:nth-child(1) > td > p");

		for (WebElement list : lists) {
			if (list.getAttribute("class").equals("jquery-ellipse ng-binding ng-scope")) {

				System.out.println("No Attachment found");

			} else if (list.getAttribute("class").equals("ng-binding ng-scope")) {
				System.out.println("Attached is there");
			}
		}

	}

	public void Iverifyformsshouldnotdisplayanymessageinthesummarysectionanditshouldbegreyedoutblank() {

		if (isElementVisible(driver.findElement(By.xpath("span[contains(text(),'CARL')]"))))
			;
		{
			isElementVisible(driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell")));
			String value = driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell"))
					.getCssValue("background-color");
			Assert.assertTrue(value.equals("transparent"));
		}
	}

	public void IclickontheTransitionstabinthepatientsummaryPage() {

		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void ThenIclickonaddanewtransitiontoaddanewepisode() {

		JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector("#btnNewTransition"));
		js.executeScript("arguments[0].click();", element);
		clickElement(element);
	}

	public void Iclickondatepickerbuttontoselecttheadmitdate() {

		WebElement element = driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void Iclickonthedatefromthedatepickeronaddanewtransition() {

		clickElement(driver.findElement(By.cssSelector("td.day.active")));
		clickElement(driver.findElement(By.cssSelector("span.hour.active")));
		clickElement(driver.findElement(By.cssSelector("span.minute.active")));
	}

	public void Iselectthecaresettingvalueonaddanewtransition() {

		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory", "HHH - Hospital");
	}

	public void Iselectthecaretypevalueonaddanewtransition() {

		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", "Inpatient");

	}

	public void Iselectthefacilityvalueonaddanewtransition() throws InterruptedException {

		JavascriptExecutor js = (JavascriptExecutor) driver;
		WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));

		js.executeScript("arguments[0].click();", element1);
		clickElement(element1);
		Thread.sleep(5000);

		WebElement element2 = driver.findElement(By.cssSelector("#s2id_autogen9_search"));

		js.executeScript("arguments[0].click();", element2);
		element2.sendKeys("Allentown");
		Thread.sleep(10000);
		WebElement element3 = driver.findElement(By.xpath("//div[contains(text(), 'Allentown - St Luke')]"));
		js.executeScript("arguments[0].click();", element3);
		clickElement(element3);
	}

	public void IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG() {

		JavascriptExecutor js = (JavascriptExecutor) driver;

		WebElement element = driver
				.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)"));
		js.executeScript("arguments[0].click();", element);
		clickElement(driver
				.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)")));

	}

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition() {

		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType", "Working");
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition() {

		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")), "61");
		clickElement(driver.findElement(By.cssSelector(
				"#select2-results-8 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
	}

	public void IswitchtoPatientTransitionsframe() {

		swithToFrame("//iframe[@class='not-showing ng-scope']");
	}

	public void IswitchtoPatientCareTeamframe() {

		swithToFrame("//iframe[@class='not-showing ng-scope']");
	}

	public void Iverifythatusershouldbeabletoclickontitleofdocument() {

		WebElement element = driver.findElement(By.cssSelector("//span[contains(text(),'CARL')]"));
		clickElement(element);
		isElementVisible(element);
		System.out.println("The CARL form is successfully clicked");
	}

	public void Iclickonfilterlinkonclinicaldocumentsection() {

		clickElement(driver.findElement(By.cssSelector(
				"div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
	}

	public void IVerifythatSelectingFilterslinkwhenthefiltersdrawerisopenshouldclosethedrawer() {

		clickElement(driver.findElement(By.cssSelector(
				"div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
		if (isElementVisible(driver.findElement(
				By.cssSelector("div.filter-bars.ng-scope > div > div.filters-dropdown.id-filters-dropdown"))) == false)
			;
		{
			System.out.println("Filter successfully closed");
		}
	}

	public void IVerifythatClinicalDocumentsFilterslinkshoulddisplayfiltersasbelowwiththecorrectsyntaxandsequence() {

		List<String> actualcombolisttext = new ArrayList();
		List<WebElement> elementtexts = new ArrayList();
		List<String> requiredcombolisttext = new ArrayList();
		String[] expectedvalues = { "Baseline", "Bedside Visit", "Care Assessment Note", "Clinical Note", "Close Call",
				"Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care",
				"Patient Call", "Patient Education", "Patient Visit", "Psychological Condition", "Transition Note",
				"TUG/RAPT/CARE Score" };

		requiredcombolisttext.addAll(Arrays.asList(expectedvalues));

		elementtexts = driver.findElements(By.cssSelector("ul > li >div.checkbox > label > span"));

		for (WebElement elementtext : elementtexts) {
			actualcombolisttext.add(elementtext.getText());

		}
		System.out.println("The combo text list is" + actualcombolisttext);

		verifyarraylist(requiredcombolisttext, actualcombolisttext);

	}

	public void IVerifythatusershouldbeabletoselectmultiplefiltersbycheckbox() {

		List<WebElement> myelementlist = getElementsList("ul > li >div.checkbox > label > span");

		for (int i = 1; i <= myelementlist.size(); i++) {

			clickElement(driver.findElement(
					By.cssSelector("checkbox-list > div > div> ul > li:nth-child(" + i + ") > div.checkbox")));
			isElementVisible(driver.findElement(By
					.cssSelector("checkbox-list > div > div> ul > li:nth-child(1) > div.checkbox>input.ng-not-empty")));

		}

	}

	public void IVerifythatcheckingmultiplefilteroptionsshouldreturnrelevantpatientsinreturn() {

		List<String> mytexts = getTextForElementfromList("ul > li >div.checkbox > label > span");
		System.out.println("****The list of text****" + mytexts);
		String Filter = mytexts.get(0);
		String Filter1 = mytexts.get(1);
		clickElement(driver.findElement(
				By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'" + Filter + "')]")));
		clickElement(driver.findElement(
				By.xpath("//checkbox-list/div/div[1]/ul/li/div[2]/label/span[contains(text(),'" + Filter1 + "')]")));

		List<String> newmytexts = getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) && (newmytexts.contains(Filter1)))
			;
		{
			System.out.println("Mutiple Values returns are relevant as per required");
		}

	}

	public void IVerifythatclickingonDoneshouldclosethefilterdrawerandprocessthefilter() {

		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Done')]")));
		List<String> mytexts = getTextForElementfromList("table > tbody > tr > td> a > span");
		String Filter = mytexts.get(0);
		String Filter1 = mytexts.get(1);
		List<String> newmytexts = getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) & (newmytexts.contains(Filter1)))
			;
		{
			System.out.println("Mutiple Values returns are relevant as per required on clicking on Done");
		}
	}

	public void IclickonthedocumenttoopentheNotesontheClinicalDocuments() {

		clickElement(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(1) > a")));
		isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
	}

	public void IVerifythatNotesReadonlyformshouldbeaccessible() {

		isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
	}

	public void IverifyTopicshouldbethenotetitle() {

		isElementVisible(driver.findElement(By.cssSelector("div.takeover-content.container.note.ng-scope > h1")));
		getTextForElement(driver.findElement(By.cssSelector("div.takeover-content.container.note.ng-scope > h1")));
	}

	public void IverifyBodytextboxshouldbethereonNotesReadonlyform() {

		isElementVisible(driver.findElement(By.cssSelector("div.note-body.ng-binding.ng-scope")));
		System.out.println("Body text box exists on Notes - Read only form");
	}

	public void IVerifythatUserroleshouldbedisplayedundernotesreadonlyform() {

		isElementVisible(driver.findElement(By.cssSelector("article > h4 > strong")));
	}

	public void IVerifythatUseremailshouldbedisplayedundernotesreadonlyform() {

		isElementVisible(driver.findElement(By.cssSelector("div > article > p > a")));

	}

	public void IVerifythatUsernameshouldbedisplayedundernotesreadonlyform() {

		isElementVisible(driver.findElement(By.cssSelector("article > h4 > strong")));

	}

	public void IverifytheActivityDateandtimeofthenoteundernotesreadonlyform() {

		isElementVisible(driver.findElement(By.cssSelector("article > div:nth-child(5) > strong")));

	}

	public void Changing_Date_Format(String date_s) throws ParseException {

		// *** note that it's "yyyy-MM-dd hh:mm:ss" not "yyyy-mm-dd hh:mm:ss"
		SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy | hh:mm aa");
		Date date = dt.parse(date_s); // Converting String to Date
		// *** same for the format String below
		SimpleDateFormat dt1 = new SimpleDateFormat("MM/dd/yyyy | hh:mm aa");
		System.out.println(dt1.format(date));
	}

	public void IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY() throws ParseException {

		String date = getTextForElement(driver.findElement(By.cssSelector("// article > div:nth-child(5) > strong")));
		Changing_Date_Format(date);
	}

	public void IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments() {

		isElementVisible(driver.findElement(By.cssSelector("div.attachments.ng-scope")));

	}

	public void IclickontheCareAssessmentNotedocumenttoopentheNotesontheClinicalDocuments() {

		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Care Assessment Note')]")));
	}

	public void IverifyinformationofthelastuserwhosavedtheindividualformisdisplayingontheLastsavedsection() {

		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Baseline')]")));
		isElementVisible(driver.findElement(By.cssSelector(
				"table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")));

	}

	public void IverifyLastNameFirstNameanduserroleappearsinlastsavedsection() {

		isElementVisible(driver.findElement(
				By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span")));

	}

	public void IverifyuponclickingShowhistorylinkaListofusersshouldappearinchronologicalorderfrommostrecentsavedtooldestsaved()
			throws InterruptedException {

		isElementVisible(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		Thread.sleep(5000);
		System.out.println("^^^^List of information for the saved forms^^^^" + getTextForElementfromList(
				"table > tbody > tr:nth-child(2) > td:nth-child(4) > div> span.time.ng-binding"));
		List<String> newlist = new ArrayList<String>();
		List<String> mylists = getTextForElementfromList(
				"table > tbody > tr:nth-child(2) > td:nth-child(4) > div> span.time.ng-binding");
		for (String mylist : mylists) {
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
		System.out.println("The new list is" + newlist);

	}

	public void IverifythatuponSelectingShowHistoryshoulddisplaytheinformationofalluserswhohavesavedthatform()
			throws InterruptedException {

		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		Thread.sleep(5000);
		List<String> mylists = getTextForElementfromList("table > tbody > tr:nth-child(2) > td:nth-child(4)>div");
		System.out.println("The list is" + mylists);

	}

	public void Iverifydateandtimeinformationappearsinlastsavedsection() {

		isElementVisible(driver.findElement(By.cssSelector(
				"table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")));
	}

	public void IverifythatShowHistorysectionshouldnotbeapplicablefornotesection() {

		if (isElementVisible(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(2) > td.empty-cell"))))
			;
		{
			isElementVisible(driver.findElement(By.cssSelector("//a[not(contains(text(),'Show History'))]")));

		}
	}
	
	public void Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection() {
		
	}

	public void IclickontheCreateTransitionButtontoaddanewtransition() {

		clickElement(driver.findElement(By.cssSelector("#submitButton")));
	}

	public void IclickonthecrossbuttontoclosetheCARLdocumentform() {

		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));

	}

	public void IclickontheSubmitbuttontosubmittheCARLform() {

		clickElement(driver.findElement(By.cssSelector("div.top-row > div:nth-child(2) > button")));

	}

	public void IverifythatuponselectingHideHistoryusershouldonlyseetheinformationofthelastuserwhosavedtheform() {

		clickElement(driver.findElement(By.cssSelector("//a[contains(text(),'Hide History')]")));
		if (driver.findElement(By.cssSelector(" table > tbody > tr > td:nth-child(4) > div:nth-child(2)"))
				.getAttribute("class").equals("doc-edit ng-scope ng-hide"))
			;
		{
			System.out.println("Userseestheinformationofthelastuserwhosavedtheform");
		}

	}

	public void IclickontheTransitionInfoonaddanewtransition() {

		JavascriptExecutor js = (JavascriptExecutor) driver;
		// ((JavascriptExecutor) driver).executeScript("scroll(0,-250);");
		WebElement element = driver.findElement(By.xpath("//a[contains(text(), 'Transition Info')]"));
		js.executeScript("arguments[0].click();", element);
		clickElement(element);

	}

	public void Iclickonhidehistorytodisableallthesavedformlist() {

		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Hide History')]")));
	}

}

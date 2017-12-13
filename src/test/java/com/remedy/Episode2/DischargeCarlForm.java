package com.remedy.Episode2;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.stream.Collectors;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.Color;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.baseClass.BaseClass;
import com.remedy.resources.DriverScript;

public class DischargeCarlForm extends BaseClass {

	public final static DateFormat df = new SimpleDateFormat("dd");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);
	private String CHAR_LIST = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private static final int RANDOM_STRING_LENGTH = 5;
	private static String firstname  = null;
	private static String lastname  = null;
	private static String final_ssn  = null;
	String BaseURL=DriverScript.Config.getProperty("ECBaseUrl");
	
	
	public DischargeCarlForm(WebDriver driver) {
		super(driver);
	}
	
	public void IVerifySubtitleUnderDischargeSectionOnDishargeTabOfTheCarlForm(String text) {
		boolean value = isElementPresentOnPage(By.xpath("//h2[text()='"+text+"']"));
		Assert.assertTrue(value);
	}
	
	public void IVerifyRecommendationUnderDischargeSectionOnDishargeTabOfTheCarlForm(String text) {
		boolean value = isElementPresentOnPage(By.xpath("//div//p[contains(text(),'"+text+"')]"));
		Assert.assertTrue(value);
	}
	
	public void IVerifySubFormFieldUnderRecommendationOnDischargeSectionOnCarlForm(String subForm) {
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//label[contains(text(),'"+subForm+"')]")));	
	}
	
	public void IVerifySubFormFieldNotAppearingUnderRecommendationOnDischargeSectionOnCarlForm(String subForm) {
		Assert.assertFalse(isElementPresentOnPage(By.xpath("//label[contains(text(),'"+subForm+"')]")));	
	}
	
	public void IClickOnSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(String text) {
		clickElement(driver.findElement(By.xpath("//label[text()='"+text+"']/preceding-sibling::div")));
	}
	
	public void ISelectOptionFromSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(String dropdown, String subForm) {
		longDelay();
		iWillWaitToSee(By.xpath("//label[text()='"+subForm+"']/preceding-sibling::div//div[text()='"+dropdown+"']"));
		clickElement(driver.findElement(By.xpath("//label[text()='"+subForm+"']/preceding-sibling::div//div[text()='"+dropdown+"']")));
	}
	
	public void IVerifyDoneButtonIsDisabledUnderSubFormOnDischargeSectionOnCarlForm() {
		Assert.assertFalse(driver.findElement(By.xpath("//button[text()='Done']")).isEnabled());		
	}
	
	public void IVerifyDoneButtonIsEnabledUnderSubFormOnDischargeSectionOnCarlForm() {
		Assert.assertTrue(driver.findElement(By.xpath("//button[text()='Done']")).isEnabled());		
	}
	
	public void IVerifyFirstQuestionUnderDischargeSectionOnCarlForm(String text) {
		verifyTextForElement(driver.findElement(By.xpath(("//form[@class='carl-interdisciplinary ng-pristine ng-valid ng-scope ng-valid-maxlength']/strong"))),text);	
	}
	
	public void IVerifyRadioOptionForFirstQuestionUnderDischargeSectionOnCarlForm(String radio, String text) {
		isElementPresentOnPage(By.xpath("//strong[text()='"+text+"']/parent::form//div[@class='radio ng-not-empty ng-valid']//span[text()='"+radio+"']"));
	}
	
	public void IVerifyAdditionalCommentsSectionUnderDischargeOnCarlForm() {
		isElementPresentOnPage(By.xpath("//label[text()='Additional Comments']/preceding-sibling::div//textarea"));
	}
	
	public void IVerifySecondQuestionUnderDischargeSectionOnCarlForm(String text) {
		verifyTextForElement(driver.findElement(By.xpath(("//div[@class='disagreement-section ng-scope']/strong"))),text);	
	}
	
	public void IVerifyDropDownUnderSecondQuestionUnderDischargeSectionOnCarlForm(String text) {
		isElementPresentOnPage(By.xpath("//label[text()='"+text+"']"));	
	}
	
	public void IVerifyLegalMessageAppearsWithiIconUnderDischargeSectionOnCarlForm() {
		isElementPresentOnPage(By.xpath("//div[@class='carl-tool-disclaimer']/i[@class='valentino-icon-circle-info']/following-sibling::p"));		
	}
	
	public void IClickOnButtonUnderSubFormOnDischargeSectionOnCarlForm(String button) {
		clickElement(driver.findElement(By.xpath("//div[@class='controls ng-scope']//button[text()='"+button+"']")));
	}
	
	public void IClickOnCalednarIconOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm() {
		clickElement(driver.findElement(By.xpath("//i[@class='valentino-icon-calendar']")));
	}
	
	public void ISelectTodaysDateOnCalednarOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm() {
		DateFormat dateFormat = new SimpleDateFormat("dd");
		dateFormat.setTimeZone(TimeZone.getTimeZone("EST"));
		Date date = new Date();
		String time=dateFormat.format(date);
		int dateInt = (int ) Integer.parseInt(time);
		clickElement(driver.findElement(By.xpath("//td[@class='day ng-scope']//div[text()='"+dateInt+"']")));
	}
	
	public void IEnterAndSelectDischargeLocationeUnderSubFormOnDischargeSectionOnCarlForm(String text) {
		iWillWaitToSee(By.xpath("//label[text()='Discharge Location']/preceding-sibling::div//input[@type='search']"));
		driver.findElement(By.xpath("//label[text()='Discharge Location']/preceding-sibling::div//input[@type='search']")).sendKeys(text);
		delay();
		clickElement(driver.findElement(By.cssSelector("div.ui-select-choices-row.ng-scope.active")));
	}

	public void IclickonDonebuttonundersubformonDischargesections() {
		clickElement(driver.findElement(By.xpath("//button[text()='Done']")));
	}

	public void IselectadmissionwithlogiccounterDateonCalendarDischargeDateundersubformonDischargesection(int days) throws InterruptedException {
		iWillWaitToSee(By.cssSelector("h3.ng-binding"));
		Actions actions=new Actions(driver);
		actions.moveToElement(driver.findElement(By.cssSelector("h3.ng-binding"))).click().perform();
		String date=getcurrentdate(days);
		String date_dd_MM_yyyy[] = date.split("/");
		int yearDiff = Integer.parseInt(date_dd_MM_yyyy[2]) - Calendar.getInstance().get(Calendar.YEAR);
		iWillWaitToSee(By.cssSelector("th.right"));
		iWillWaitToSee(By.cssSelector("th.left"));
		WebElement nextLink = driver.findElement(By.cssSelector("th.right"));
		WebElement previousLink = driver.findElement(By.cssSelector("th.left"));
		 if(yearDiff!=0){
                   if(yearDiff>0){
                         for(int i=0;i< yearDiff;i++){
                         nextLink.click();}
                       }  else if(yearDiff<0){
                         for(int i=0;i< (yearDiff*(-1));i++){
                         previousLink.click(); }}
                         }
			
			iWillWaitToSee(By.cssSelector("span.month"));
			
			List<WebElement> list_AllMonthToBook = driver.findElements(By.cssSelector("span.month"));
			Thread.sleep(1000);
			list_AllMonthToBook.get(Integer.parseInt(date_dd_MM_yyyy[1]) - 1).click();
			List<WebElement> list_AllDateToBook = driver.findElements(By.xpath("//div[contains(@class, 'datetimepicker')]//table//tbody//td[not(contains(@class,'past')) and not(contains(@class,'future'))]"));
			list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0]) - 1).click();
    } 
	
	public static String getcurrentdate(int days) { 
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	LocalDate localDate = LocalDate.now();
	LocalDate b = localDate.minus(Period.ofDays(days));
    String date = dtf.format(b);
    return date;
	}

	public void IverifyUsershouldnotgetanerrormessageonaddingapastdateinthedischargedatesection() {
	iWillWaitToSee(By.cssSelector("i.valentino-icon-deny"));
	iWillWaitToSee(By.xpath("//div[contains(text(),'Discharge Date')]"));
	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'Discharge Date')]")));
	}

	public void Iverifythecorrectvalueforheaderwhichuserhasselectedbythetimeoffillingtheformshouldappearingaftersavingthedoneform(String variable,String value) {
	iWillWaitToSee(By.cssSelector("div.carl-discharge-review.ng-scope"));
	if(variable.equals("Caresetting")){
	isElementVisible(driver.findElement(By.xpath("//div[contains(@class,'answer') and contains(text(),'"+value+"')]")));
	}else if(variable.equals("Caretype")){
	isElementVisible(driver.findElement(By.xpath("//div[contains(@class,'answer') and contains(text(),'"+value+"')]")));
	}else if(variable.equals("DischargeLocation")){
	isElementVisible(driver.findElement(By.xpath("//div[contains(@class,'answer') and contains(text(),'"+value+"')]")));
	}else if(variable.equals("DischargeDate")){
    isElementVisible(driver.findElement(By.xpath("//div[contains(@class,'answer') and contains(text(),'"+value+"')]")));
	}
    }

	public void IclickoneditbuttontoupdatethevaluesofdischargesubformunderdischargetestinCarlform() {
	clickElement(driver.findElement(By.cssSelector("div.row.row-controls > a.btn.ng-scope")));
	}

    public void IverifyusershouldbeabletonavigatetothereadonlyformandnoservererrorshouldappearonDischargesection() {
	iWillWaitToSee(By.cssSelector("form.subform.container-fluid.ng-dirty.ng-valid.ng-submitted"));
	isElementVisible(driver.findElement(By.cssSelector("form.subform.container-fluid.ng-dirty.ng-valid.ng-submitted")));
	}

	public void IwillwaittoseetransitionnoappearsonthetransitiontableonthePatientSummarypage(int transiton_value) {
	iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[ " + transiton_value + " ]"));
	isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[ " + transiton_value + " ]")));
	}

    public void Iwillwaittoseevalueappearsintransitioncolumnontransitionstable(int column,String value,int transition_no) {
	iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[ " + transition_no + " ]/td[ " + column + " ]"));
	verifyTextForElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[ " + transition_no + " ]/td[ " + column + " ]")),value);
	}

	public void legalmessageshouldappearwhenCarlrecommendation() {
	verifyTextForElement(driver.findElement(By.cssSelector("div.info-message.ng-binding.ng-scope")),"Patient may benefit from community or home-based services, including Part B PT, personal care attendant, outpatient, specialty care or other services.");
	}

	public void IverifySNFELOSmessageshouldappearundertheDischargeDate() {
	verifyTextForElement(driver.findElement(By.cssSelector("span.info-message.ng-binding.ng-scope")),"The episode length of stay for this bundle is 12 - 14 days.");
	}

	public void IverifySNFELOSrangethatshouldbecalculatedbyDRGthattriggersthecurrentactiveepisode() {
	verifyTextForElement(driver.findElement(By.cssSelector("span.info-message.ng-binding.ng-scope")),"The episode length of stay for this bundle is 12 - 14 days.");
    }

    public void IverifyusershouldseetheappropriatemessagebasedonActualCareSettingchosenandtheRestorationPotentialchosen(String message) {
	iWillWaitToSee(By.cssSelector("p.info-message.ng-binding.ng-scope"));
	verifyTextForElement(driver.findElement(By.cssSelector("p.info-message.ng-binding.ng-scope")),message);
	}

	public void Iverifyphysicaltherapyrecommendationmessageshouldappearingreencolor() {
	String value = driver.findElement(By.cssSelector("p.info-message.ng-binding.ng-scope")).getCssValue("color");
	String hex = Color.fromString(value).asHex();
	Assert.assertTrue(hex.equals("#1d93bf"));
	}

		
    public void IverifynodataappearsinthedropdowntoselecttheDischargeLocationunderRecommendationonDischargeSection(String data) {
	delay();
	if(data.equals("no data")){
	iWillWaitToSee(By.cssSelector("div:nth-child(3) > div:nth-child(2) > div > ul.ng-hide"));
	isElementVisible(driver.findElement(By.cssSelector("div:nth-child(3) > div:nth-child(2) > div > ul.ng-hide")));
	}else
	{
	WebDriverWait wait=new WebDriverWait(driver,10);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div:nth-child(3) > div:nth-child(2) > div > ul.ng-hide")));
	}
    }

    public void IverifyActualDischargeLocationsearchshoulddeterminedbyCareSetting() {
	List<String> texts=getTextForElementfromList("span.ui-select-choices-row-inner > div.ng-binding.ng-scope");
	for(String text:texts)
	{
	String finaltext = text.substring(text.length() - 5);
	Assert.assertEquals("(HHA)", finaltext);
	}
    }

    public void IenterDischargelocationintheDischargeLocationsearchbox(String text) {
    iWillWaitToSee(By.xpath("//label[text()='Discharge Location']/preceding-sibling::div//input[@type='search']"));
	driver.findElement(By.xpath("//label[text()='Discharge Location']/preceding-sibling::div//input[@type='search']")).sendKeys(text);
	delay();
	}

	public void IverifyresultsshouldbeconfiguredwithlistoffacilitiesafterenteringcharactersontheDischargeLocationfield() {
	List<String> actualmylist = getTextForElementfromList("span.ui-select-choices-row-inner > div.ng-binding.ng-scope");
	String[] expectedvalues = { "Aaa Home Health Care Inc (Tyler, TX) (HHA)", "Aaa Home Health Care Incorporated (Las Vegas, NV) (HHA)" , "Aaa home health care inc - Aaa home health care inc (Simi valley, CA) (HHA)" };
	List<String> requiredcombolisttext = new ArrayList<String>();
	requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
	verifyarraylist(requiredcombolisttext, actualmylist);
	}

	public void IclosetheDischargeLocationdropdownonDischargeSection() {
	clickElement(driver.findElement(By.xpath("//strong[contains(text(),'Have you discussed')]")));
	}

	public void IverifyCaretypeandDischargelocationfieldshouldgetrefreshedaspernewCaresetting() {
	WebDriverWait wait=new WebDriverWait(driver,10);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div.show-search.form-control.ng-valid-required")));
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div.form-control.ui-select-container.ng-touched.ng-valid-required")));
	}

	public void IverifydischargeformshouldprovidefieldsiftheActualCareSettingdoesnotmatchtheCARLrecommendationproposedfacility(String text1,String text2) {
	verifyTextForElement(driver.findElement(By.xpath("//label[contains(text(),'"+text1+"')]")),text1);
	verifyTextForElement(driver.findElement(By.xpath("//label[contains(text(),'"+text2+"')]")),text2);
	if(text1.equals("Who disagrees?")){
	isElementVisible(driver.findElement(By.cssSelector("div:nth-child(2) > div.ui-select-match.ng-scope")));
	} else if(text2.equals("Reason for Disagreement")) {
	isElementVisible(driver.findElement(By.cssSelector("div:nth-child(4) > div.ui-select-match.ng-scope")));
	}
	}

	public void IverifyquestionshouldstatemessageunderRecommendationonDischargesection(String text) {
	isElementVisible(driver.findElement(By.xpath("//strong[contains(text(),'patient transfer to the recommended')]")));				
	}

    public void IverifythatUsershouldbeabletoprovideadditionalcomments(String comment) {
    isElementVisible(driver.findElement(By.cssSelector("textarea.form-control.margin-top-15.ng-empty")));
    iFillInText(driver.findElement(By.cssSelector("textarea.form-control.margin-top-15")),comment);
    isElementVisible(driver.findElement(By.cssSelector("textarea.form-control.margin-top-15.ng-not-empty")));
    }

    public void Iverifyusershouldbeabletoprovideupto250charactersunderAdditionalComments() {
    char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
    StringBuilder sb = new StringBuilder();
    Random random = new Random();
    for (int i = 0; i < 240; i++) {
    char c = chars[random.nextInt(chars.length)];
	sb.append(c);
    }
	String output = sb.toString();
	iFillInText(driver.findElement(By.cssSelector("textarea.form-control.margin-top-15")),output);
	}

	public void  IverifythatUsercanaddReason(String reason) {
	iWillWaitToSee(By.cssSelector("div.add-icon.hover-pointer"));
	isElementVisible(driver.findElement(By.cssSelector("div.add-icon.hover-pointer")));
    }

    public void IselectdropdownvalueunderRecommendation(String value,String variable,int i,String reason) {
	delay();
	clickElement(driver.findElement(By.cssSelector("div:nth-child("+i+") > div.ui-select-match")));
	clickElement(driver.findElement(By.xpath("//span[@class='ui-select-choices-row-inner']/div[text()='"+value+"']")));
	if(reason.equals("3"))
	 {
	if(variable.equals("Who disagrees?")){
	clickElement(driver.findElement(By.cssSelector("div:nth-child(4) > div:nth-child(3) > div.ui-select-match")));
	 } else{
	clickElement(driver.findElement(By.cssSelector("div:nth-child(4) > div:nth-child(5) > div.ui-select-match")));  
	 }
	 }
     }

	public void IclickonReasoniconunderdisagreementunderRecommendationonDischargesection() {
	clickElement(driver.findElement(By.cssSelector("div.add-icon.hover-pointer")));
     }

	public void I_verify_that_User_cannot_view_icon_for_another_Reason() {
	WebDriverWait wait=new WebDriverWait(driver,10);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div.add-icon.hover-pointer")));
	}

    public void Iverifythatusershouldbeabletoremoveadditionalreasonwhichisadded() {
	clickElement(driver.findElement(By.cssSelector("div:nth-child(4) > div.remove-icon.hover-pointer.ng-scope")));
	WebDriverWait wait=new WebDriverWait(driver,10);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div:nth-child(4) > div:nth-child(3) > div.ui-select-match")));
	}

	public void IverifythatuponselectinganyvaluetoActualcaresettingfieldpresenceofquestionisappearing(String question) {
	isElementVisible(driver.findElement(By.xpath("//strong[contains(text(),'"+question+"')]")));
	}
			
	public void IClickRadioOptionForFirstQuestionUnderDischargeSectionOnCarlForm(String radio, String text) {
    clickElement(driver.findElement(By.xpath("//strong[text()='"+text+"']/parent::form//div[@class='radio ng-not-empty ng-valid']//span[text()='"+radio+"']")));
	}

	public void Iverifyusershouldbeabletoselecttheradiobuttononceselected() {
	isElementVisible(driver.findElement(By.cssSelector("form.carl-interdisciplinary > div:nth-child(2) > input.ng-valid.ng-not-empty")));
	}

	public void Iverifyusershouldnotbeabletounselecttheradiobuttononceselected() {
	isElementVisible(driver.findElement(By.cssSelector("form.carl-interdisciplinary > div:nth-child(2) > input.ng-valid.ng-not-empty.ng-valid-parse")));
	}

	public void IverifyPlaceholdershouldsaySelectfromtheWhodisagreesdropdownunderRecommendationonDischargesection(String placeholder,String i) {
	Assert.assertEquals(placeholder,driver.findElement(By.cssSelector("div:nth-child("+i+") > div.ui-select-match")).getAttribute("placeholder"));
	}

	public void IverifyusershouldbeabletoselectanyoptionsfromfollowingdropdownfromtheWhodisagreesdropdownunderRecommendationonDischargesection(int j,List<String> dropdownvalues) {
	for(int i=0;i<dropdownvalues.size();i++)
	{
	clickElement(driver.findElement(By.cssSelector("div:nth-child("+j+") > div.ui-select-match")));
	String value=dropdownvalues.get(i);
    clickElement(driver.findElement(By.xpath("//span[@class='ui-select-choices-row-inner']/div[contains(text(),'"+value+"')]")));
    isElementVisible(driver.findElement(By.cssSelector("div:nth-child("+j+").form-control.ui-select-container.ng-not-empty")));
	}
	}

    public void IverifythatCareTypefortheActualCareSettingshouldincludethefollowing() {
	String[] values = { "(HHH) Hospital","(HHA) Home Health Agency","(SNF) Skilled Nursing Facility",                   
						"(REH) Rehabilitation","(OTHER) Other" ,"(EXPIRED) Expired"};
	String[][] newArray = {	{"Inpatient","Outpatient","Emergency","Scheduled","Observation"},{"Skilled services","Non-skilled services"},{"Skilled nursing",
						"Custodial care","TCU","Leave of Absence"},{"Inpatient","Outpatient"},
						{"Acute care hospital","Assisted living","Intermediate care facility","Another institution","Left against medical advice",	"Admitted as an inpatient to this hospital","Court/law enforcement","Federal hospital",
						"Still a patient","Shelter","Hospice at home","Hospice in Medical Facility","Hospital-based medicare approved swing bed","Medicaid-certified nursing facility","Psychiatric hospital/unit","Critical access hospital"},
						{"Expired as inpatient","Expired at Home","Expired at Medical Facility","Expired at Unknown"} };
	List<List<String>> list = Arrays.stream(newArray).map(Arrays::asList).collect(Collectors.toList());
	for(int j=0;j<list.size();j++)
	{
	clickElement(driver.findElement(By.xpath("//label[text()='Actual Care Setting']/preceding-sibling::div")));			
    clickElement(driver.findElement(By.xpath("//label[text()='Actual Care Setting']/preceding-sibling::div//div[text()='"+values[j]+"']")));
    clickElement(driver.findElement(By.xpath("//label[text()='Care Type']/preceding-sibling::div")));			
    List<String> list1=getTextForElementfromList("span.ui-select-choices-row-inner> div.ng-binding");
    Assert.assertEquals(list.get(j),list1);
     }}

    public void Iverifyleftnavigatorshouldbeaccessibleonthereviewpage() {
	isElementVisible(driver.findElement(By.cssSelector("nav.vertical-navigator.ng-isolate-scope")));
	}

    public void IverifythereshouldbealinkoneachcardandclickingthelinkshouldbringtheusertothatspecifiedsectionoftheCARLform(String view) {
    for(int i=1;i<5;i++)
	{
	isElementVisible(driver.findElement(By.xpath("//section/div["+i+"]/div[1]/a[text()='View']")));	
	}
	}

	public void Iverifysectionshouldappearwithvalueonlabelonthereviewpage(String section,String label,String value) {
	if(section.equals("Caregiver"))
	isElementVisible(driver.findElement(By.xpath("//section/div[1]/div[@class='review-body']/*[self::h4[contains(text(),'"+label+"')]  or self::div[contains(text(),'"+value+"')]]")));	
	else if(section.equals("Anticipated Discharge Needs"))
	{
	isElementVisible(driver.findElement(By.xpath("//section/div[2]/div[@class='review-body']/*[self::h4[contains(text(),'"+label+"')]  or self::div[contains(text(),'"+value+"')]]")));		
	}else if(section.equals("Discharge")){
	isElementVisible(driver.findElement(By.xpath("//section/div[4]/div[@class='review-body']/*[self::h4[contains(text(),'"+label+"')]  or self::div[contains(text(),'"+value+"')]]")));		
	}
	}

    public void Iverifysectionshouldappearwithvaluefordescriptivetitleonthereviewpage(String section,String label,String descriptive_title,String value) {
	isElementVisible(driver.findElement(By.xpath("//div[@class='therapies-needed']//div[contains(text(),'"+value+"')]/following-sibling::div/div[contains(text(),'"+label+"')]/following-sibling::div[contains(text(),'"+descriptive_title+"')]")));	
	}

    public void IclickontheSaveandGoBackonsectiononCARLform() {
	delay();
    clickElement(driver.findElement(By.xpath("//a[@ng-click='saveCarlAndPrevious($event)']")));			
	}

	public void Iverifyradiobuttonisenableoncaregiversection() {
	Assert.assertTrue(driver.findElement(By.cssSelector("section > div:nth-child(2) > div > label > span")).isSelected());
	}

	public void Iverifyoptionappearsindropdownforcarlsection(String option) {
	isElementVisible(driver.findElement(By.xpath("//span[@class='ui-select-match-text pull-left' and text()='"+option+"']")));	
	}

	public void IverifySaveandGoBackdoesnotappear() {
	delay();
	WebDriverWait wait=new WebDriverWait(driver,5);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//a[@ng-click='saveCarlAndPrevious($event)']")));
	}

	public void iEnterDetailsInTextboxFieldPresentOnAddPatientModal(String detailFileds) {
	String start; 
	if(detailFileds.equals("firstName")){
	start="Patient";
    String end=generateRandomString();
    firstname=start+end;
	iFillInText(driver.findElement(By.cssSelector("#Patient_Details_" + detailFileds + "")), firstname);
	}else{
	start="Automation";
	String end=generateRandomString();
	lastname=start+end;
	iFillInText(driver.findElement(By.cssSelector("#Patient_Details_" + detailFileds + "")), lastname);
	}}
			
	public String generateRandomString(){
	StringBuffer randStr = new StringBuffer();
	for(int i=0; i<RANDOM_STRING_LENGTH; i++){
    int number = getRandomNumber();
	char ch = CHAR_LIST.charAt(number);
	randStr.append(ch);}
    return randStr.toString();
	}
			     
	private int getRandomNumber() {
	int randomInt = 0;
	Random randomGenerator = new Random();
    randomInt = randomGenerator.nextInt(CHAR_LIST.length());
	if (randomInt - 1 == -1) {
	return randomInt;
    } else {
	return randomInt - 1;
	}}
			    
	public void makePostJsonRequest() {
	String jsonString="{\"firstName\":\""+firstname+"\" ,\"lastName\":\""+lastname+"\",\"gender\":\"M\",\"dob\": \"1995-05-01\",\"ssn\": \""+final_ssn+"\",\"medicareid\": \"WA784654785\",\"startDate\": \"1937-07-14\",\"endDate\": \"2020-05-20\",\"payer\":100002,\"eligible\": true}";
	CloseableHttpClient httpClient = HttpClientBuilder.create().build();
	try {
	HttpPost postRequest = new HttpPost("https://qa.remedypartners.com/api/secure/enrollmentUpdate/v1/enrollment.json");
	postRequest.setHeader("X-AUTH-EMAIL", "qa.admin@yopmail.com");
	postRequest.setHeader("Content-type", "application/json");
	StringEntity entity = new StringEntity(jsonString);
    postRequest.setEntity(entity);
	HttpResponse response = httpClient.execute(postRequest);
    InputStream is = response.getEntity().getContent();
    Reader reader = new InputStreamReader(is);
	BufferedReader bufferedReader = new BufferedReader(reader);
	StringBuilder builder = new StringBuilder();
/*	while (true) {
	try {
    String line = bufferedReader.readLine();
	if (line != null) {
	builder.append(line);
    } else {
    break;
	}} catch (Exception e) {
    e.printStackTrace();}}
    System.out.println(builder.toString());
	System.out.println("****************");*/
	} catch (Exception ex) {
	ex.printStackTrace();
	}}

	public void IenterrandomsocialsecuritynumberintheSSNtextboxfieldpresentontheAddPatientpage() {
    Random r = new Random( System.currentTimeMillis() );
	String ssn_start="7842";
	int ssn_end=((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
	final_ssn=ssn_start+Integer.toString(ssn_end);
	System.out.println("$$$Final ssn is"+final_ssn);
	iFillInText(driver.findElement(By.cssSelector("#Patient_Details_ssn")),final_ssn);
	}

	public void Ienterfiltervalueunderfiltertoseeemblempatient() {
	iWillWaitToSee(By.xpath("//div[@class='ng-scope']/input"));
	iFillInText(driver.findElement(By.xpath("//div[@class='ng-scope']/input")),final_ssn);
	}

	public void IverifyusershouldbeabletosubmittheCARLformuponclickingtheSubmitlinkontheCARLReviewform() {
	clickElement(driver.findElement(By.cssSelector("div.content-well > footer > div.top-row > div:nth-child(2) > button")));			
    longDelay();
	WebDriverWait wait=new WebDriverWait(driver,5);
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("div.content-well > footer > div.top-row > div:nth-child(2) > button")));
	}

	public void iEnterSSNValue() {
		iFillInText(driver.findElement(By.xpath("//*[@id='form_ssn_ssn']")),final_ssn);
	}

	public void urlFilteredbySSN(String URL) {
		String new_Url=URL.replaceAll("%%SSN",final_ssn);
		driver.get(BaseURL+new_Url);
		System.out.println("$$$URL is"+BaseURL+new_Url);
		delay();
		driver.navigate().refresh();
	}

	public void iWillWaitToSeename() {
		longDelay();
		iWillWaitToSee(By.cssSelector("a.btn.btn-primary.dropdown-toggle"));
		iWillWaitToSee(By.cssSelector("h3.page-title>span"));
		String first_name=capitalise(DischargeCarlForm.firstname);
		String last_name=capitalise(DischargeCarlForm.lastname);
		String new_name=first_name+" "+last_name;
		verifyTextForElement(driver.findElement(By.cssSelector("h3.page-title>span")),new_name);
	}
	public static String capitalise(final String name) {
	    return name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();
	}

	public void verifypatientDOBagegender() throws Exception {
		String text=getTextForElement(driver.findElement(By.cssSelector("li.ec2-embed-patient-info")));
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar dob = Calendar.getInstance();
	    dob.setTime(sdf.parse("01/05/1995"));
	    String age=Integer.toString(getAge(dob));
	    String str=age+" "+"(01/05/1995 )"+" "+"Male";
	    Assert.assertEquals(text, str);
	}

	public static int getAge(Calendar dob) throws Exception {
        Calendar today = Calendar.getInstance();
        int curYear = today.get(Calendar.YEAR);
        int dobYear = dob.get(Calendar.YEAR);
        int age = curYear - dobYear;
        return age;

	}

	public void verify_SSN() {
		String ssn_final=final_ssn;
		String new_word = " "+ "SSN"+" xxx-xx-"+ssn_final.substring(ssn_final.length() - 3);
		verifyTextForElement(driver.findElement(By.cssSelector("ec2-embed-patient-ssn")),new_word);
	}

	
}
	
	
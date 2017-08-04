package com.remedy.Episode2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import com.remedy.baseClass.BaseClass;

public class DischargeCarlForm extends BaseClass {

	public final static DateFormat df = new SimpleDateFormat("dd");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);
	
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

	public void IVerifythatClickingdoneshouldshowareadonlyfieldwiththeinformationfilled() {
		
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
	
}

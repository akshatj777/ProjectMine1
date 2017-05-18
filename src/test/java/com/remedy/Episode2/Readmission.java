package com.remedy.Episode2;

import java.util.Calendar;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class Readmission extends BaseClass {

	public Readmission(WebDriver driver) {
        super(driver);
	}


	public void IclickontheTransitionssubtabonthePatientSummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}
	
      public void Iselectthecaresettingvalueonaddanewtransition(String caresetting) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory",caresetting);
	}

	public void Iselectthecaretypevalueonaddanewtransition(String caretypevalue) {
		

		  selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType",caretypevalue);
	}

	public void Iselectthefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		  WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));

		  js.executeScript("arguments[0].click();", element1);
		  clickElement(element1);
		  Thread.sleep(5000);

		  WebElement element2 = driver.findElement(By.cssSelector("#s2id_autogen8_search"));

		  js.executeScript("arguments[0].click();", element2);
		  element2.sendKeys(facilityvalue);
		  Thread.sleep(10000);
		  WebElement element3 = driver.findElement(By.cssSelector("li.select2-highlighted"));
		  js.executeScript("arguments[0].click();", element3);
		  clickElement(element3);		
	}



	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(String DRGtype) {

		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType",DRGtype);
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(String DRG) {
	
		  clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		  iFillInText(driver.findElement(By.cssSelector("#s2id_autogen7_search")),DRG);
		  clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
		 }


	public void IclickontheagreebuttononthePatientCardpage() {
		
		try
		{
		 clickElement(driver.findElement(By.cssSelector("span.attestation-label.ng-binding")));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
       public void IclickonlastnamethesearchedpatientonthePatientCardPage(String lastname) {
		
		String newname=lastname.toUpperCase();
		clickElement(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'"+newname+"')]")));
		}
	
	
public void Iclickonthenextlinktoselecttherequiredyearondatepicker(String dateTime) {
	
	
	String date_dd_MM_yyyy[] = (dateTime.split("/"));
	int yearDiff = Integer.parseInt(date_dd_MM_yyyy[2])- Calendar.getInstance().get(Calendar.YEAR);
	System.out.println("$$$$The year difference is"+yearDiff);
	WebElement nextLink = driver.findElement(By.cssSelector("th.next"));
	WebElement previousLink = driver.findElement(By.cssSelector("th.prev"));
	if(yearDiff!=0){
          if(yearDiff>0){
                   for(int i=0;i<yearDiff;i++){
                   System.out.println("Year Diff->"+i);
                   nextLink.click();
              }}

          else if(yearDiff<0){
                 
            for(int i=0;i<(yearDiff*(-1));i++){
                System.out.println("Year Diff->"+i);
                previousLink.click();

            }}}}


public void Iselectthedatefromthecalendarfromdatepicker(String dateTime) {
	String date_dd_MM_yyyy[] = (dateTime.split("/"));
    List<WebElement> list_AllDateToBook = driver.findElements(By.xpath("//div[@class='datetimepicker-days']//table[@class=' table-condensed']//tbody//td[not(contains(@class,'old')) and not(contains(@class,'new'))]"));
    list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0])-1).click();
	
}
public void IclickonthecentreofthecalendarheadertoselectdateandmonthonTransitionPage() {
	clickElement(driver.findElement(By.xpath("/html/body/div[12]/div[3]/table/thead/tr[1]/th[2]")));	
}
public void IselectthetimefromthecalendarfromdatepickeronTransitionPage(String date) {
	clickElement(driver.findElement(By.cssSelector("span.hour.active")));
	clickElement(driver.findElement(By.cssSelector("span.minute.active")));
/*	String date_dd_MM_yyyy[] = (date.split("//"));
	System.out.println("$$$$$$The date is"+date_dd_MM_yyyy[0]);
	System.out.println("$$$$$$The time is"+date_dd_MM_yyyy[1]);
	String time_hh_mm[]=date_dd_MM_yyyy[1].split("-");
	System.out.println("$$$$$$The time in hours"+time_hh_mm[0]);
	System.out.println("$$$$$$The time in seconds"+time_hh_mm[1]);
	List<WebElement> allTimehour = driver.findElements(By.cssSelector("div.datetimepicker-hours > table > tbody > tr > td > span"));
    System.out.println("$$$$$$$The Webelement list is"+allTimehour);
    
    List<WebElement> allTimeSeconds = driver.findElements(By.cssSelector("div.datetimepicker-minutes > table > tbody > tr > td > span"));
    System.out.println("$$$$$$$The Webelement list is"+allTimeSeconds);
    for (WebElement webElement : allTimehour) {

    	System.out.println("$$$$$$The text for time is"+webElement.getText());
         if(webElement.getText().equals(time_hh_mm[0]));

         {
          webElement.click();

         }
         
}

    for (WebElement webElement : allTimeSeconds) {

    	System.out.println("$$$$$$The text for time seconds is"+webElement.getText());
        if(webElement.getText().equalsIgnoreCase(time_hh_mm[1]));

        {
         webElement.click();

        }
 }*/
}


public void IselecttheLOSdaysonDischargedateonAddTransition(String days) {
	// TODO Auto-generated method stub
	iFillInText(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_los")),days);
	
}


public void IclickontheReadmissionssubtabonImpatienttabonpatientCardPage() {
	clickElement(driver.findElement(By.xpath("//span[contains(text(),'Readmissions')]")));
}


public void IverifythepatientpresentornotonthePatientCardPage(String last_name) {
	// TODO Auto-generated method stub
	String newname=last_name.toUpperCase();
	isElementVisible(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'"+newname+"')]")));
	 }


public String Igetthedischargedateoftheprevioustransitionaddedfromtransitionlist() {
	// TODO Auto-generated method stub
	return driver.findElement(By.cssSelector("td.discharge_date-column")).getText();
	
}


public void IclickontheeditbuttontoedittheActivetransition() {
	// TODO Auto-generated method stub
	clickElement(driver.findElement(By.cssSelector("a.btn.btn-default.dropdown-toggle")));
	clickElement(driver.findElement(By.cssSelector("i.fa.fa-edit")));
}

public void IclickonthecentreofthecalendarheaderonDischargedatepickertoselectdateandmonthonTransitionPage() {
	
	         WebElement element=driver.findElement(By.cssSelector("body > div:nth-child(17) > div.datetimepicker-days > table > thead > tr:nth-child(1) > th.switch"));
			JavascriptExecutor js = (JavascriptExecutor)driver;
			js.executeScript("arguments[0].scrollIntoView(true);", element);
			clickElement(element);
}


public void Iclickondatepickerbuttontoselectthedischargedate() {
	
	WebElement element=driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_dischargeDate"));
	JavascriptExecutor js = (JavascriptExecutor)driver;
	js.executeScript("arguments[0].scrollIntoView(true);", element);
	clickElement(element);
}
}




	
	
	
	


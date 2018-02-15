package com.remedy.programManagement;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

import edu.emory.mathcs.backport.java.util.Arrays;

public class CreatePrograms extends BaseClass {
	
	public static HashMap<String, String> tempPrograms = new HashMap<String, String>();
	public static HashMap<String, String> programs = new HashMap<String, String>();
	public static String programName;

	public CreatePrograms(WebDriver driver) {
		super(driver);
	}
	
	Actions build= new Actions(driver);
	
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPageUnderPayorOrganization(String msg, String org) {
		
		if(driver.findElements(By.cssSelector(".alert.alert-dismissible.alert-success>div")).size() > 0)	
		{
			if(org.contains("Programs")){
				iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>div"));
				verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>div")), msg);
				if(!CreatePrograms.tempPrograms.isEmpty())
				{
					CreatePrograms.programs.putAll(CreatePrograms.tempPrograms);
					CreatePrograms.tempPrograms.clear();
				}
				waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			}
			else if(org.contains("Contracts")){
				iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>div"));
				verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>div")), msg);
			}
		}
		else 
		   {
		    	iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-danger>div"));
		    	verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-danger>div")), msg);
		    	waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		    }	
		}

	public void iVerifyHeaderLabelUnderSelectedOrganization(String header,String org) 
	{
		iWillWaitToSee(By.cssSelector(".data-table-header-cell>a"));
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}

	public void iSelectProgramNameInCreateContractPageUnderPayorOrganization(String text) 
	{
//		WebElement element = driver.findElement(By.xpath("//div[text()='Select a Program']"));
//		 JavascriptExecutor executor = (JavascriptExecutor)driver;
//		 executor.executeScript("arguments[0].click();", element);
		clickElement(driver.findElement(By.xpath("//div[text()='Select a Program']")));
		clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), CreatePrograms.programs.get("PROGRAMNAME"));
	}
	
	public void iVerifyContractHeaderOnCreateContractPageUnderPayorOrganization(String text) {
			verifyTextForElement(driver.findElement(By.cssSelector(".col-sm-11.row.contract-indicator>div")), text);
	}
	
	public void iSelectOrganizationTypeOnCreateContratsPageUnderPayorOrganization(String text, int num, String field) 
	{
		    clickElement(driver.findElement(By.cssSelector(".Select-value")));
			clickSingleElementFromList((By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")), text);
	}
	
	public void iSelectOrganizationNameOnCreateContratsPageUnderPayorOrganization(String text, int num, String field) 
	{
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[text()='Search Name or CCN']")));
		clickElement(driver.findElement(By.xpath("//div[text()='Search Name or CCN']")));
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".org-name")));
		//clickSingleElementFromList((By.cssSelector(".org-name")), text);
		for(int i=0; i<=2;i++){
			  try{
				  clickSingleElementFromList((By.cssSelector(".org-name")), text);
			     break;
			  }
			  catch(Exception e){
			     System.out.println(e.getMessage());
			  }
			}
	}
	
	public void iEnterPriceOnCreateContractsPage(String text, int num, String field) 
	{
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Price of bundle']")), text);

	}
	
	public void enterDate(String date, String field) throws ParseException 
	{
		if(!(date.equals("")))
		{
			String[] arrMonth = new String[]{"January","February","March","April","May","June","July","August","September","October","November","December"};
			Date date1=new SimpleDateFormat("YYYY/MM/DD").parse(date); 
			Calendar cal = Calendar.getInstance();
			cal.setTime(date1);
			int year = cal.get(Calendar.YEAR);
			int iMonth = cal.get(Calendar.MONTH);
			String month = cal.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.ENGLISH);
			int day = cal.get(Calendar.DAY_OF_MONTH);
			driver.findElement(By.xpath("//div[@class='start-date-end-date-block col-sm-8']//div[@class='react-datepicker-input-field-container start-date-picker']//label[1]")).click();
			
			
			String displayYear = driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText();
			String displayMonth = driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText();
			String m = displayMonth.substring(displayMonth.indexOf(" ")+1);
			if(displayYear.contains(Integer.toString(year)))
			{
				if(displayMonth.contains(month))
				{
					driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon'][text()='"+day+"']")).click();
				}
				else if((Arrays.asList(arrMonth).indexOf(m)+1)>iMonth)
				{
					while(driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText().contains(month))
					{
						driver.findElement(By.xpath("//a[@class='react-datepicker__navigation react-datepicker__navigation--previous']")).click();
					}
					driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon'][text()='"+day+"']")).click();
				}
				else if((Arrays.asList(arrMonth).indexOf(m)+1)<iMonth)
				{
					while(driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText().contains(month))
					{
						driver.findElement(By.xpath("//a[@class='react-datepicker__navigation react-datepicker__navigation--next']']")).click();
					}
					driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon'][text()='"+day+"']")).click();
				}
			}
			else if(Integer.parseInt(displayYear)>year)
			{
				while(driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText().contains(Integer.toString(year)))
				{
					driver.findElement(By.xpath("//a[@class='react-datepicker__navigation react-datepicker__navigation--previous']")).click();
				}
				driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon'][text()='"+day+"']")).click();
			}
			else if(Integer.parseInt(displayYear)<year)
			{
				while(driver.findElement(By.xpath("//div[@class='react-datepicker__current-month']")).getText().contains(Integer.toString(year)))
				{
					driver.findElement(By.xpath("//a[@class='react-datepicker__navigation react-datepicker__navigation--next']']")).click();
				}
				driver.findElement(By.xpath("//div[@class='react-datepicker__day react-datepicker__day--mon'][text()='"+day+"']")).click();
			}
		}
	}
	
	public void iSelectBundle1OnCreateContratsPageUnderPayorOrganization(String text, int num, String field) {
//		//iWillWaitToSee(By.xpath("//div[text()='Select a Bundle']"));
//		WebElement ele=driver.findElement(By.xpath("//div[text()='Select a Bundle']"));
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("document.getElement(ele.click())");
//		//iWillWaitToSee(By.cssSelector(".react-select-option-row.highlight>div"));
//		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".react-select-option-row.highlight>div")));
		
		WebElement element= driver.findElement(By.xpath("//div[text()='Select a Bundle']"));
		JavascriptExecutor executor = (JavascriptExecutor) driver;
		executor.executeScript("arguments[0].click();", element);
		
		clickSingleElementFromList((By.cssSelector(".react-select-option-row.highlight>div")), text);
	}
	
	public void iEnterBundle_Price1DetailsOnContractsPage(String text, String field, int num, String field1, String field2) 
	{
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text);
	}

	public static String currentdate(int days,String format) 
	{
		  DateTimeFormatter dtf = DateTimeFormatter.ofPattern(format);
		  LocalDate localDate = LocalDate.now();
		  LocalDate b = localDate.minus(Period.ofDays(days));
		  String date = dtf.format(b);
		  return date;
		 }
	
	public void setAttributevalue(WebElement element, String attName, String attValue) {
		  JavascriptExecutor js = (JavascriptExecutor) driver;
		  js.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);", 
		                element, attName, attValue);
		    }
	
	public void iInsertdays1(List<Map<String,Integer>> data) throws ParseException {
		List<WebElement> startelemnts = null;
		List<WebElement> endelemnts = null;
		for(int i=0;i<data.size();i++)
		{
			startelemnts=driver.findElements(By.xpath("//label[@class='date-picker-input-label' and text()='Enter the start date']"));
			endelemnts=driver.findElements(By.xpath("//label[@class='date-picker-input-label' and text()='YYYY/MM/DD']"));
		}
		for(int i=0;i<data.size();i++)
		{
			scrollIntoViewByJS(startelemnts.get(i));
			handleDatepicker(data.get(i).get("Start Date"),startelemnts.get(i));
			//handleDatepicker(data.get(i).get("End Date"),endelemnts.get(i));
		}
	}			

	public void handleDatepicker(int date1,WebElement element) throws ParseException {
		System.out.println(date1);
		String newDate=currentdate(date1,"yyyy/MM/dd");
		Date convertedDate=covertStringtoInt(newDate);
		String date3=convertedDate.toString();
		System.out.println(date3);
		String year=getLastnCharacters(date3,4);
		String date6=date3.substring(4,7);
	    System.out.println("String is"+year);
	    System.out.println("month is"+date6);
	    element.click();
	    WebElement midtext = driver.findElement(By.cssSelector("div.react-datepicker__current-month")); 
	     
	    String yeartext=midtext.getText();
	    String date44=getLastnCharacters(newDate,2);
	    if(year.equals(getLastnCharacters(yeartext,4)) && date6.equals(yeartext.substring(0, 3)))
	    {
	    	clickElement(driver.findElement(By.xpath("//div[contains(@class,'react-datepicker__month')]/div[contains(@class,'react-datepicker__week')]/div[contains(@class,'react-datepicker__day') and not(contains(@class,'react-datepicker__day--outside')) and text()='"+date44+"']")));
	         delay();
	    }
	    else
	    {
	    	driver.findElement(By.cssSelector(".react-datepicker__navigation.react-datepicker__navigation--previous")).click();
	    	delay();
	    	clickElement(driver.findElement(By.xpath("//div[contains(@class,'react-datepicker__month')]/div[contains(@class,'react-datepicker__week')]/div[contains(@class,'react-datepicker__day') and not(contains(@class,'react-datepicker__day--outside')) and text()='"+date44+"']")));
	    }
	}
	
	public Date covertStringtoInt(String source) throws ParseException{
		DateFormat formatter =new SimpleDateFormat("yyyy/MM/dd");
		Date convertedDate =(Date) formatter.parse(source);
		return convertedDate;
	}
	
	public void i_navigate_to_the(String url) {
		driver.navigate().to(url);
		 longDelay();
	}
	
	public String getLastnCharacters(String inputString, int subStringLength)
	{
		int length = inputString.length();
		if(length <= subStringLength)
		{
			return inputString;
		}
     int startIndex = length-subStringLength;
     return inputString.substring(startIndex);
	}
	
	public void iVerifyCreateContractHeaderTextOnCreateContractsPage(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".row.headline")), text);
	}
	
	public void iVerifyFieldOnCreateContractsPage(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".select-field-caption.required")), text);
	}
	
	public void iClickOnCheckboxeForAttributionRulesOnCreatePrograms(String text){
		//clickElement(driver.findElement(By.xpath("//li[text()='"+text+"']/child::input")));
		
		WebElement element= driver.findElement(By.xpath("//li[text()='"+text+"']/child::input"));
		JavascriptExecutor executor = (JavascriptExecutor) driver;
		executor.executeScript("arguments[0].click();", element);
	}

	public void iVerifyPGPOrganizationNameOnNetworkContractPage(String text, String page){
		isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"'"));
	}
	
	public void iVerifySearchBoxForHospitalOrganizationOnNetworkContractPage(String text, String page){
		isElementPresent(By.xpath("//div[text()='Search Name or CCN']"));
	}
	
	public void iVerifyDateFieldOnNetworkContractPage(String field, String page){
		isElementPresentOnPage(By.xpath("//label[contains(text(),'"+field+"')]"));
	}
	
	public void iVerifyDefaultNetworkContractStartDateShouldBeTodayDate(){
		isElementPresent(By.xpath("//div[@class='react-datepicker-input-field-container start-date-picker ']//div[@class='react-datepicker__input-container']"));
	}
	
	public void iVerifyProgramOnCreateNetworkContractPage(String text){
		isElementPresent(By.xpath("//div[contains(text(),'*')]"));
	}
	
	public void iVerifyTheDetailsAfterSelectingContractNameOnCreateNetworkContractPage(String text, String field){
		String result= null;
		if(field.contains("Contract_ID"))
		{
			result = getTextForElement(driver.findElement(By.xpath("//div[@class='contract-id']")));
			result = result.substring(result.indexOf(":")+1);
			Assert.assertEquals(result,CreatePrograms.programs.get("PROGRAMNAME"));
		}
		else if(field.contains("Start Date")){
			result = getTextForElement(driver.findElement(By.xpath("//div[@class='start-date']")));
			result = result.substring(result.indexOf(":")+1);
			Assert.assertEquals(result,CreatePrograms.programs.get("PROGRAMNAME"));
		}
		else if(field.contains("End Date")){
			result = getTextForElement(driver.findElement(By.xpath("//div[@class='end-date']")));
			result = result.substring(result.indexOf(":")+1);
			Assert.assertEquals(result,CreatePrograms.programs.get("PROGRAMNAME"));
		}
	}
	
	public void iVerifyDefaultNetworkContractStartDateShouldBeOfBundledPaymentContractStartDate(){
		isElementPresent(By.xpath("//div[@class='react-datepicker-input-field-container start-date-picker ']//label[@class='date-picker-input-label']"));
	}
	
	public void iVerifyDefaultNetworkContractEndDateShouldBeofBundledPaymentContractEndDate(){
		isElementPresent(By.xpath("//div[@class='react-datepicker-input-field-container end-date-picker ']//label[@class='date-picker-input-label']"));
	}
}



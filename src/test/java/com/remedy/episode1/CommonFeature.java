package com.remedy.episode1;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.baseClass.BaseClass;
import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.LandingPage;

public class CommonFeature extends BaseClass {
	 LandingPage landingPage = new LandingPage(driver);
	 DischargeCarlForm dischargecarl=new DischargeCarlForm(driver);
	 String BaseURL=DriverScript.Config.getProperty("ECBaseUrl");
	 public static String href_URL;
	public CommonFeature(WebDriver driver) {
		super(driver);
		}

	public void iClickElement(String locator) {
	    iWillWaitToSee(By.cssSelector(""+locator+""));  
		WebElement element=driver.findElement(By.cssSelector(locator));
	    clickElement(element);
	    }

	public void iClickXpathElement(String locator) {
		delay();
		iWillWaitToSee(By.xpath(""+locator+""));  
		WebElement element=driver.findElement(By.xpath(locator));
	    clickElement(element);
	    }

	public void iWaitSeconds(int time) throws InterruptedException {
		Thread.sleep(time);
	   }

	public void iWaitForValueInElement(String value,String locator){
		iWillWaitToSee(By.cssSelector(locator));
	    verifyTextForElement(driver.findElement(By.cssSelector(locator)),value);
	   }

	public void clickVisibleLink(String link) {
		iWillWaitToSee(By.linkText(link));
		clickElement(driver.findElement(By.linkText(link)));
		}

	public void assertNotPageAddress(String page) {
		
		
	}

	public void iAmLoggedInAs(String email) {
		 driver.navigate().to("https://cdn-qa.remedypartners.com/");
	     driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	     driver.manage().window().maximize();
	     iFillInText(driver.findElement(By.name("email")), email);
	     iWillWaitToSee(By.name("password"));
	     iFillInText(driver.findElement(By.name("password")), "Episode1!");
	     clickElement(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));
		 delay();
	}

	public void i_Wait_To_See(String text,String tag) {
		delay();
		iWillWaitToSee(By.xpath("//"+tag+"[contains(text(),'"+text+"')]"));
		isElementVisible(driver.findElement(By.xpath("//"+tag+"[contains(text(),'"+text+"')]")));
	}

	public void iPress(String text) {
		//iWillWaitToSee(By.);
		
	}

	public void iAmOn(String uRL) {
		driver.navigate().to(BaseURL+uRL);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }
	
   public void iSearchFilter(String filter) {
		iFillInText(driver.findElement(By.xpath("//input[contains(@placeholder,'Find column')]")),filter);
	}

  public void inavigatetothepatientssummarypage(String URL) {
	  URL=driver.findElement(By.xpath("//a[contains(@onclick,'Expand Icon')]")).getAttribute("href");
	  driver.navigate().to(URL);
	}

public void patientshouldhaveopenedepisode() {
	
	
}

public void iclickOnEpisodeMarker() {
	iWillWaitToSee(By.xpath("//*[@id='s2id_episodeSelectionBox']"));
    clickElement(driver.findElement(By.xpath("//*[@id='s2id_episodeSelectionBox']")));
	
}

public void iWillWaitToSeeState(String state) {
	delay();
	iWillWaitToSee(By.xpath("//*[@id='s2id_episodeSelectionBox']/a/span"));
	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+state+"')]")));
}

public void iExpandtothepatientsummarypage() {
	iWillWaitToSee(By.xpath("//a[contains(@onclick,'Expand Icon')]"));
	href_URL=driver.findElement(By.xpath("//a[contains(@onclick,'Expand Icon')]")).getAttribute("href");
	clickElement(driver.findElement(By.xpath("//a[contains(@onclick,'Expand Icon')]")));
}

public void Ireloadthepage() {
	driver.navigate().refresh();
	delay();
}

public void iWillNotSee(String text, String element) {
	WebDriverWait wait=waitTo();
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(element)));
}

public void inavigateto(String uRL) {
	String mongoId=textBetweenWords(href_URL,"person/","/overview");
	String replacedString = uRL.replace("mongoID", mongoId);
	driver.navigate().to(BaseURL+replacedString);
	}
public String textBetweenWords(String sentence, String firstWord, String secondWord)
{
    return sentence.substring(sentence.indexOf(firstWord) + firstWord.length(), 
        sentence.indexOf(secondWord));
}

public void iShouldnotsee(String text,String tag) {
	WebDriverWait wait=waitTo();
	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//"+tag+"[contains(text(),'"+text+"')]")));
	
}

public void iWaitToSeeonboarding(String text) {
	iWillWaitToSee(By.xpath("//*[@id='current_onboarding_status']"));
	verifyTextForElement(driver.findElement(By.xpath("//*[@id='current_onboarding_status']")),text);
}

public void iVerifyEpisodeMarkerAdmitTerminatedate(int days,int terminate,String status) throws ParseException {
	String date=currentdate(days,"MM/dd/yyyy");
    String terminate_date=currentdate(terminate,"MM/dd/yyyy");
	String Newdate="-"+" "+terminate_date;
	if(days>0){
	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+date+"') and contains(text(),'"+Newdate+"') and contains(text(),'"+status+"')]")));
	}
}

public void i_Select_value(String value, String variable, String xpath) {
   iWillWaitToSee(By.xpath(xpath));
   Select select=new Select(driver.findElement(By.xpath(xpath)));
   select.selectByVisibleText(value);
   
	
}

public void i_press(String text) {
	iWillWaitToSee(By.linkText(text));
	clickElement(driver.findElement(By.linkText(text)));
	
}

public void iFillinText(String variable, String xpath, String value) {
	iWillWaitToSee(By.xpath(xpath));
	iFillInText(driver.findElement(By.xpath(xpath)),value);
}

public void iClickonthefilter(String filter) {
	iWillWaitToSee(By.xpath("//label[contains(@data-filter-text,'"+filter+"')]"));
	clickElement(driver.findElement(By.xpath("//label[contains(@data-filter-text,'"+filter+"')]")));
}

public void wait_To_See_xpath_element(String text, String xpath) {
	iWillWaitToSee(By.xpath(xpath));
	isElementVisible(driver.findElement(By.xpath(xpath)));
}

public void iSelectpatientlistfilter(String variable,String xpath,int days) {
	iWillWaitToSee(By.xpath(xpath));
	String date=currentdate(days,"MM/dd/yyyy");
	setAttributevalue(driver.findElement(By.xpath(xpath)),"value",date);
}


}

	



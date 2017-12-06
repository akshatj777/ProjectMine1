package com.remedy.episode1;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
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
}

	



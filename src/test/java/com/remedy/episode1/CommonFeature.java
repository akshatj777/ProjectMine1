package com.remedy.episode1;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.baseClass.BaseClass;
import com.remedy.userAdmin.LandingPage;

public class CommonFeature extends BaseClass {
	 LandingPage landingPage = new LandingPage(driver);
	 BaseClass baseClass = new BaseClass(driver);
	 DischargeCarlForm dischargecarl=new DischargeCarlForm(driver);
	 
	public CommonFeature(WebDriver driver) {
		super(driver);
		}

	public void iClickElement(String locator) {
	    iWillWaitToSee(By.cssSelector(""+locator+""));  
		WebElement element=driver.findElement(By.cssSelector(locator));
	    clickElement(element);
	    }

	public void iClickXpathElement(String locator) {
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
		iWillWaitToSee(By.xpath("//"+tag+"(contains(text(),'"+text+"')"));
		isElementVisible(driver.findElement(By.xpath("//"+tag+"(contains(text(),'"+text+"')")));
	}

	public void iPress(String text) {
		//iWillWaitToSee(By.);
		
	}

	public void iAmOn(String uRL) {
		driver.get(uRL);
	}
	
   public void iSearchFilter(String filter) {
		iFillInText(driver.findElement(By.xpath("//input[contains(@placeholder,'Find column')]")),filter);
	}

  public void inavigatetothepatientssummarypage() {
	 String href=driver.findElement(By.xpath("//a[@symfony-routing='_patient_overview_tab']")).getAttribute("href");
	 driver.navigate().to("https://qa.remedypartners.com"+href);
	}

public void patientshouldhaveopenedepisode() {
	
	
}

public void iclickOnEpisodeMarker() {
	iWillWaitToSee(By.cssSelector("#select2-drop-mask"));
	clickElement(driver.findElement(By.cssSelector("#select2-drop-mask")));
	
}

public void iWillWaitToSeeState(String state) {
	iWillWaitToSee(By.xpath("//*[@id='s2id_episodeSelectionBox']/a/span"));
	isElementVisible(driver.findElement(By.xpath("//*[@id='s2id_episodeSelectionBox']/a/span[contains(text(),'"+state+"')]")));
}

}

	



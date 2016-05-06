package com.remedy.resources;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

/**
 * Created by salam on 8/5/15.
 */
public class DriverScript {


        protected static WebDriver driver;

        public DriverScript() {
            initialize();
        }

        public void initialize() {
            if (driver == null)
                createNewDriverInstance("chrome");
        }

        private void createNewDriverInstance(String browser) {
        	if(browser.equalsIgnoreCase("firefox")){
        		driver = new FirefoxDriver();
        	}else if(browser.equalsIgnoreCase("chrome")){
        		System.setProperty("webdriver.chrome.driver", "C:\\Users\\ashish.ranjan\\Desktop\\BrowserDrivers\\chromedriver.exe");
                driver = new ChromeDriver();        		
        	}else if(browser.equalsIgnoreCase("ie")){
        		System.setProperty("webdriver.ie.driver","C:\\Users\\ashish.ranjan\\Desktop\\BrowserDrivers\\IEDriverServer.exe");
        		driver = new InternetExplorerDriver();
        	}else if(browser.equalsIgnoreCase("htmlUnitDriver")){
        		driver = new HtmlUnitDriver(true);	
        	}else{
        		System.out.println("Browser is not correct");
        	}
            
        }

        public WebDriver getDriver() {
            return driver;
        }




        public void quitDriver(){

           driver.manage().deleteAllCookies();
            driver.quit();
            driver = null;

        }
}
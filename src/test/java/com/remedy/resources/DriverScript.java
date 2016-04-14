package com.remedy.resources;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;

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
                createNewDriverInstance();
        }

        private void createNewDriverInstance() {
            System.setProperty("webdriver.chrome.driver", "src/test/java/com/remedy/resources/chromedriver");
            driver = new ChromeDriver();
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
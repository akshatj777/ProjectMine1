package com.remedy.resources;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;

/**
 * Created by salam on 8/5/15.
 */
public class DriverScript {

    /*public static RemoteWebDriver				driver;
    private static DesiredCapabilities capability	= new DesiredCapabilities();
    private static final RemedyAppConfig	appConfig	= RemedyAppConfig.getInstance();*/

        protected static WebDriver driver;

        public DriverScript() {
            initialize();
        }

        public void initialize() {
            if (driver == null)
                createNewDriverInstance();
        }

        private void createNewDriverInstance() {
            driver = new FirefoxDriver();
        }

        public WebDriver getDriver() {
            return driver;
        }



   /*public static RemoteWebDriver initilize() {


        try {
            capability.setBrowserName("chrome");
            capability.setPlatform(Platform.ANY);

            capability.setCapability("chrome.switches", Arrays.asList("--start-maximized"));
            driver = new RemoteWebDriver(new URL(RemedyAppConfig.getwebdriverhub), capability);
        } catch (final Exception e) {
            e.printStackTrace();
        }
        driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
        driver.manage().window().maximize();
        driver.get(RemedyAppConfig.getUrl());
        return driver;
    }*/

        public void quitDriver(){

           driver.manage().deleteAllCookies();
            driver.quit();
            driver = null;

        }
}
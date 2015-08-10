package com.remedy.resources;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

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
            driver = new FirefoxDriver();
        }

        public WebDriver getDriver() {
            return driver;
        }


        public void quitDriver(){

            driver.quit();
            driver = null;

        }
}
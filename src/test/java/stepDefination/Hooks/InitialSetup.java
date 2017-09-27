package stepDefination.Hooks;


//import com.github.mkolisnyk.cucumber.reporting.CucumberCoverageOverview;
//import com.github.mkolisnyk.cucumber.reporting.CucumberDetailedResults;
import com.remedy.resources.DriverScript;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * Created by salam on 8/4/15.
 */
public class InitialSetup {

    private WebDriver driver;
    public static Logger logger = Logger.getLogger(Class.class);
    public static String log4jpropertiesFilePath = System.getProperty("user.dir")+ File.separator + "log4j.properties";


    @Before
    public  void beforeScenario() {
        driver = new DriverScript().getDriver();
        
        PropertyConfigurator.configure(log4jpropertiesFilePath);

    }

    @After
    public void afterScenario(Scenario scenario) throws IOException {

        try {
            if (scenario.isFailed()) {
                 byte[] screenshot = ((TakesScreenshot) driver)
                        .getScreenshotAs(OutputType.BYTES);
                scenario.embed(screenshot, "image/png");
            }
        } finally {
        	
        	new DriverScript().quitDriver();
            logger.info("User quits the driver and closes the browser");
        
        }

    }




}
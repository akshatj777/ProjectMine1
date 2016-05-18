package com.remedy.resources;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;



import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import org.openqa.selenium.firefox.FirefoxDriver;

import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;


/**
 * Created by salam on 8/5/15.
 */
public class DriverScript {

	protected static WebDriver driver;
	public static Properties Config = new Properties();
	public static FileInputStream fis;
	public static File directory = new File(".");
	public static String os;
	public static String browser;

	public DriverScript() {
		try {
			initialize();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void initialize() throws Exception {
		if (driver == null)
			/*
			 * Code commented since Issue while executing using config file, Multiple object of Web driver launched
			  
			  try {
				fis = new FileInputStream(System.getProperty("user.dir")
						+ "\\src\\test\\java\\com\\remedy\\resources\\config.properties");
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
		try {
			Config.load(fis);
		} catch (IOException e) {
			e.printStackTrace();
		}
		*/

		createNewDriverInstance();
	}

	private void createNewDriverInstance() throws Exception {
		
		browser = Constants.Browser;
		System.out.println("initialize Browser: " + browser);
		os = Constants.OS;
		System.out.println("initialize OS: " + os);

		switch (browser) {
		case "chrome":
			String chromDrvrPath;
			chromDrvrPath = directory.getCanonicalPath() + File.separator + "lib" + File.separator;

			os: switch (os) {
			case "linux32":
			case "linux64":
			case "mac":
				
				System.setProperty("webdriver.chrome.driver",
						chromDrvrPath + "chromedriver_" + os + File.separator + "chromedriver");
				break os;
			case "win":
				
				System.setProperty("webdriver.chrome.driver",
						chromDrvrPath + "chromedriver_" + os + File.separator + "chromedriver.exe");
				break os;
			default:
				// Utility.illegalStateException("Invalid OS paramter, expected
				// values 'linux32||linux64||mac||win'");
			}

			driver = new ChromeDriver();

			break;
		case "ie":
			String IEDrvrPath;
			IEDrvrPath = directory.getCanonicalPath() + File.separator + "lib" + File.separator;
			DesiredCapabilities caps = DesiredCapabilities.internetExplorer();
			caps.setCapability("nativeEvents", false);
			caps.setCapability("nativeEvents", true);
			caps.setCapability("ignoreZoomSetting", true);
			caps.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
			System.setProperty("webdriver.ie.driver",
					IEDrvrPath + "IEDriverServer_Win32" + File.separator + "IEDriverServer.exe");
			driver = new InternetExplorerDriver(caps);

			break;

		case "phantomJS":
			String phantomJSDrvrPath;
			phantomJSDrvrPath = directory.getCanonicalPath() + File.separator + "lib" + File.separator;
			DesiredCapabilities dCaps = new DesiredCapabilities();
			dCaps.setJavascriptEnabled(true);
			dCaps.setCapability("takesScreenshot", true);

			os: switch (os) {
			case "linux32":
			case "linux64":
			case "mac":
				
				dCaps.setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY,
						phantomJSDrvrPath + "phantomjsdriver_" + os + File.separator + "phantomjs");

				break os;
			case "win":
				
				dCaps.setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY,
						phantomJSDrvrPath + "phantomjsdriver_" + os + File.separator + "phantomjs.exe");

				break os;
			default:
				// Utility.illegalStateException("Invalid OS paramter, expected
				// values 'linux32||linux64||mac||win'");
			}

			driver = new PhantomJSDriver(dCaps);

			break;
		default:
			
			driver = new FirefoxDriver();
		}
		
	}

	public WebDriver getDriver() {
		return driver;
	}

	public void quitDriver() {

		driver.manage().deleteAllCookies();
		driver.quit();
		driver = null;

	}
}
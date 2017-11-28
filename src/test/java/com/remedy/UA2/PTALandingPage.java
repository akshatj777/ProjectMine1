package com.remedy.UA2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PTALandingPage extends BaseClass {
	String userApplications = null;
	public PTALandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersPresentAsPerPermission(String text) {
		// String[] role = text.split(", ");
		List<String> expectedList = Arrays.asList(text.split("\\s*,\\s*"));

		List<String> listOfRoles = new ArrayList();
		int size = driver.findElements(By.xpath("//*[@class='four wide']")).size();
		for (int n = 1; n <= size; n++) {
			listOfRoles.add(driver.findElements(By.xpath("//*[@class='four wide']")).get(n).getText());
			n = n + 2;
		}
		System.out.println("***************" + listOfRoles);

		for (String s : listOfRoles) {
			System.out.println(">" + s + "<");
			Assert.assertTrue(expectedList.contains(s));

		}
	}
public void iSearchListOfNamesAndValidateResult(String nameList){
	if(nameList.contains(","))
	{
		List<String> expectedList = Arrays.asList(nameList.split("\\s*,\\s*"));
		Iterator it = expectedList.iterator();
		while(it.hasNext()) {
			String obj = (String)it.next();
        	iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
    		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), obj);
    		iWillWaitToSee(By.cssSelector("td.four.wide"));
    		verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0), obj);	
        }
	}
	else
	{
		iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), nameList);
		iWillWaitToSee(By.cssSelector("td.four.wide"));
		verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0), nameList);	
	}
}
	public void iVerifyUsersNotPresentAsPerPermission(String role) {
		verifyTextNotPresentForElementFromList("//td[contains(@class,'four wide')]", role);
	}
}

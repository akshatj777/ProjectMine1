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
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class PTALandingPage extends BaseClass {
	WebDriverWait wait = new WebDriverWait(driver, 60);
	SuperUserLandingPage superUserLandingPage= new SuperUserLandingPage(driver);
	public PTALandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyProvisionedUsersAsPerRole(String text) {
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
public void iVerifyPresenceOfCreatedUser(String text){
	String[] userRole = text.split("-");
	String user=userRole[0];
	String roles=userRole[1];
	String[] role = roles.split(", ");
	for(int i=0;i<role.length;i++){
		System.out.println("User and role is - "+user.trim()+"-"+role[i].trim());
		superUserLandingPage.SearchUserWithText("test.automatemail", user.trim()+"-"+role[i].trim());
		superUserLandingPage.iVerifySearchResult("","Email",user.trim()+"-"+role[i].trim());
	}
	
}
	public void iVerifyUsersNotPresentAsPerPermission(String role) {
		verifyTextNotPresentForElementFromList("//td[contains(@class,'four wide')]", role);
	}
}

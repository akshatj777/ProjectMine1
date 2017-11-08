package com.remedy.UA2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PTALandingPage extends BaseClass {

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

	public void iVerifyUsersNotPresentAsPerPermission(String role) {
		verifyTextNotPresentForElementFromList("//td[contains(@class,'four wide')]", role);
	}
}

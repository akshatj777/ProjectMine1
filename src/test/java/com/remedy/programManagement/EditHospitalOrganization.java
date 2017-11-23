package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditHospitalOrganization extends BaseClass{

	public EditHospitalOrganization(WebDriver driver) {
		super(driver);
	}

	public void iVerifyManagingOrgFieldOnOrganizationPage(String org){
		if (org.contains("YES")){
			String actual = getTextForElement(driver.findElement(By.cssSelector(".display-managing-org")));
			actual = actual.substring((actual.indexOf(":"))+1).trim();
			Assert.assertEquals(CreateManagingOrganization.moOrg.get("MONAME"),actual);
		}
		
	}

}

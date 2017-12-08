package com.remedy.programManagement;

import java.util.HashMap;

import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class CreatePayorOrganization extends BaseClass{
	
	public static HashMap<String, String> tempPayorOrg = new HashMap<String, String>();
	public static HashMap<String, String> payorOrg = new HashMap<String, String>();
	public static String oldPayorOrg;

	public CreatePayorOrganization(WebDriver driver) {
		super(driver);
	}
	
	

}

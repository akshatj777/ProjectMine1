package com.remedy.programManagement;

import java.util.HashMap;

import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class CreateSNFOrganization extends BaseClass {
	
	public static HashMap<String, String> tempSNFOrg = new HashMap<String, String>();
	public static HashMap<String, String> SNFOrg = new HashMap<String, String>();
	public static HashMap<String, String> SNFOrg_noMO = new HashMap<String, String>();
	public static String oldSNF_WithoutMO;
	public static String oldSNF_WithMO;

	public CreateSNFOrganization(WebDriver driver) {
		super(driver);
	}
}
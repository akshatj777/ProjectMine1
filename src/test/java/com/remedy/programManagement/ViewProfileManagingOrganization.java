package com.remedy.programManagement;

import java.util.HashMap;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import java.sql.*;
import com.remedy.baseClass.BaseClass;

public class ViewProfileManagingOrganization extends BaseClass{

	static HashMap<String, HashMap<String, String>> row = new HashMap<String,HashMap<String,String>>();
	public ViewProfileManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyNameOnHeaderOnViewProfile(String text) {
		if(text.contains("MONAME")){
			isElementPresentOnPage(By.xpath("//a[@href='mailto:"+CreateManagingOrganization.orgMOName+"']"));
		}
		else {
			isElementPresentOnPage(By.xpath("//a[@href='mailto:"+text+"']"));
		}
	}
	
	public static String fetchParticipantID() throws ClassNotFoundException, SQLException  {
		   
		String query = "SELECT participant_id from program_management.organization where name = '"+CreateManagingOrganization.orgMOName+"'";
		    Class.forName("com.mysql.jdbc.Driver");
		    String connectionString = "jdbc:mysql://rds-qa.remedypartners.com:3306"; 
		    Connection con=DriverManager.getConnection(connectionString,"pgoel","1Welcome2"); 
		    Statement stmt=con.createStatement();  
		    ResultSet rs=stmt.executeQuery(query);
		    ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
		    while(rs.next())
		    {
		     HashMap<String, String> column = new HashMap<String, String>();
		        for(int i=1;i<=rsmd.getColumnCount();i++)
		        {
		        column.put(rsmd.getColumnName(i),rs.getString(i));
		        }
		        String a = Integer.toString(rs.getRow());
		        row.put(a, column);
		        }
		    String pID = row.get("1").get("participant_id");
		    con.close();
		    
		    return pID;
	}
	
	public void iVerifyParticipantIdOnVewProfileOfOrganization() throws ClassNotFoundException, SQLException
	{
		String text = getTextForElement(driver.findElement(By.cssSelector(".participant-id")));
	    String pID = fetchParticipantID();
		Assert.assertEquals("Participant Id: "+pID+"|", text);
	}
	
	public void iVerifyDetailsInFieldOnViewProfileOfOrganization(String text, String sel) {
		if(!text.isEmpty()) {
			String result = driver.findElement(By.cssSelector(".organization-"+sel+"")).getText();
			Assert.assertEquals(result.replace(",", "").trim(), text);
		}
	}
	
	public void iVerifyOrganizationPresentUnderManagingOrganization(String org, String org1) {
		verifyTextForElementfromList(".navLink.noselect", org);
	}
	
	public void iVerifyOrganizationByDefaultSelectedUnderManagingOrganization(String org) {
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}
	
	public void iVerifyHeaderLabelUnderSelectedOrganizationInManagingOrganization(String header,String org) {
		iWillWaitToSee(By.cssSelector(".data-table-header-cell>a"));
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), header);
	}
	
	public void iVerifytheCountFortheAssociatedorganization(String count) {
		iWillWaitToSee(By.cssSelector(".fixed-data-table.noselect>div"));
		iVerifyTextFromListOfElement(By.cssSelector(".fixed-data-table.noselect>div"), count);
	}
	
	public void iClickOnOrganizationUnderManagingOrganization(String org) {
		clickElement(driver.findElement(By.xpath("//a[text()='"+org+"']")));
		boolean bol = driver.findElement(By.xpath("//a[@class='navLink noselect activeNavLink']")).getText().contains(org);
		Assert.assertTrue(bol);
	}
	
	public void iVerifyManagingOrganizationNameOnViewProfileOfOrganization(String name) {
		if(isElementPresentOnPage(By.cssSelector(".id.market-name"))) {
		String text = getTextForElement(driver.findElement(By.cssSelector(".managing-org-view>.id.market-name"))); 
        Assert.assertEquals("Managing Organization: "+name,text.replace("|","").trim());
	        }
    }
	
	public void iClickontheCrossButton() {
		clickElement(driver.findElement(By.cssSelector(".back-button.col-md-offset-11")));
	}
	
	public void userShouldGetRedirectedToTheManagingOrganizationTabPage() {
		delay();
		WebElement elem= driver.findElement(By.cssSelector(".row.col-md-10"));
		elem.getText();
	}
	
	public void iVerifyEINTINIdOnViewProfilePGPOrganization(String id) {
		if(isElementPresentOnPage(By.cssSelector(".id-ein"))) {	
		String text = getTextForElement(driver.findElement(By.cssSelector(".id-ein"))); 
	    Assert.assertEquals("EIN/TIN: "+id,text.replace("|", ""));
		}
	}
	
	public void iVerifyNPIOnViewProfilePGPOrganization(String num) {
		if(isElementPresentOnPage(By.cssSelector(".id-npi"))) {	
			String text = getTextForElement(driver.findElement(By.cssSelector(".id-npi"))); 
		    Assert.assertEquals("NPI: "+num,text.replace("|","").trim());
			}
	}
	
	public void iVerifyTheEditButtonontheViewPage(String button) {
		iVerifyTextFromListOfElement(By.cssSelector(".col-md-offset-11"), button);
	}
	
}


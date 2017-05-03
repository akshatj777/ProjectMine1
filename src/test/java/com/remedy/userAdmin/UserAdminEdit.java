package com.remedy.userAdmin;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class UserAdminEdit extends BaseClass {
	public UserAdminEdit(WebDriver driver) {

		super(driver);
	}
	
	public void i_Enter_Search_Box_With(String search){
		iFillInText(driver.findElement(By.cssSelector(".elastic-input")), search);
	}
	
public void iClickOnTheUsernameCardUnderUserAdminPage(){
	
	clickElement(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
	
	}

 public void iVerifyTheUserDetailsPageForEditing(){
	isElementVisible(driver.findElement(By.cssSelector(".page-summary-directive.valentino-image.valentino-noise")));
}
 
 public void iClickedOnEditButtonUnderUserRoleRow(){
		clickElement(driver.findElement(By.xpath("(//button[@class='btn btn-lg btn-tertiary btn-binding-edit'])[3]")));
	}
 
 public void i_Clicked_On_Role_Tab_To_Edit_The_User_Role_Assigned(){
	 clickElement(driver.findElement(By.xpath("(//form[@ng-submit='saveEdit()'])[3]")));
 }
 
 public void i_Wait_For_Dropdown_List_To_Select_Role(){
	 isElementVisible(driver.findElement(By.xpath("(//ul[@role='listbox'])[1]")));
 }
 
 public void i_Clicked_Under_Edit_User_Role_Tab(String Text){
	 clickElement(driver.findElement(By.xpath("//div[text()='"+Text+"']")));
 }
 
 public void i_Clicked_On_Save_Button_Under_Edit_User_Role_Tab(){
	 clickElement(driver.findElement(By.xpath("(//button[@type='submit'])[3]")));
 }
 
 public void i_Verify_The_User_Role_Again(){
	 isElementVisible(driver.findElement(By.xpath("(//span[@class='binding-viewer ng-scope'])[3]")));
 }
 
 public void i_Verify_Product_Tiles_Appear_For_User_Under_User_Edit_Details_Page(int Count){
	 verifyElementCount((".product-item-label.ng-binding"), Count);
 }
 
 public void i_Clicked_On_Edit_Button_Under_User_Phone_Row(){
	 clickElement(driver.findElement(By.xpath("(//form[@ng-submit='saveEdit()'])[4]")));
	
 }
 
 public void i_Clicked_On_Phone_Tab_To_Edit_The_User_Phone_number(){
	 clickElement(driver.findElement(By.xpath("//input[@name='phone']")));
 }
 
 public void i_Cleared_The_Textbox_Field_Under_Edit_User_Phone_Tab(){
	 driver.findElement(By.xpath("//input[@name='phone']")).clear();
 }
 
 public void i_Enter_Valid_Phone_Number(String Text){
	 iFillInText(driver.findElement(By.xpath("//input[@name='phone']")), Text);
 }
 
 public void i_Clicked_On_Save_Button_Under_Edit_User_Phone_Tab(){
	 clickElement(driver.findElement(By.xpath("(//button[@type='submit'])[4]")));
 }
 
 public void i_Verify_The_Permissions_Field(){
	 isElementVisible(driver.findElement(By.xpath("//div[@class='layout-area']")));
 }
 
 public void i_Clicked_On_Edit_Button_Under_Permissions_Data_Field(){
	 isElementVisible(driver.findElement(By.xpath("//h3[text()='Data']")));
	 clickElement(driver.findElement(By.xpath("//a[@class='btn btn-tertiary pull-right edit']")));
 }
 
 public void i_Clicked_On_Payer_Field_To_Edit_The_Payer(){
	 clickElement(driver.findElement(By.xpath("(//span[@class='ui-select-match-text pull-left'])[2]")));
 }

 public void i_Enter_Text_Under_Payer_Field(String Text){
	 iFillInText(driver.findElement(By.xpath("(//input[@role='button'])[2]")), Text);
 }
 
 public void i_Clicked_On_Payer_Dropdown(){
	 clickElement(driver.findElement(By.xpath("//a/div[@class='ng-binding ng-scope']")));
 }
 
 public void i_Clicked_On_Search_Field_Under_Health_System_Name(){
	 clickElement(driver.findElement(By.xpath("//span[@class='ui-select-placeholder text-muted ng-binding']")));
 }
 
 public void i_Enter_On_Search_Field_Under_Health_System_Name(String Text){
	 iFillInText(driver.findElement(By.xpath("(//input[@type='search'])[3]")),Text);
 }
 
 public void i_Clicked_On_RP_Payer_Test_B_From_Dropdown_List_Of_Health_System_Name(){
	 clickElement(driver.findElement(By.xpath("//a/span")));
 }
 
 public void i_Clicked_On_Search_Field_Under_Provider_Name(){
	 clickElement(driver.findElement(By.xpath("(//input[@placeholder='Search'])[2]")));
 }
 
 public void i_Enter_On_Search_Field_Under_Provider_Name(String Text){
	 iFillInText(driver.findElement(By.xpath("(//input[@placeholder='Search'])[2]")),Text);
 }
 
 public void i_Clicked_On_Select_All_Facilities_Under_Provider_Name(){
	 clickElement(driver.findElement(By.cssSelector(".checkbox")));
 }
 
 public void i_Clicked_On_Save_Button_Under_Permissions_Data_Field(){
	 clickElement(driver.findElement(By.xpath("//button[@class='btn btn-primary btn-small']")));
 }
 
}

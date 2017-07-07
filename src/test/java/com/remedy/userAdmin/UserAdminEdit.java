package com.remedy.userAdmin;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class UserAdminEdit extends BaseClass {
	
	public UserAdminEdit(WebDriver driver) {
		super(driver);
	}

	public void i_Enter_Search_Box_With(String search) {
		iFillInText(driver.findElement(By.cssSelector(".elastic-input")), search);
	}

	public void i_Clicked_On_Remove_Button_Of_Stamford_Hospital_Row_Under_Permission_Field(){
		clickElement(driver.findElement(By.xpath("//ul/li[1]/div/div/div/small")));
	}
	
	public void i_Wait_For_Popup_To_Remove_Stamford_Hospital_Under_Permission_Field(){
		isElementVisible(driver.findElement(By.xpath("//ul/li[1]/div/div/div/div[@group-close='remove-participant']")));
	}
	
	public void i_Clicked_On_Remove_Button_Appearing_On_Popup(){
		clickElement(driver.findElement(By.xpath("//ul/li[1]/div/div/div/div[@group-close='remove-participant']/div/div[2]/button[2]")));
	} 

	 
	public void iClickOnTheUsernameCardUnderUserAdminPage() {
		clickElement(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
	}

	public void iVerifyTheUserDetailsPageForEditing() {
		isElementVisible(driver.findElement(By.cssSelector(".page-summary-directive.valentino-image.valentino-noise")));
	}

	public void iClickedOnEditButtonUnderUserRoleRow() {
		clickElement(driver.findElement(By.xpath("(//button[@class='btn btn-lg btn-tertiary btn-binding-edit'])[3]")));
	}

	public void i_Clicked_On_Role_Tab_To_Edit_The_User_Role_Assigned() {
		clickElement(driver.findElement(By.xpath("//form/div[2]/div[1]/div[1]/div[1]/span")));
	}

	public void i_Should_See_Dropdown_List_To_Select_Role() {
		isElementVisible(driver.findElement(By.xpath("(//form/div[2]/div[1]/div[1]/ul/li)[1]")));
	}

	public void i_Clicked_Under_Edit_User_Role_Tab(String Text) {
		clickElement(driver.findElement(By.xpath("//div[text()='" + Text + "']")));
	}

	public void i_Clicked_On_Save_Button_Under_Edit_User_Role_Tab() {
		clickElement(driver.findElement(By.xpath("(//button[@type='submit'])[3]")));
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-primary btn-small']")));
	}

	public void i_Verify_The_User_Role_Again() {
		isElementVisible(driver.findElement(By.xpath("(//span[@class='binding-viewer ng-scope'])[3]")));
	}

	public void i_Verify_Product_Tiles_Appear_For_User_Under_User_Edit_Details_Page() {
		getElementCount(".checkbox.checkbox-single.ng-not-empty.ng-valid");
	}

	public void i_Verify_Product_Tiles_Appear_For_User_Under_User_Edit_Details_Page_After_Role_Change(){
		getElementCount(".product-item-label.ng-binding");
	}

	public void i_Clicked_On_Edit_Button_Under_User_Phone_Row() {
		clickElement(driver.findElement(By.xpath("(//form[@ng-submit='saveEdit()'])[5]")));
	}

	public void i_Clicked_On_Phone_Tab_To_Edit_The_User_Phone_number() {
		clickElement(driver.findElement(By.xpath("//input[@name='phone']")));
	}

	public void i_Cleared_The_Textbox_Field_Under_Edit_User_Phone_Tab() {
		driver.findElement(By.xpath("//input[@name='phone']")).clear();
	}

	public void i_Enter_Valid_Phone_Number(String Text) {
		iFillInText(driver.findElement(By.xpath("//input[@name='phone']")), Text);
	}

	public void i_Clicked_On_Save_Button_Under_Edit_User_Phone_Tab() {
		clickElement(driver.findElement(By.xpath("(//button[@type='submit'])[5]")));
	}

	public void i_Verify_The_Permissions_Field() {
		isElementPresentOnPage(By.xpath("//div[@class='layout-area']"));
	}

	public void i_Clicked_On_Edit_Button_Under_Permissions_Data_Field() {
		isElementVisible(driver.findElement(By.xpath("//h3[text()='Data']")));
		clickElement(driver.findElement(By.xpath("//a[@class='btn btn-tertiary pull-right edit']")));
	}

	public void i_Clicked_On_Payer_Field_To_Edit_The_Payer() {
		clickElement(driver.findElement(By.xpath("//div[@name='payer']")));
	}

	public void i_Enter_Text_Under_Payer_Field(String Text) {
		iFillInText(driver.findElement(By.xpath("(//input[@role='button'])[2]")), Text);
	}

	public void i_Clicked_On_Search_Field_Under_Health_System_Name() {
		clickElement(driver.findElement(By.xpath("//span[@class='ui-select-placeholder text-muted ng-binding']")));
	}

	public void i_Enter_On_Search_Field_Under_Health_System_Name(String Text) {
		iFillInText(driver.findElement(By.xpath("(//input[@type='search'])[3]")), Text);
	}

	public void i_Clicked_On_RP_Payer_Test_A_From_Dropdown_List_Of_Health_System_Name() {
		clickElement(driver.findElement(By.xpath("//div/span[@class='ui-select-choices-row-inner']/span")));
	}

	public void i_Clicked_On_Search_Field_Under_Provider_Name() {
		clickElement(driver.findElement(By.xpath("(//input[@placeholder='Search'])[3]")));
	}

	public void i_Enter_On_Search_Field_Under_Provider_Name(String Text) {
		iFillInText(driver.findElement(By.xpath("(//input[@placeholder='Search'])[3]")), Text);
	}

	public void i_Clicked_On_Select_All_Facilities_Under_Provider_Name() {
		clickElement(driver.findElement(By.xpath("(//label[@for='select-all-checkbox'])[2]")));
	}

	public void i_Clicked_On_Save_Button_Under_Permissions_Data_Field() {
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-primary btn-small']")));
	}

	public void i_Verify_The_Text_Under_Permissions_Data_Section() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='RP Payer Test A']")));
	}

	public void i_Clicked_On_Stamford_Hospital_From_Dropdown_List_Of_Health_System_Name() {
		clickElement(driver.findElement(By.xpath("//a/span")));
	}

	public void i_Verify_The_Share_File_Tile_Toggle_Off_Button() throws InterruptedException {
		List<WebElement> tiles = getElementsList(".row>ul>li>div>label");
		if(tiles.equals("sharefile")){
			System.out.println("Sharefile is present");
			String value = "ng-pristine ng-untouched ng-valid ng-empty";
			if((value.contains("ng-empty"))){
				System.out.println("the sharefile class value is ON "+ value.contains("ng-empty"));
				return;
			}else{
				System.out.println("the class file is OFF");
				driver.findElement(By.xpath("//div/input[@id='sharefile']")).click();
				System.out.println("sharefile tile turned off");
			}			
		}		
	}
	
	public void iClickedUnderEditUserRoleTabToEditTheRole(String Text){
		clickElement(driver.findElement(By.xpath("//div[text()='" + Text + "']")));
	}
	
	public void iClickedOnSaveButtonUnderEditUserRoleTabAfterEditing(){
		clickElement(driver.findElement(By.xpath("(//button[@type='submit'])[3]")));
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-primary btn-small']")));
	}
	
	public void iClickedOnEmblemHealthFromDropdownListOfPayer(){
		clickElement(driver.findElement(By.xpath("//div[text()='Emblem Health']")));
	}
	
	public void iClickedOnMedicareFromDropdownListOfPayer(){
		clickElement(driver.findElement(By.xpath("//div[text()='Medicare']")));
	}
	
	public void iClickedOnRemoveButtonOfRPPayerTestARowUnderPermissionField(){
		clickElement(driver.findElement(By.xpath("(//div/small)[2]")));
	}
	
	public void iWaitForPopupToRemoveRPPayerTestAUnderPermissionField(){
		isElementVisible(driver.findElement(By.xpath("//ul/li[2]/div/div/div/div[@group-close='remove-participant']")));
	}
	
	public void iClickedOnRemoveButtonAppearingOnPopupForRPPayerTestA(){
		clickElement(driver.findElement(By.xpath("//ul/li[2]/div/div/div/div[@group-close='remove-participant']/div/div[2]/button[2]")));	
	}
}

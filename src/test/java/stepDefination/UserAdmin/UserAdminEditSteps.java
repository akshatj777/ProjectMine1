package stepDefination.UserAdmin;

import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.UserAdminEdit;
import com.remedy.userAdmin.UserAdminSorting;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class UserAdminEditSteps extends DriverScript {
	UserAdminEdit UserEdit = new UserAdminEdit(driver);
	
	@And("^I click on the username card under user admin page$")
	public void i_Click_On_The_Username_Card_Under_User_Admin_Page() throws Throwable{
		UserEdit.iClickOnTheUsernameCardUnderUserAdminPage();
	}
	
	@And("^I verify the user details page for editing$")
	public void i_Verify_The_User_Details_Page_For_Editing() throws Throwable{
		UserEdit.iVerifyTheUserDetailsPageForEditing();
	}
	
	@Then("^I clicked on Edit button under user Role row$")
	public void i_Clicked_On_Edit_Button_Under_User_Role_Row() throws Throwable{
		UserEdit.iClickedOnEditButtonUnderUserRoleRow();
	}
	
	@And("^I clicked on role tab to edit the user role assigned$")
	public void i_Clicked_On_Role_Tab_To_Edit_The_User_Role_Assigned() throws Throwable{
		UserEdit.i_Clicked_On_Role_Tab_To_Edit_The_User_Role_Assigned();
	}
	
	@And("^I Wait for dropdown list to select role$")
	public void i_Wait_For_Dropdown_List_To_Select_Role() throws Throwable{
		UserEdit.i_Wait_For_Dropdown_List_To_Select_Role();
	}
	
	@Then("^I clicked \"([^\"]*)\" under edit user role tab$")
	public void i_Clicked_Under_Edit_User_Role_Tab(String Text) throws Throwable{
		UserEdit.i_Clicked_Under_Edit_User_Role_Tab(Text);
	}
	
	@Then("^I clicked on Save button under edit user role tab$")
	public void i_Clicked_On_Save_Button_Under_Edit_User_Role_Tab() throws Throwable{
		UserEdit.i_Clicked_On_Save_Button_Under_Edit_User_Role_Tab();
	}
	
	@And("^I verify the user role again$")
	public void i_Verify_The_User_Role_Again() throws Throwable{
		UserEdit.i_Verify_The_User_Role_Again();
	}
	
	@Then("^I clicked on Edit button under user Phone row$")
	public void i_Clicked_On_Edit_Button_Under_User_Phone_Row() throws Throwable{
		UserEdit.i_Clicked_On_Edit_Button_Under_User_Phone_Row();
	}
	
	@And("^I clicked on Phone tab to edit the user Phone number$")
	public void i_Clicked_On_Phone_Tab_To_Edit_The_User_Phone_number() throws Throwable{
		UserEdit.i_Clicked_On_Phone_Tab_To_Edit_The_User_Phone_number();
	}
	
	@And("^I cleared the textbox field under edit user phone tab$")
	public void i_Cleared_The_Textbox_Field_Under_Edit_User_Phone_Tab() throws Throwable{
		UserEdit.i_Cleared_The_Textbox_Field_Under_Edit_User_Phone_Tab();
	}
	
	@And("^I enter valid phone number \"([^\"]*)\"$")
	public void i_Enter_Valid_Phone_Number(String Text) throws Throwable{
		UserEdit.i_Enter_Valid_Phone_Number(Text);
	}
	
	@Then("^I clicked on Save button under edit user Phone tab$")
	public void i_Clicked_On_Save_Button_Under_Edit_User_Phone_Tab() throws Throwable{
		UserEdit.i_Clicked_On_Save_Button_Under_Edit_User_Phone_Tab();
	}
	
	@Then("^I verify the Permissions field$")
	public void i_Verify_The_Permissions_Field() throws Throwable{
		UserEdit.i_Verify_The_Permissions_Field();
	}
	
	@Then("^I clicked on Edit button under permissions data field$")
	public void i_Clicked_On_Edit_Button_Under_Permissions_Data_Field() throws Throwable{
		UserEdit.i_Clicked_On_Edit_Button_Under_Permissions_Data_Field();
	}
	
	@Then("^I clicked on Payer field to edit the payer$")
	public void i_Clicked_On_Payer_Field_To_Edit_The_Payer() throws Throwable{
		UserEdit.i_Clicked_On_Payer_Field_To_Edit_The_Payer();
	}
	
	@Then("^I enter text \"([^\"]*)\" under payer field$")
	public void i_Enter_Text_Under_Payer_Field(String Text) throws Throwable{
		UserEdit.i_Enter_Text_Under_Payer_Field(Text);
	 }
	
	@Then("^I clicked on payer dropdown$")
	public void i_Clicked_On_Payer_Dropdown() throws Throwable{
		UserEdit.i_Clicked_On_Payer_Dropdown();
	}
	
	@Then("^I clicked on search field under Health system Name$")
	public void i_Clicked_On_Search_Field_Under_Health_System_Name() throws Throwable{
		UserEdit.i_Clicked_On_Search_Field_Under_Health_System_Name();
	}
	
	@Then("^I enter \"([^\"]*)\" on search field under Health system Name$")
	public void i_Enter_On_Search_Field_Under_Health_System_Name(String Text) throws Throwable{
		UserEdit.i_Enter_On_Search_Field_Under_Health_System_Name(Text);
	}
	
	@Then("^I clicked on RP Payer Test B from dropdown list of Health system Name$")
	public void i_Clicked_On_RP_Payer_Test_B_From_Dropdown_List_Of_Health_System_Name() throws Throwable{
		UserEdit.i_Clicked_On_RP_Payer_Test_B_From_Dropdown_List_Of_Health_System_Name();
	}
	
	@Then("^I clicked on search field under Provider Name$")
	public void i_Clicked_On_Search_Field_Under_Provider_Name() throws Throwable{
		UserEdit.i_Clicked_On_Search_Field_Under_Provider_Name();
	}
	
	@Then("^I enter \"([^\"]*)\" on search field under Provider Name$")
	public void i_Enter_On_Search_Field_Under_Provider_Name(String Text) throws Throwable{
		UserEdit.i_Enter_On_Search_Field_Under_Provider_Name(Text);
	}
	
	@Then("^I clicked on select all facilities under Provider Name$")
	public void i_Clicked_On_Select_All_Facilities_Under_Provider_Name() throws Throwable{
		UserEdit.i_Clicked_On_Select_All_Facilities_Under_Provider_Name();
	}
	
	@Then("^I clicked on save button under permissions data field$")
	public void i_Clicked_On_Save_Button_Under_Permissions_Data_Field() throws Throwable{
		UserEdit.i_Clicked_On_Save_Button_Under_Permissions_Data_Field();
	}
	
	
}

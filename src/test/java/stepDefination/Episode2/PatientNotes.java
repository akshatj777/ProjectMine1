package stepDefination.Episode2;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PatientNotes extends DriverScript{

	PatientsPage patientsPage = new PatientsPage(driver);
	
	@Then ("^i click on the Agree Button$")
	public void i_click_on_the_Agree_Button()
	{
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
		driver.findElement(By.xpath("//span[text()='Agree']"));
	}
	
	@When ("^I click on the patient card button on the patient page$")
	public void I_click_on_the_patient_card_button_on_the_patient_page()
	{
		driver.findElement(By.xpath("/html/body/div[6]/div/div/div[6]/div[2]/div/div[1]/div[2]/div/h3/span[1]")).click();
		  
         }
}

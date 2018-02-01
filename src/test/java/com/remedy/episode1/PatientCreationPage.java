package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

/**
 * Created by salam on 5/22/16.
 */
public class PatientCreationPage extends BaseClass {

	public PatientCreationPage(WebDriver driver) {
		super(driver);
	}

	public void iverifyPatientInformationText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".modal-body.clearfix>h2")), text);
	}

	public void iEnterFirstName(String firstname) {
		iFillInText(driver.findElement(By.cssSelector("#Patient_Details_firstName")), firstname);
	}

	public void iEnterLastName(String lastname) {
		iFillInText(driver.findElement(By.cssSelector("#Patient_Details_lastName")), lastname);
	}

	public void iEnterDateofBirth(String dob) {
		iFillInText(driver.findElement(By.cssSelector("#Patient_Details_dob")), dob);
		clickElement(driver.findElement(By.cssSelector(".active.day")));
	}

	public void iSelectGenderofthePatient(String gender) {
		clickElement(driver.findElement(By.cssSelector("#Patient_Details_gender")));
		selectElementByDesc("#Patient_Details_gender>option", gender);
	}

	public void iSearchforAdminFacility(String searchText) {
		clickElement(driver.findElement(By.cssSelector(".select2-arrow>b")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen1_search")), searchText);
		delay();
	}

	public void iclickOnFirstFacility() {
		clickElement(driver.findElement(By.cssSelector("#select2-results-1")));
		delay();
	}

	public void iEnterMedicareID(String medicareID) {
		iFillInText(driver.findElement(By.cssSelector("#Patient_Details_medicareId")), medicareID);
		delay();
	}

	public void iClickOnNextButton() {
		clickElement(driver.findElement(By.cssSelector("#submitButton")));
	}

	public void iVerifyNoPatientFound(String text) {
		delay();
		verifyTextForElement(driver.findElement(By.cssSelector(".modal-title")), text);
	}

	public void iClickOnTabOnPatientPage(String text) {
		clickElement(driver.findElement(By.linkText(text)));
	}

	public void iClickOnButtonMedicalRecord(String text) {
		clickElement(driver.findElement(By.linkText(text)));
	}

	public void iEnterOnTheNewMedicationPage(String textInput, String text) {
		iFillInText(driver.findElement(By.id("BP_medicationType_" + text + "")), textInput);
	}

	public void iPressButtonOnTheNewMedicationPage(String text) {
		clickElement(driver.findElement(By.linkText(text)));
	}

	public void iClickOnVariousTabOnPatientActivity(String text) {
		clickElement(driver.findElement(By.id(text)));
	}
}

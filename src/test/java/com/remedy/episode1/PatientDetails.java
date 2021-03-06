package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class PatientDetails extends BaseClass {
	public PatientDetails(WebDriver driver) {
		super(driver);
	}

	public void iClickOnPatientDetailsButton() throws Throwable {
		clickElement(driver.findElement(By.xpath("//*[@id='patientDetailsButton']")));
	}

	public void iSeeUnderPatientDetails(String text) throws Throwable {
		verifyTextForElement(driver.findElement(By.xpath("//h3[@class='tab-header'][normalize-space(.) = '" + text + "']")), text);
	}

	public void iSeeUnderGeneral(String text) throws Throwable {
		verifyTextForElement(driver.findElement(By.xpath("//label[@class='required col-md-3 control-label'][normalize-space(.) = '" + text + "']")),text);
	}

	public void iClickOnFirstname() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_firstName")));
	}

	public void iUpdateWith(String text) throws Throwable {
		iFillInText(driver.findElement(By.cssSelector(".editable-input>input")), text);
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iClickOnSubmitButton() throws Throwable {
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iClickOnLastname() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_lastName")));
	}

	public void iClickOnPhysicianName() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_pcp_pcpName")));
	}

	public void iClickOnAddNewUnderPhones() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#BP_patientType_phones .add_to_collection")));
	}

	public void iClickOnEmptyPhoneField() throws Throwable {
		clickElement(driver.findElement(By.xpath("//div[@placeholder='Phone number'][normalize-space(.) = 'Empty']")));
	}

	public void iClickOnAddNewUnderAddresses() throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#BP_patientType_address .add_to_collection")));
	}

	public void iClickOnUnderAddress(String text) throws Throwable {
		clickElement(driver.findElement(By.xpath("//div[@class='ui-editable editable editable-click'][normalize-space(.) = '" + text + "']")));
	}

	public void iSelectTheType(String text) throws Throwable {
		clickElement(driver.findElement(By.cssSelector(".editable-input .form-control")));
		clickElement(driver.findElement(By.cssSelector(".editable-input .form-control>option:nth-child(2)")));
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iClickOn(String text) throws Throwable {
		clickElement(driver.findElement(By.xpath("//div[@placeholder='" + text + "'][normalize-space(.) = 'Empty']")));
	}

	public void iUpdateWithlastname(String text) throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_lastName")));
		iFillInText(driver.findElement(By.cssSelector(".editable-input>input")), text);
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iUpdateWithphysicianname(String text) throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_pcp_pcpName")));
		iFillInText(driver.findElement(By.cssSelector(".editable-input>input")), text);
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iUpdateWithfirstname(String text) throws Throwable {
		clickElement(driver.findElement(By.cssSelector("div#BP_patientType_firstName")));
		delay();
		iFillInText(driver.findElement(By.cssSelector(".editable-input>input")), text);
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iUpdateWithNumber(String text) throws Throwable {
		clickElement(driver.findElement(By.cssSelector("#BP_patientType_phones .add_to_collection")));
		clickElement(driver.findElement(By.xpath("//div[@placeholder='Phone number'][normalize-space(.) = 'Empty']")));
		iFillInText(driver.findElement(By.cssSelector(".editable-input>input")), text);
		clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit")));
	}

	public void iRemoveThePhoneNumbers(String number) {
		clickElement(driver.findElement(By.xpath(".//*[@id='BP_patientType_phones_" + number + "']/div[2]/div/a")));
	}

	public void editDateOfDeath(int days) {
		iWillWaitToSee(By.xpath("//div[@name='BP_patientType[dod]']"));
		if (days != 0) {
			clickElement(driver.findElement(By.xpath("//div[@name='BP_patientType[dod]']")));
			String date2 = currentdate(days, "MM/dd/yyyy");
			iFillInText(driver.findElement(By.cssSelector("div.editable-input>div.input-group>input")), date2);
			clickElement(driver.findElement(By.cssSelector("div.editable-buttons>button.editable-submit")));
			longDelay();
		}
	}

	public void cleartheDateofdeath() {
		iWillWaitToSee(By.xpath("//div[@name='BP_patientType[dod]']"));
		clickElement(driver.findElement(By.xpath("//div[@name='BP_patientType[dod]']")));
		driver.findElement(By.cssSelector("div.editable-input>div.input-group>input")).clear();
		clickElement(driver.findElement(By.cssSelector("div.editable-buttons>button.editable-submit")));
		longDelay();
	}

	public void edit_Medicare_Id(String id) {
		iWillWaitToSee(By.xpath("//div[@name='BP_patientType[medicareId]']"));
		clickElement(driver.findElement(By.xpath("//div[@name='BP_patientType[medicareId]']")));
		iFillInText(driver.findElement(By.cssSelector("div.editable-input>input")), id);
		clickElement(driver.findElement(By.cssSelector("div.editable-buttons>button.editable-submit")));
	}

	public void editPrimaryCarePhysician(String name) {
		iWillWaitToSee(By.xpath("//div[@name='BP_patientType[pcp][pcpName]']"));
		clickElement(driver.findElement(By.xpath("//div[@name='BP_patientType[pcp][pcpName]']")));
		iFillInText(driver.findElement(By.cssSelector("div.editable-input>input")), name);
		clickElement(driver.findElement(By.cssSelector("div.editable-buttons>button.editable-submit")));

	}

	public void editPrimaryCarePhysician_phone(String phone) {
		iWillWaitToSee(By.xpath("//div[@name='BP_patientType[pcp][pcpPhone]']"));
		clickElement(driver.findElement(By.xpath("//div[@name='BP_patientType[pcp][pcpPhone]']")));
		iFillInText(driver.findElement(By.cssSelector("div.editable-input>input")), phone);
		clickElement(driver.findElement(By.cssSelector("div.editable-buttons>button.editable-submit")));
	}

	public void verifyerrorinDOD(String error) {
		delay();
		iWillWaitToSee(By.cssSelector("span.help-block"));
		verifyTextForElement(driver.findElement(By.cssSelector("span.help-block")), error);
	}

}

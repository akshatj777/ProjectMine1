package com.remedy.episode1;

import java.util.List;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.baseClass.BaseClass;

public class PatientOverview extends BaseClass {
	public PatientOverview(WebDriver driver) {
		super(driver);
	}

	public void iVerifyPatientsFullNameOnOverview() {
		String name = DischargeCarlForm.firstname + " " + DischargeCarlForm.lastname;
		String actual = driver.findElement(By.cssSelector(".col-md-6.ec2-embed-patient-name")).getText().trim();
		Assert.assertTrue(actual.equalsIgnoreCase(name));
	}

	public void iShouldSeeDetailsOnPatientsOverviewPage(String text) {
		longDelay();
		if (text.contains("SSN")) {
			String value = driver.findElement(By.cssSelector(".ec2-embed-patient-ssn")).getText();
			String sSN = DischargeCarlForm.final_ssn;
			sSN = sSN.substring(5, 9);
			String expected = "SSN xxx-xx-" + sSN;
			Assert.assertTrue(value.contains(expected));
		} else {
			List<WebElement> element = driver.findElements(By.cssSelector("div.row>ul>li"));
			String value = null;
			for (WebElement webElement : element) {
				if (webElement.getText().trim().contains(text)) {
					value = webElement.getText().trim();
			 }
			}
			Assert.assertTrue(value.contains(text));
		}
	}

	public void iClickOnGearIconOnPatientOverviewPage() {
		longDelay();
		longDelay();
		longDelay();
		new Actions(driver).moveToElement(driver.findElement(By.cssSelector("span.ec2-embed-patient-actions>div.pull-right"))).build().perform();
		clickElement(driver.findElement(By.cssSelector("span.ec2-embed-patient-actions>div.pull-right")));
	}

	public void iShouldSeeOptionsUnderPatientOverviewGearIcon(String text) {
		iWillWaitToSee(By.cssSelector(".pull-right.open li"));
		iVerifyTextFromListOfElement(By.cssSelector(".pull-right.open li"), text);
	}

	public void iClickOnOptionUnderPatientOverviewGearIcon(String text) {
		iWillWaitToSee(By.xpath("//div[@class='pull-right open']//li//a"));
		clickElement(driver.findElement(By.xpath("//div[@class='pull-right open']//li//a[contains(text(),'" + text + "')]")));
		delay();
	}

	public void iClickOnButtonUnderPatientOverview(String button) {
		delay();
		if (button.equalsIgnoreCase("Join Care Team")) {
			longDelay();
			clickElement(driver.findElement(By.xpath("//a[contains(@href,'assignMyself')]")));
		} else
			longDelay();
			iWillWaitToSee(By.xpath("//div[@class='row header-nav-line']//a"));
			clickSingleElementFromList(By.xpath("//div[@class='row header-nav-line']//a"), button);
	}

	public void iSelectFirstFacilityCheckboxOnAssignTeamMemberModal() {
		driver.findElements(By.cssSelector(".add_checkbox-column.sorting_1>span>input")).get(0).click();
	}

	public void iEnterDetailsInFieldUnderAddFamilyModal(String text, String field) {
		iFillInText(driver.findElement(By.cssSelector("#relative_careteam_member_type_person_" + field)), text);
	}

	public void iClickOnAddFamilyButtonOnAddFamilyModal() {
		iWillWaitToSee(By.cssSelector("button[type='submit'] .fa.fa-plus"));
		clickElement(driver.findElement(By.cssSelector("button[type='submit'] .fa.fa-plus")));
	}

	public void IEditFieldUnderPatientDetails(String field, String text) {
		longDelay();
		iWillWaitToSee(By.xpath("//div[@class='col-md-9']"));
		driver.findElement(By.xpath("//div[@class='col-md-9']//input[@id='BP_patientType_" + field + "']/..")).click();
		iFillInText(driver.findElement(By.cssSelector(".form-control.input-medium.pull-left")), text);
		delay();
	}

	public void ISelectDropDownUnderEditPatientDetails(String text, String field) {
		clickElement(driver.findElement(By.cssSelector("div[name='BP_patientType[" + field + "]']")));
		delay();
		clickSingleElementFromList(By.cssSelector("#BP_patientType_" + field + " option"), text);
		delay();
	}

	public void iClickOnButtonUnderPatientDetails(String text) {
		if (text.equalsIgnoreCase("submit")) {
			iWillWaitToSee(By.cssSelector(".btn.blue.editable-submit i"));
			clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit i")));
		} else {
			clickElement(driver.findElement(By.cssSelector(".btn.default.editable-cancel i")));
		}
		longDelay();
	}

	public void iClickOnButtonUnderMedicalRecordOnPatientOverview(String button) {
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'" + button + "')]")));
	}

	public void iEnterDetailsOnFieldUnderMedicalRecord(String text, String field) {
		iFillInText(driver.findElement(By.cssSelector(field)), text);
	}

	public void iClickOnButtonForSubmitOnPage(String button) {
		delay();
		delay();
		clickSingleElementFromList(By.xpath("//*[contains(@id,'submit')]"), button);
	}

	public void iShouldSeeTextUnderSectionOnMedicalRecord(String text, String field) {
		String actual = driver.findElement(By.xpath("//div[h3[contains(text(),'" + field + "')]]//ul[@class='list-unstyled list-records']/li")).getText();
		Assert.assertTrue(actual.trim().contains(text));
	}

	public void iShouldSeePriscriberUnderCurrentMedicationForMedicalRecord(String text) {
		iWillWaitToSee(By.xpath("//div[h4[text()='Prescriber']]//strong[text()='" + text + "']"));
	}

	public void iClickOnTextUnderMedicalRecord(String text) {
		iWillWaitToSee(By.xpath("//span[contains(text(),'Drug')]"));
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Drug')]")));
	}

	public void iShouldSeeButtonUnderRecentActivity(String text) {
		iVerifyTextFromListOfElement(By.xpath("//h3[contains(text(),'Recent Activity')]//button"), text);
	}

	public void iClickOnButtonUnderRecentActivity(String text) {
		clickSingleElementFromList(By.xpath("//h3[contains(text(),'Recent Activity')]//button"), text);
	}

	public void iShouldSeeTextInNotificationColumnOnRecentActivityNotificationTab(String text) {
		iWillWaitToSee(By.xpath("//div[@id='notificationsBlock']//tbody/tr[1]/td[3][contains(text(),'" + text + "')]"));
	}

	public void iShouldSeeTextInByColumnOnRecentActivityNotificationTab(String text) {
		iWillWaitToSee(By.xpath("//div[@id='notificationsBlock']//tbody/tr[1]/td[4][contains(text(),'" + text + "')]"));
	}

	public void iVerifyAppointmentsUnderCarePlanOnPatientPage(String text) {
		iWillWaitToSee(By.cssSelector(".panel-title"));
		String actual = getTextForElement(driver.findElement(By.cssSelector(".panel-title")));
		Assert.assertEquals(text, actual.trim());
	}

	public void ishouldSeeAssignedFormsUnderCarePlanOnPatientPage(String text) {
		iWillWaitToSee(By.cssSelector("#assignedForms .caption.ng-binding"));
		String actual = getTextForElement(driver.findElement(By.cssSelector("#assignedForms .caption.ng-binding")));
		Assert.assertTrue(actual.trim().contains(text));
	}

	public void ishouldSeePhysicianCardUnderCareTeamOnPatientPage() {
		iWillWaitToSee(By.cssSelector(".col-md-12 .panel-body"));
	}

	public void iVerifyTabPresentUnderHeaderNavigationOnPatientOverview(String text) {
		iWillWaitToSee(By.xpath("//ul[@id='patientProfileHeaderNav']/li"));
		iVerifyTextFromListOfElement(By.xpath("//ul[@id='patientProfileHeaderNav']/li"), text);
	}

	public void iVerifySearchPresentUnderTransitionOnPatientOverview() {
		iWillWaitToSee(By.xpath("//label[contains(text(),'Search')]"));
	}

	public void iVerifyTextAppearingUnderHeaderForTransitionOnPatientOverview(String text, String field, String no) {
		iWillWaitToSee(By.xpath("//tbody/tr[" + no + "]/td[contains(@class,'" + field + "')]"));
		String actual = getTextForElement(driver.findElement(By.xpath("//tbody/tr[" + no + "]/td[contains(@class,'" + field + "')]")));
		Assert.assertTrue(actual.trim().contains(text));
	}

	public void iShouldSeePaginationUnderTransitionOnPatientOverview() {
		iWillWaitToSee(By.cssSelector("#ui-transitions-table_length>label"));
	}

	public void iClickOnOnboardingStatusDropDownOnPatientOverview() {
		clickElement(driver.findElement(By.cssSelector("#current_onboarding_status")));
	}

	public void iVerifyDropdownValueOnOnboardingStatusDropDownOnPatientOverview(String text) {
		iWillWaitToSee(By.cssSelector(".onboarding-status span"));
		iVerifyTextFromListOfElement(By.cssSelector(".label.label-default.status-label"), text);
	}

	public void iClickOnEligibilityDropDownOnPatientOverview() {
		clickElement(driver.findElement(By.cssSelector("#eligibility_button")));
	}

	public void iVerifyDropdownValueOnEligibilityDropDownOnPatientOverview(String text) {
		iWillWaitToSee(By.cssSelector("#eligibility_service li a"));
		if (text.equalsIgnoreCase("Eligible")) {
			iWillWaitToSee(By.cssSelector(".set_eligibility_value.set_eligibility_eligible"));
		} else if (text.equalsIgnoreCase("Not eligible")) {
			iWillWaitToSee(By.cssSelector(".set_eligibility_value.set_eligibility_not_eligible"));
		}

		else if (text.equalsIgnoreCase("Not Eligible - ESRD")) {
			iWillWaitToSee(By.cssSelector(".set_eligibility_value.set_eligibility_not_eligible_esrd"));
		} else {
			List<WebElement> listItems = driver.findElements(By.cssSelector("#eligibility_service li a"));
			String value = null;
			for (WebElement item : listItems) {
				if (item.getText().trim().contains(text)) {
					value = item.getText().trim();
				}
			}
			Assert.assertTrue(value.contains(text));
		}
	}

	public void iSelectFirstTextFromTagDropdownOnPatientOverview() {
		clickElement(driver.findElement(By.cssSelector(".select2-search-field")));
		delay();
		clickElement(
				driver.findElement(By.xpath("//div[@class='select2-result-label ui-select-choices-row-inner']/div")));
	}

	public void iClickOnViewChangesUnderActivity() {
		iWillWaitToSee(By.cssSelector(".btn.btn-xs.btn-primary.pull-right"));
		clickElement(driver.findElements(By.cssSelector(".btn.btn-xs.btn-primary.pull-right")).get(0));
	}

	public void iShouldSeeChangesInViewChanges(String text) {
		iWillWaitToSee(By.xpath("//div[@class='modal-body clearfix']"));
		iWillWaitToSee(By.xpath("//td[text()='" + text + "']"));
	}

}
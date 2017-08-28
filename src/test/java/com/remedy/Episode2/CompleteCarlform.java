package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class CompleteCarlform extends BaseClass {

	public CompleteCarlform(WebDriver driver) {
		super(driver);
	}

	public void IClickOnAnticipatedDischargeNeedsOnSideMenuOption() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		WebElement element = driver.findElement(By.xpath("//span[contains(text(),'Anticipated Discharge Needs')]"));
		WebElement element1 = driver.findElement(By.xpath("//h1[text()='CARL']"));
		js.executeScript("arguments[0].scrollIntoView(true);", element1);
		delay();
		js.executeScript("arguments[0].click();", element);
		delay();
   }

	public void IverifyCARLbuttonsappearsonthepatientsummary() {
		WebElement element = driver.findElement(By.cssSelector(".btn.btn-primary.ng-binding.ng-scope"));
		delay();
		isElementVisible(element);
	}

	public void IclosethepatientsummaryPage() {
		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IverifyCARLbuttonisappearingonthepatientcardornot(String link) {
    	longDelay();	
		if(link.equals("appearing")){
	        isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope")));
	}else{
		WebDriverWait wait=new WebDriverWait(driver,5);
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope")));
	}
	}

	public void Iselectonthebuttontodeletethetransition() {
		clickElement(driver.findElement(By.cssSelector("a.btn.btn-default.dropdown-toggle")));
	}

	public void Iclickonthebuttontodeletethetransition() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Delete')]")));

	}

	public void IclickonOktodeletethetransition() {
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
	}

	public void IVerifythatClickingonCompleteCARLbuttonCarlformshouldappearasatakeoverpage() {
		iWillWaitToSee(By.cssSelector("div.takeover-content.container.carl.ng-scope > form"));
		delay();
	}

	public void IVerifythatCarlformshouldappearwithWhitebarwithPatientNameLastFirstnameandxicononthepage(String lastname, String firstname) {
		isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'" + lastname + ", " + firstname + "')]")));
		isElementVisible(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IVerifyLinksUnderCarlFormCaregiverSection(String link) {
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(),'" + link + "')]")));
	}

	public void IVerifythatCarlformshouldappearwithCancellink() {
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(),'Cancel')]")));
	}

	public void IVerifythatCarlformshouldappearwithReviewformlink() {
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(),'review the form')]")));
	}

	public void IVerifyThatDoesthePatientHaveACapableCaregiverShouldAppearOnTakeoverPage(String question) {
        isElementVisible(driver.findElement(By.xpath("//h3[contains(text(),'" + question + "')]")));

	}

	public void IVerifythatOptionsShouldbePresentBelowCapableCaregiverQuestion(String option) {
		verifyTextForElementfromList(".radio.ng-empty.ng-valid>label>span", option);
	}

	public void IClickOnOptionsUnderDoesThePatientHaveACapableCaregiverQuestioin(String text) {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]")));
	}

	public void IVerifyThatCareNetworkMemberDropDwonAppearsUnderChooseCaregiverSection() {
		isElementVisible(driver.findElement(By.cssSelector(".col-md-8")));
	}

	public void IVerifyPlaceholderTextiCarenNetworkMemberDropDwonUnderChooseCaregiver() {
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='Select']")), "Select");
	}

	public void IClickOnCareNetworkMembersDropdownUnderChooseCaregiver() {
		clickElement(driver.findElement(By.xpath("//span[text()='Select']")));
	}

	public void ISelectTheAssociatedCaregiverFromTheDropdown(String text) {
		clickElement(driver.findElement(By.xpath("//div[contains(text(),'" + text + "')]")));
	}

	public void IVerifySelectedUserAppearsOnTheDropdownInCareNetworkMembers(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]")), text);
	}

	public void IVerifyNameOnCaregiverInformationCard(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//div[contains(text(),'" + text + "')]")), text);
	}

	public void IVerifyEmailOnCaregiverInformationCard(String email) {
		verifyTextForElement(driver.findElement(By.xpath("//p[text()='" + email + "']")), email);
	}

	public void IVerifyPhoneOnCaregiverInformationCard(String phone) {
		verifyTextForElement(driver.findElement(By.xpath("//p[text()='" + phone + "']")), phone);
	}

	public void IVerifyAddCaregiverLinkAppearsUnderChooseCaregiverSection() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='Add Caregiver']")));
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(),'Cancel')]")));
	}

	public void IVerifythatCarlformshouldappearwithSaveyourprogresslink() {
		isElementVisible(driver.findElement(By.cssSelector("//a[contains(text(),'Save your progress')]")));

	}

	public void IVerifythatCarlformshouldappearwithformlink() {
		isElementVisible(driver.findElement(By.cssSelector("//a[contains(text(),'review the form')]")));
	}

	public void IClickOnAddCaregiverLinkUnderChooseCaregiver() {
		clickElement(driver.findElement(By.xpath("//a[text()='Add Caregiver']")));
	}

	public void IVerifyThatCareNetworkMemberDropDwonDoesNotAppearUnderChooseCaregiverSection() {
		isElementNotPresentOnPage(".col-md-8");
	}

	public void IVerifyAddCaregiverLinkDeosNotAppearUnderChooseCaregiverSection() {
		isElementNotPresentOnPage(".add-icon");

	}

	public void IHoverOn_i_IconOnTakeOverPage(String icon) {
		moveToTheElement(driver.findElement(By.xpath("//i[contains(@uib-tooltip,'" + icon + "')]")));
		delay();
	}

	public void IVerifyTheTextHoverOnCaregiver() {
		String HoverOnCaregiverText = "Identify all caregivers physically and mentally able to provide required support to the patient in a home setting. Caregiver(s) do not necessarily need to reside in the home, but ADL support and treatment needs must be met.";
		WebElement item = driver.findElement(By.xpath("//i[contains(@uib-tooltip,'Caregiver')]"));
		try {
			Assert.assertEquals(item.getAttribute("uib-tooltip"), HoverOnCaregiverText);
		} catch (Exception e) {

		}
	}

	public void IClickOnAnticpatedDischargeNeeds(String text) {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]")));
	}

	public void IVerifyTheTextHoverOnPatientsRestorationPotential() {
		String HoverOnPatientsRestorationText = "Restoration potential is defined as the extent to which a patient's condition will improve materially in a reasonable and generally predictable period of time";
		verifyTextForElement(driver.findElement(By.xpath("//div[@class='tooltip ng-scope ng-isolate-scope bottom white-background fade in']//div[@ng-bind='content']")),HoverOnPatientsRestorationText);
	}

	public void IClickOnCareTeamOnNavBarOnPatientSummaryPage(String text) {
		iWillWaitToSee(By.xpath("//span[contains(text(),'" + text + "')]"));
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'" + text + "')]")));
	}

	public void IClickOnSettingIconToRemovePatientUnderCareTeam() {
		clickElement(driver.findElement(By.xpath("//div[@class='pull-right pos-relative']//i[@class='fa fa-cog']")));
	}

	public void IClickOnRemoveToDeleteThePatient() {
		clickElement(driver.findElement(By.xpath("//a[contains(@id,'member-delete')]")));
	}

	public void IClickOnOkToDeleteThePatient() {
		clickElement(driver.findElement(By.xpath("//button[text()='OK']")));
		delay();
	}

	public void IVerifyFirstNameIsMandatoryFieldToCreateCaregiver() {
		verifyTextForElement(driver.findElement(By.xpath("//label[text()='* First Name']")), "* First Name");
	}

	public void IVerifyLastNameIsMandatoryFieldToCreateCaregiver() {
		verifyTextForElement(driver.findElement(By.xpath("//label[text()='* Last Name']")), "* Last Name");
	}

	public void IVerifyCreateButtonIsEnabled() {
		boolean value = false;
		value = driver.findElement(By.xpath("//button[text()='Create']")).isEnabled();
		if (value == true) {
			return;
		} else {
			System.out.println("Disabled");
		}
	}

	public void IVerifyCreateButtonIsDisabled() {
		boolean value = false;
		value = driver.findElement(By.xpath("//button[text()='Create']")).isEnabled();
		if (value == false) {
			return;
		} else {
			System.out.println("Enabled");
		}
	}

	public void IVerifyFieldLabelToCreateCaregiver(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//label[text()='" + text + "']")), text);
	}

	public void IEnterFisrtAndLastNameOnCarlFormAddCaregiver(String f_Name, String l_Name) {
		iFillInText(driver.findElement(By.xpath("//input[contains(@ng-model,'firstName')]")), f_Name);
		iFillInText(driver.findElement(By.xpath("//input[contains(@ng-model,'lastName')]")), l_Name);

	}

	public void IVerifyTheLabelDropdownUnderRelationship() {

		driver.findElement(By.xpath("html/body/div[5]/div/div/div/div[2]/form/div/div[2]/section/div[5]/form/div[1]/div[3]/div[1]/div/div[1]/span")).click();
		List<String> actualmylist = getTextForElementfromList("span.ui-select-choices-row-inner");
		String[] expectedvalues = { "Adoptive Parent", "Aunt/Uncle", "Brother", "Child", "Daughter", "DCF/DSS",
				"Dependent", "Father", "Foster Parent", "Friend", "Grandchild", "Grandparent", "Guarantor",
				"Legal Guardian", "Life Partner", "Mother", "Niece/Nephew", "Neighbor", "Organ Donor", "Other",
				"Power of Attorney or Living Will Proxy", "Sibling", "Significant Other", "Sister", "Son", "Spouse",
				"Step-Parent", "Step-Child", "Unknown" };
		List<String> requiredcombolisttext = new ArrayList<String>();
		requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
		verifyarraylist(requiredcombolisttext, actualmylist);
	}

	public void IEnterEmailToCreateCaregiver(String email) {
		iFillInText(driver.findElement(By.xpath("//input[@name='email']")), email);
	}

	public void IVerifyOptionsInPrimaryPhoneDropdown(String text) {
		verifyTextForElementFromListByXpath("//div[@ng-bind-html='option']", text);
	}

	public void IVerifyHomeShouldbeDefaultOptionForPrimaryPhoneOption() {
		verifyTextForElementFromListByXpath("//span[text()='Home']", "Home");
	}

	public void IEnterPrimaryPhoneToCreateCaregiver(String phone) {
		iFillInText(driver.findElement(By.xpath("//input[@name='phone0']")), phone);
	}

	public void IClickOnAddPhoneButtonToCreateCaregiver(String phone) {
		clickElement(driver.findElement(By.xpath("//a[text()='" + phone + "']")));
	}

	public void IClickCreateButtonToAddCaregiver() {
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Create')]")));
	}

	public void IClickOnCloseButtonInDropdownUnderChooseCaregiver() {
		clickElement(driver.findElement(By.cssSelector(".glyphicon.glyphicon-remove")));
	}

	public void IVerifythatCarlformshouldappearLeftnavigatordisplayingfoursections() {

		List<String> mylist = getTextForElementfromList("span.label-content.ng-binding");
		String[] expectedvalues = { "Caregiver", "Independence", "Anticipated Discharge Needs", "Discharge" };
		List<String> requiredcombolisttext = new ArrayList<String>();
		requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
		verifyarraylist(requiredcombolisttext, mylist);
	}

	public void IwillwaittoseetheCARLsectionheaderappearsontheCARLform() {
		iWillWaitToSee(By.cssSelector("h2.ng-binding"));
	}

	public void IselectoptionfromdropdowntocreateCaregiver(String value) {
		clickElement(driver.findElement(By.cssSelector("div:nth-child(3) > div.col-xs-8 > div > div.ui-select-match.ng-scope")));
		clickElement(driver.findElement(By.xpath("//span[@class='ui-select-choices-row-inner']/div[text()='"+value+"']")));
		
	}

	
}

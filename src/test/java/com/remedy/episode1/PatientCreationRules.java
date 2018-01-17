package com.remedy.episode1;


import org.apache.commons.lang.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PatientCreationRules extends BaseClass{
	
    public PatientCreationRules(WebDriver driver) {
        super(driver);
    }
    
    public void iClickOnNewButtonOnPatientRulesPage(){
    	clickElement(driver.findElement(By.cssSelector("a.btn.btn-primary")));
    }
    
    public void iWaitUntillISeeElement(String text){
    	iWillWaitToSee(By.xpath(".//*[@id='adminContentContainer']//h1[text()='"+text+"']"));
    }
    
    public void iEnterNameInNewPatientCreationRule(String text){
		iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_name")), text);
    }
    
    public void iFillInFieldWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_conditions_0_field")), text);
    }
    
    public void iFillInValueWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_conditions_0_value")), text);
    }
    
    public void iFillInPriorityWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.xpath(".//*[@id='new_bppatientcreationrules_priority']")), text);
    }
    
    public void iClickOnSaveButtonOnPatientRuleCreationPage(String text){
    	clickElement(driver.findElement(By.cssSelector(".btn.btn-success")));
    }
    
    public void iWillWaitToSeeNewlyCreatedRule(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),text);
    }
    
    public void iVerifyLabelTextOnNewCreationPage(String text,String page){
    	verifyTextForElementfromList(".col-md-3.control-label",text);
    }
    
    public void iSelectAdmiTFacilityOnFreeTextMappingPage(String text){
    	clickElement(driver.findElement(By.cssSelector("#s2id_new_bpfacilityfreetext_sendingFacility .select2-choice.select2-default")));
    	iFillInText(driver.findElement(By.cssSelector("#s2id_autogen1_search")), text);
    	clickElement(driver.findElement(By.xpath("(//span[text()='"+text+"'])[2]")));
    }
    
    public void iSelectFrom(String select,String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"")));
    	selectElementByDesc("#"+text+">option",select);
    }
    
    public void iFillTextWith(String selector,String text){
    	iFillInText(driver.findElement(By.cssSelector("#"+selector+"")), text);
    }
    
    public void iSelectMappedDischargeFacility(String text){
    	clickElement(driver.findElement(By.cssSelector("#s2id_new_bpfacilityfreetext_mappedDischargedFacility .select2-choice.select2-default")));
    	iFillInText(driver.findElement(By.cssSelector("#s2id_autogen2_search")), text);
    	clickElement(driver.findElement(By.xpath("(//span[text()='"+text+"'])[1]")));
    }
    
    public void iFillInTextOnRegisterAUserPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_"+locator+"")), text);
    }
    
    public void iFillInUserEmailOnRegisterUserPage(String text){
    	 String random_UserEmail=text+"+"+(RandomStringUtils.randomAlphabetic(5))+"@Example.com";
    	 System.out.println(random_UserEmail);
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_email")), random_UserEmail);
    }
    
    public void iFillInPasswordOnRegisterUserPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_plain_password_password")), text);
    }
    
    public void iFillInConfirmPasswordOnRegisterUserPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_plain_password_confirm")), text);
    }
    
    public void iFillFieldsOnRegisterClinicianPage(String locator,String text){
    	if(text.contains("random")){
    		String random_UserEmail=text+"+"+(RandomStringUtils.randomAlphabetic(5))+"@Example.com";
    		iFillInText(driver.findElement(By.cssSelector("#clinician_admin_type_"+locator+"")), random_UserEmail);
    	}
    	else{
    		iFillInText(driver.findElement(By.cssSelector("#clinician_admin_type_"+locator+"")), text);
    	}
    }
    
    public void iFillFieldsOnFacilityCreationPage(String locator,String text){
    	if(text.contains("randomKey")){
    		String key = text+RandomStringUtils.randomAlphabetic(5);
    		iFillInText(driver.findElement(By.cssSelector("#new_bpfacility_"+locator+"")), key);
    	}
    	else{
    		iFillInText(driver.findElement(By.cssSelector("#new_bpfacility_"+locator+"")), text);
    	}
    }
    
    public void iFillFieldsOnNewExclusionsListsPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bpexclusionlist_"+locator+"")), text);
    }
    
    public void iFillFieldsOnNewEpisodesPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bpdrg_"+locator+"")), text);
    }
    
    public void iClickOnSaveButtonOnNewEpisodePage(){
    	clickElement(driver.findElement(By.cssSelector("button[name=save]")));
    }
    
    public void iVerifyRouteAClList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#form-list-EC"+text+"")));
    }
    
    public void iVerifyAlertTemplateList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#table-list-BP"+text+"Category")));
    }
    
    public void iVerifyPatientTagsList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#table-list-BP"+text+"")));
    }
    
    public void iVerifyAddNewCarePlanButton(String text){
    	isElementVisible(driver.findElement(By.xpath("//a[text()='"+text+"']")));
    }
    
    public void iClickOnButtonOnCarePlanButton(String text){
    	clickElement(driver.findElement(By.xpath(".//*[@id='adminContentContainer']/div/div/div[2]/div[2]/a")));
    }
    
    public void iWaitUntillISeeCarePlanFormWindow(String text){
    	iWillWaitToSee(By.xpath("//h4[text()='"+text+"']"));
    }
    
    public void iFillNameUnderCarePlanForm(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#"+locator+"")), text);
    }
    
    public void iFillUnderCarePlanForm(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#goal_"+locator+"")), text);
    }
    
    public void iClickOnSubmitOnCarePlanForm(){
    	longDelay();
    	clickElement(driver.findElement(By.cssSelector("#adminCarePlanForm .btn-primary")));
    }
    
    public void IwaitToSeeThePopUp(String text){
    	delay();
    	System.out.println(text);
    	iWillWaitToSee(By.xpath("//p[contains(text(),'"+text+"')]"));
    	isElementVisible(driver.findElement(By.xpath("//p[contains(text(),'"+text+"')]")));
    }
    
    public void iEnterTextInFacilityFilterFields(String text,String locator){
    	iFillInText(driver.findElement(By.cssSelector("#filters_bpfacility_"+locator+"")), text);
    }
    
    public void iClickOnFilterOpationOnFacilities(){
    	clickElement(driver.findElement(By.xpath("//button[@class='btn btn-sm btn-primary'][@type='submit']")));
    }
    
    public void iWaitToSeeListOfFacilities(){
    	iWillWaitToSee(By.cssSelector(".list_trow"));
    }
    
    public void iClickOnDRGOnFaciltiesPage(String text){
    	clickElement(driver.findElement(By.xpath("//a[text()='"+text+"']")));
    }
    
    public void iWaitUntillISeeOptionOnDRGListUnderFacilities(String text){
    	iWillWaitToSee(By.xpath("//a[text()='"+text+"']"));
    }
    
    public void iSelectAllCheckboxOptionOnDRGListUnderFacilities(){
    	iWillWaitToSee(By.cssSelector("#selectAllCheckbox"));
    	clickElement(driver.findElement(By.cssSelector("#selectAllCheckbox")));
    }
    
    public void iClickOnAddNewDRGOptionDRGListPage(String text){
    	clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
    }
    
    public void iWaitToSeeTheDRGPopup(){
    	iWillWaitToSee(By.xpath("//h2[text()='Add DRG to testCreateNewFacilityName']"));
    }
    
    public void iClickOnMatchedResultInDRGLsit(){
    	clickElement(driver.findElement(By.cssSelector(".select2-match")));
    }
    
    public void iClickOnAddButtonOnDRGPopUp(){
    	clickElement(driver.findElement(By.cssSelector("#submitButton")));
    }
    
    public void iVerifyDRGListInFacility(String text){
    	verifyTextForElementfromList(".td_string.td_drg_id",text);
    }
    
    public void iVerifyTabHighlightedOnLeftNavigation(String text){
    	isElementVisible(driver.findElement(By.cssSelector(".current a[href*='/secure/admin/"+text+"/']")));
    }
    
    public void IFillFilterFieldOnUserPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#filters_bppatientnavigator_"+locator+"")), text);
    }
    
    public void iClickOnFilterOptionOnUsersListAfterEnteringData(){
    	clickElement(driver.findElement(By.cssSelector(".form-group .btn.btn-sm.btn-primary")));
    }
    
    public void iWaitUntillUserListAppears(){
    	iWillWaitToSee(By.cssSelector("tr.list_trow"));
    }
    
    public void iClickONResetFieldOnFilters(){
    	clickElement(driver.findElement(By.cssSelector(".btn.btn-sm.btn-default")));
    }
    
    public void iVerifyPatientsTabHighlightedOnLeftNavigation(){
    	isElementVisible(driver.findElement(By.cssSelector(".active a#patientsListOpenClose")));
    }
    
    public void iClickOnHelpOnTheEpisodeConnectPage(){
    	clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-help")));
    }
    
    public void iVerifyHelpPageURL(String url){
    	Assert.assertEquals(getTheCurrentUrl(),url);
    }
    
    public void iClickOnMyProfileEpisodeConnectPage(){
    	clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-myprofile")));
    }
    
    public void iWaitUntillMyProfileAppears(String text){
    	iWillWaitToSee(By.xpath("//span[text()='"+text+"']"));
    }
    
    public void iFillNamesOnMyProfilePage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#patient_navigator_type_"+locator+"")), text);
    }
    
    public void iClickOnSaveChangesButtonOnMyProfile(){
    	clickElement(driver.findElement(By.cssSelector(".btn.blue.btn-primary")));
    }
    
    public void iVerifyValidationMessageOnMyProfilePage(String text){
    	verifyTextForElementfromList(".help-block.help-block-error",text);
    }
    
    public void iSearchAndSelectDrgOnCarePlanForm(String text){
    	iWillWaitToSee(By.cssSelector(".select2-search-field>input"));
    	driver.findElement(By.cssSelector(".select2-search-field>input")).sendKeys(text);
    	iWillWaitToSee(By.xpath("//span[text()='"+text+"']"));
    	clickElement(driver.findElement(By.xpath("//span[text()='"+text+"']")));
    }
}

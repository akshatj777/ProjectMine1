package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class NoteCreation extends BaseClass{

	/* Notes Module Generic functions*/
	
	public NoteCreation(WebDriver driver) {
        super(driver);
    }
    
    
    public void  I_click_on_the_patient_card_on_Patient_Card_Page() {
            clickElement(driver.findElement(By.xpath("div.row.cards-mode.isotope > div:nth-child(1) > div > div.card-header.col-xs-12.hover-pointer.ng-scope > div.card-header-content > div")));
           }
    
    public void Iverifyclickonpatientcardtobenavigatedtopatientsummary()
    {
    	isElementVisible(driver.findElement(By.cssSelector(".card-view-expanded-header.ng-scope")));
    }
    
    public void IverifyPatientSummaryincludesquickactionbuttonfornotecreation() {
        isElementVisible(driver.findElement(By.cssSelector(".btn.bg-white.btn-secondary.ng-scope")));
	}     
    
    public void IclickonquickactionbuttonfornotecreationonPatientSummarypage()
    {
    	clickElement(driver.findElement(By.cssSelector(".btn.bg-white.btn-secondary.ng-scope")));
    }

    public void I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation()
    {
    	 isElementVisible(driver.findElement(By.cssSelector("span.ui-select-placeholder.text-muted.ng-binding")));
    }

    public void IselectthevaluefromthetopicdropdownonAddClinicalDocumentonPatientSummary(String Topic_dropdown_value) {
    	 clickElement(driver.findElement(By.cssSelector("span.ui-select-placeholder.text-muted.ng-binding")));
         selectDropdownVisibleElementSpan("//div[contains(text(),'"+ Topic_dropdown_value +"')]");;
    }
    
    public void IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonNoteCreation()
    {
    	isElementVisible(driver.findElement(By.cssSelector("div.input-group-addon.double-addon")));
    }
    
    public void IverifyActivityBodytextboxappearsontheAddClinicalDocumentonNoteCreation()
    {
    	isElementVisible(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-empty.ng-invalid")));
    }
    
    public void selectDropdownVisibleElementSpan(String dropdown_selector)
	 {
		 clickElement(driver.findElement(By.xpath(dropdown_selector)));
	 }
    
    public void IverifyattachfileslinkappearsontheAddClinicalDocumentonNoteCreation()
    {
    	isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
    }
    
    public void IverifyCancelbuttonappearsontheAddClinicalDocumentonNoteCreation()
    {
    	isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-tertiary")));
    }
    
    public void  IverifyCreatenoteappearsontheAddClinicalDocumentonNoteCreation()
    {
    	isElementVisible(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));
    }
     
    public void IattachfileontheAddClinicalDocumentonNoteCreation()
    {
    	
    	isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
    }	
    
    /* Notes Module Generic functions on Patient Card*/
    
    public void IclickonquickactionbuttonfornotecreationonPatientCardpage()
    {
    	
    	clickElement(driver.findElement(By.cssSelector("body > div.main-container.container > div > div > div.row.cards-mode.isotope > div:nth-child(1) > div > div.card-view-content.ng-scope > div.card-footer.col-xs-12.ng-scope > div > div > button:nth-child(1)")));
 
    }

    public void IverifywhethertopicdropdownappearsonAddClinicalDocumentonPatientCardpage()
    {
    	 isElementVisible(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
    	
    }

    public void IselectthevaluefromthetopicdropdownonPatientCard(String Topic_dropdown_value) {
        clickElement(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
        selectDropdownVisibleElementSpan("//div[contains(text(),'"+ Topic_dropdown_value +"')]");
    }
    public void IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonPatientCard()
    {
    	isElementVisible(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
    }
    
    public void IverifyActivityBodytextboxappearsontheAddClinicalDocumentonPatientCard()
    {
    	isElementVisible(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-untouched.ng-empty.ng-invalid.ng-invalid-required")));
    }
    
    public void IverifyattachfileslinkappearsontheAddClinicalDocumentonPatientCard()
    {
    	isElementVisible(driver.findElement(By.cssSelector(".add-icon.ng-pristine.ng-untouched.ng-valid.ng-empty")));
    }
    
    public void IverifyCancelbuttonappearsontheAddClinicalDocumentonPatientCard()
    {
    	isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-tertiary")));
    }
    
    public void  IverifyCreatenoteappearsontheAddClinicalDocumentonPatientCard()
    {
    	isElementVisible(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));
    }
     
    public void IselectthedatefromdatepickeronAddClinicalDocumentonPatientCard(String date_element)
    {
    	clickElement(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
    	//clickElement(driver.findElement(By.cssSelector("h3.ng-binding")));
    	clickElement(driver.findElement(By.xpath("//div[contains(text(),'"+date_element+"')]")));
    	}
    public void IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard()
    {
    	iFillInText(driver.findElement(By.cssSelector(".form-control.ng-pristine.ng-untouched.ng-empty.ng-invalid.ng-invalid-required")),"Sample");
    }
    
    public void IclickonthecreateNoteButtononAddClinicalDocumentonPatientCard()
    {
    	clickElement(driver.findElement(By.xpath("//button[contains(@class, 'btn btn-primary') and contains(text(), 'Create Note')]")));	
    }
    
    public void IclickthevaluefromthetopicdropdownonAddClinicalDocumentonPatientCard()
    {
    clickElement(driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope > span")));
    }
    
   public void IverifythedropdownvaluesonAddClinicalDocumentonPatientCard() {
    	
        List<String> actualcombolisttext = new ArrayList();
        List<WebElement> elementtexts = new ArrayList();
        List<String> requiredcombolisttext=new ArrayList();
        String[] expectedvalues={"Baseline","Bedside Visit", "Care Assessment Note","Clinical Note", "Close Call", "Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care", "Patient Call", "Patient Education", "Patient Visit","Psychological Condition", "Transition Note", "TUG/RAPT/CARE Score"};
        		
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
       
        elementtexts=driver.findElements(By.cssSelector("span.ui-select-choices-row-inner"));
        
        for(WebElement elementtext:elementtexts )
        {
        actualcombolisttext.add(elementtext.getText());
        System.out.println("****The drop down value is"+elementtext.getText());
          }
        System.out.println("*****The drop down values****"+actualcombolisttext);
        verifyarraylist(requiredcombolisttext,actualcombolisttext);
             }
   
       public void IverifyTopicdropdownbarhastheplaceholderSelectatopicornot()
       {
       String Dropdown_placeholder=driver.findElement(By.cssSelector("section > form > div > div.ui-select-match.ng-scope")).getAttribute("placeholder") ;
       verifyString("Select a topic", Dropdown_placeholder);
}
  
       public void IclickonActivityDateonAddClinicalDocumentonPatientCard()
       {
       clickElement(driver.findElement(By.cssSelector("a > div > div > i.valentino-icon-calendar")));
       }
       
       public void IverifyCalendarappearstoselectthedatemanuallyonAddClinicalDocumentonPatientCard()
       {
       isElementVisible(driver.findElement(By.cssSelector(".datetimepicker.table-responsive")));
       }
       
       
       public void IVerifythattodaysdateshouldbehighlightedincalendarasdefaultdate()
       {
    	   verifyTextForElement(driver.findElement(By.xpath("//input[@placeholder='Activity Date']")),"04/21/2017");
    	   System.out.println("Date is"+driver.findElement(By.xpath("//input[@placeholder='Activity Date']")).getText());
    	   }
       
       public void verifyarraylist(List<String> requiredcombolisttext, List<String> actualcombolisttext)
   {
	   Assert.assertEquals(requiredcombolisttext,actualcombolisttext);
   }

   public void verifyString(String expected,String actual)
   {
	   Assert.assertEquals(expected,actual);
   }


public void IclickonoutsideofthecalendaronAddClinicalDocumentonPatientCard() {
	// TODO Auto-generated method stub
	clickElement(driver.findElement(By.cssSelector("h5.text-no-row-space.ng-binding.ng-scope")));
	
}
         
        
}

// **************************************************//




     


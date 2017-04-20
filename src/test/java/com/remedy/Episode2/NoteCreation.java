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
        List<String> requiredcombolisttext=new ArrayList();
        String[] expectedvalues={"Baseline","Bedside Visit", "Care Assessment Note","Clinical Note", "Close Call", "Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care", "Patient Call", "Patient Education", "Patient Visit","Psychological Condition", "Transition Note", "TUG/RAPT/CARE Score"};
        		
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
        for(int i=0;i<=16;i++)
        {
        driver.manage().timeouts().implicitlyWait(20,TimeUnit.SECONDS);
        WebElement element=driver.findElement(By.xpath(".//*[@id='ui-select-choices-row-1-"+i+"']/span/div"));
        actualcombolisttext.add(element.getText());
      
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
       
       public void verifyarraylist(List<String> requiredcombolisttext, List<String> actualcombolisttext)
   {
	   Assert.assertEquals(requiredcombolisttext,actualcombolisttext);
   }

   public void verifyString(String expected,String actual)
   {
	   Assert.assertEquals(expected,actual);
   }
         
        


// **************************************************//


public void Iselectthedate() throws Exception{

    //DAte and Time to be set in textbox

    String dateTime ="12/07/2014";

    
    
   

//button to move next in calendar

   WebElement nextLink = driver.findElement(By.cssSelector("i.valentino-icon-caret-right"));

//button to click in center of calendar header

WebElement midLink = driver.findElement(By.cssSelector("h3.ng-binding"));

//button to move previous month in calendar

WebElement previousLink = driver.findElement(By.cssSelector("i.valentino-icon-caret-left")); 

    //Split the date time to get only the date part

    String date_dd_MM_yyyy[] = (dateTime.split(" ")[0]).split("/");

    //get the year difference between current year and year to set in calander

    int yearDiff = Integer.parseInt(date_dd_MM_yyyy[2])- Calendar.getInstance().get(Calendar.YEAR);
    

    midLink.click();

    if(yearDiff!=0){

        //if you have to move next year

        if(yearDiff>0){

            for(int i=0;i< yearDiff;i++){

                System.out.println("Year Diff->"+i);

                nextLink.click();

            }

        }

        //if you have to move previous year

        else if(yearDiff<0){

            for(int i=0;i< (yearDiff*(-1));i++){

                System.out.println("Year Diff->"+i);

                previousLink.click();

            }

        }

    }
    
    Thread.sleep(1000);

    //Get all months from calendar to select correct one

    List<WebElement> list_AllMonthToBook = driver.findElements(By.cssSelector("span.month"));
    System.out.println("*****List of months***"+list_AllMonthToBook);
    list_AllMonthToBook.get(Integer.parseInt(date_dd_MM_yyyy[1])-1).click();
    
    Thread.sleep(1000);

    //get all dates from calendar to select correct one

    List<WebElement> list_AllDateToBook = driver.findElements(By.xpath("//td[not(contains(@class,'day ng-scope past'))]"));
    System.out.println("*****List of months***"+list_AllDateToBook);
    list_AllDateToBook.get(Integer.parseInt(date_dd_MM_yyyy[0])-1).click();
  

}
}
     


package stepDefination;


//import com.github.mkolisnyk.cucumber.runner.ExtendedCucumberOptions;
import com.remedy.resources.DriverScript;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;
import stepDefination.Hooks.*;

/**
 * Created by salam on 7/29/15.
 */

/*@RunWith(ExtendedCucumberRunner.class)
@ExtendedCucumberOptions(jsonReport = "/target/cucumber-results/cucumber.json", retryCount = 3, detailedReport = true,
                        detailedAggregatedReport = true, overviewReport = true, outputFolder = "/target/cucumber-results")
@CucumberOptions(
        plugin = { "html:target/cucumber-results", "usage:target/cucumber-results/cucumber-usage.json",
                "junit:target/cucumber-results/cucumber-results.xml", "json:target/cucumber-results/cucumber.json"},
        features = { "src/test/Features/"},
        //glue = { "./src/test/java/stepDefination" },
        tags = {}
<<<<<<< HEAD

)*/

@RunWith(ExtendedCucumberRunner.class)
@CucumberOptions(
        plugin = {"html:target/cucumber-results", "usage:target/cucumber-results/cucumber-usage.json",
                "junit:target/cucumber-results/cucumber-results.xml", "json:target/cucumber-results/cucumber.json",
                "com.cucumber.listener.ExtentCucumberFormatter:target/vimalSelvam-cucumberReport/report.html"},
        features = { "src/test/Features/Reports/ClaimsReports/OverallProgram/claimsReportsFinancialPerformanceClaims.feature",
        		"src/test/Features/Reports/ClaimsReports/OverallProgram/claimsReportsPerformanceClaimsReports.feature",
        		"src/test/Features/Reports/ClaimsReports/OverallProgram/claimsReportsSpendingClaims.feature",
        		"src/test/Features/Reports/ClaimsReports/Physician/physicainVolumeClaims.feature",
        		"src/test/Features/Reports/ClaimsReports/Physician/physicianPerformanceClaims.feature",
        		"src/test/Features/Reports/ClaimsReports/Physician/physicianSpendingClaims.feature",
        		"src/test/Features/Reports/ClaimsReports/PostAcuteCare/claimsReportsPostAcuteCare.feature",
        		"src/test/Features/Reports/ClaimsReports/PostAcuteCare/claimsReportsSNFPerformance.feature",
        		"src/test/Features/Reports/ClaimsReports/PostAcuteCare/claimsReportsSNFVolume.feature",
        		"src/test/Features/Reports/ClaimsReports/Readmissions/claimsReportsReadmissionsClaims.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/NSOC/ecReportCARL.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/NSOC/ecReportNSoCSummary.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/PatientID/episodeDRGIssuesVerification.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/PatientID/inpatientEpisodeClearingPatientIDLavelsMeasures.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/PostAcuteCare/ecReportSNFLOSSummary.feature",
        		"src/test/Features/Reports/EpisodeConnectReports/Readmissions/ecReportsReadmission.feature",  		
        },
        //glue = { "./src/test/java/stepDefination" },
        tags = {}
)
public class TestRunner {

        @BeforeSuite
        public static void setUp() {
                // TODO: Add your pre-processing

        }

        @AfterSuite
        public static void tearDown () throws Exception {

                /*CucumberCoverageReport testReportFinal = new CucumberCoverageReport();

               testReportFinal.generateFeatureOverviewReport();
                testReportFinal.testGenerateDetailedAggregatedReport();
                testReportFinal.generateCoverageOverviewReport();*/

                if (DriverScript.Config.getProperty("wantToSendReportViaAutoEmail").equalsIgnoreCase("true")){
                        //System.out.println("control should move here only if I want to send email- cheers !!");
                        AutoReportEmailSender sendReportEmailAutomatically = new AutoReportEmailSender();
                        sendReportEmailAutomatically.autoSendReportMail("aranjan@remedypartners.com", new String[]{"qa@remedypartners.com"}, "Test Email:- Automatic Test Automation Report !!");
                }
        }
}

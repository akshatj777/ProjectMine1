package stepDefination;


import com.github.mkolisnyk.cucumber.runner.ExtendedCucumberOptions;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;
import stepDefination.Hooks.*;

/**
 * Created by salam on 7/29/15.
 */

@RunWith(ExtendedCucumberRunner.class)
@ExtendedCucumberOptions(jsonReport = "/target/cucumber-results/cucumber.json", retryCount = 3, detailedReport = true,
                        detailedAggregatedReport = true, overviewReport = true, outputFolder = "/target/cucumber-results")
@CucumberOptions(
        plugin = { "html:target/cucumber-results", "usage:target/cucumber-results/cucumber-usage.json",
                "junit:target/cucumber-results/cucumber-results.xml", "json:target/cucumber-results/cucumber.json"},
        features = { "src/test/Features/EpisodeConnect/EcDashBoardTest.feature"},
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

                CucumberCoverageReport testReportFinal = new CucumberCoverageReport();

               testReportFinal.generateFeatureOverviewReport();
                testReportFinal.testGenerateDetailedAggregatedReport();
                testReportFinal.generateCoverageOverviewReport();




        }





}

package runnerClass;

import io.cucumber.junit.Cucumber;
import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.junit.runner.RunWith;
import org.testng.annotations.DataProvider;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src\\test\\resources\\Features\\firstFeature",
        glue = {"steps"},
        plugin = { "pretty" , "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"})

public class DemoRunner extends AbstractTestNGCucumberTests
{
    @DataProvider(parallel = true)
    public Object[][] scenario()
    {
        return super.scenarios();
    }
}
package runnerClass;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src\\test\\resources\\Features",
        glue = {"steps"},
        plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        tags = "@create")

public class DemoRunner /*extends AbstractTestNGCucumberTests*/ {
   /* @DataProvider(parallel = true)
    public Object[][] scenario()
    {
        return super.scenarios();
    }*/
}
package steps;

import base.BaseClass;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.Duration;
import java.util.Properties;

/**
 * @author Ajeet Vishwakarma
 * @created 17/11/2022 - 10:43 AM
 */

public class Hooks extends BaseClass {
    @After
    public static void tearDown(Scenario scenario) {
        if (scenario.isFailed() || (scenario.getStatus().toString().equals("SKIPPED"))) {
            final byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
        }
        driver.quit();
    }

    @Before
    public void setUp() throws IOException {
        String propertyFile = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "application.properties";
        prop = new Properties();
        FileInputStream fis = new FileInputStream(propertyFile);

        prop.load(fis);
        String browserName = prop.getProperty("browser");
        switch (browserName) {
            case "chrome":
                driver = WebDriverManager.chromedriver().create();
                break;
            case "firefox":
                driver = WebDriverManager.firefoxdriver().create();
                break;
            case "IE":
                driver = WebDriverManager.iedriver().create();
                break;
        }
        driver.manage().window().maximize();
        driver.get(prop.getProperty("UAT_URL"));
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
//        Thread.sleep(3000);
    }


}


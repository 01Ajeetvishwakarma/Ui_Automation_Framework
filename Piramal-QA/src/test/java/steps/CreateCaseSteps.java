package steps;

import action.CreateCaseActions;
import base.ReadJson;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;

/**
 * @author Ajeet Vishwakarma
 * @Date 23/12/2022 - 11:30 AM
 */
public class CreateCaseSteps {

    CreateCaseActions caseActions = new CreateCaseActions();
    ReadJson readJson = new ReadJson();

    @Given("user click on the {string} button")
    public void userClickOnButton(String button) throws InterruptedException {
        String element = readJson.readXpathFromJson(button);
        caseActions.clickOnButton(element);
    }

    @And("user enter {string} in {string}")
    public void userEnterText(String value, String path) throws InterruptedException {
        String element = readJson.readXpathFromJson(path);
        caseActions.enterValue(value, element);
    }

    @And("user select {string} from list {string}")
    public void selectValue(String value, String path) {
        String element = readJson.readXpathFromJson(path);
        caseActions.selectValue(value, element);
    }

    @And("user should able to see {string} on {string}")
    public void userAbleTOSeeMessage(String message, String path) {
        String element = readJson.readXpathFromJson(path);
        caseActions.ableToSeeMessage(message, element);
    }

    @And("user enter random {string} in {string}")
    public void enterRandomValue(String value, String path) throws InterruptedException {
        String element = readJson.readXpathFromJson(path);
        caseActions.randomValue(value, element);
    }

    @And("user scroll down")
    public void scrollDown() {
        caseActions.scrollDown();
    }

    @And("user should able to see {string} and {string}")
    public void getTitle(String value, String path) throws InterruptedException {
        String element = readJson.readXpathFromJson(path);
        caseActions.getTitle(value, element);
    }

    @And("user enter the date {string} in {string}")
    public void userEnterTheDateIn(String enterDate, String locator) {
        String element = readJson.readXpathFromJson(locator);
        caseActions.userEnterDate(enterDate, element);
    }

    @And("user scroll down page by {string} pixel")
    public void scrollDownPage(String pixel) throws InterruptedException {
        caseActions.scrollDownBy(pixel);
    }


}

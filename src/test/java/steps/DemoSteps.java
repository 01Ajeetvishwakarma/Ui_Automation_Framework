package steps;


import action.DemoActions;
import base.BaseClass;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;

/**
 * @author Ajeet Vishwakarma
 * 11/16/2022
 */
public class DemoSteps extends BaseClass {

    DemoActions demoActions = new DemoActions();

    @Given("^user enter username \"(.*)\"$")
    public void userEnterUserName(String name)
    {
        demoActions.userEnterUserName(name);
    }

    @And("^user enter password \"(.*)\"$")
    public void userEnterPassword(String password)
    {
        demoActions.enterPassword(password);
    }

}

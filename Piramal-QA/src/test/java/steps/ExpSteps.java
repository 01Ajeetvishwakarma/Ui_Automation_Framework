package steps;

import action.ExpActions;
import io.cucumber.java.en.Given;

/**
 * @author Ajeet Vishwakarma
 * @Date 09/02/2023 - 10:41 AM
 */
public class ExpSteps {

    ExpActions expActions = new ExpActions();

    @Given("total links and broken links")
    public void totalAndBrokenLinks()
    {
        expActions.brokenLinks();
    }

}

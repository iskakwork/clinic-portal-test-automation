package steps.api;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import utils.ApiUtils;

public class UserAPISteps extends ApiUtils {

    @When("user hits GET {string}")
    public void user_hits_get(String endPoint) {
        response = request.get(endPoint);
    }

    @Given("{string} has invalid authorization")
    public void has_invalid_authorization(String userType) {
        request = request.header("Authorization", "Bearer " + getToken(userType));
    }

    @Given("user has invalid authorization")
    public void userHasInvalidAuthorization() {
        request = request.header("Authorization", "Bearer invalidTokenihasdhfjhadfhjdfav");
    }
}

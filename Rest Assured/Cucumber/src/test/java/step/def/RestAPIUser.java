package step.def;

import static org.junit.Assert.assertEquals;

import java.net.URI;
import java.net.URISyntaxException;

import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class RestAPIUser {
	
	private static final String BASE_URL = "https://jsonplaceholder.typicode.com/";
	private Response response;
	@SuppressWarnings("unused")
	private Scenario scenario;
	
	@Before
	public void before(Scenario scenario) {
		this.scenario = scenario;
	}
	
	@Given("Get call {string}")
	public void getCallUrl(String url) throws URISyntaxException {
		RestAssured.baseURI = BASE_URL;
		RequestSpecification requestSpecification = RestAssured.given();
		response = requestSpecification.when().get(new URI(url));
	}
	
	@Then("Response is {string}")
	public void responseIsStatusCode(String statusCode) {
		int actualResponseCode = response.then().extract().statusCode();
		assertEquals(statusCode, String.valueOf(actualResponseCode));
	}
	
	@Then("Response user is {string}")
	public void responseUserIsUseName(String userName) {
		String actualUser = response.then().extract().path("username");
		assertEquals(userName, actualUser);
	}
	
	@Then("Response post is {string}")
	public void responsePostIsPostOfSamantha(String post) {
		String actualPost = response.then().extract().path("title");
		assertEquals(post, actualPost);
	}

}

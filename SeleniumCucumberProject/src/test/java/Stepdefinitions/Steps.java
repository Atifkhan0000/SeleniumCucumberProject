package Stepdefinitions;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.chrome.ChromeDriver;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;

public class Steps extends Baseclass {

	@Before
	public void setup () throws IOException {
		
		// Reading properties
		configprop=new Properties();
		FileInputStream configPropfile=new FileInputStream("Config.properties");
		configprop.load(configPropfile);
		
		System.setProperty("webdriver.chrome.driver",configprop.getProperty("chromepath"));
		driver= new ChromeDriver();
		
		logger= Logger.getLogger("nopCommerce");     // Added logger
		PropertyConfigurator.configure("log4j.properties");     //Added logger
		logger.info("*********Launching browser**********");
		
	} 
	
	
@Given("^User launch chrome browser$")
public void user_launch_chrome_browser() throws Throwable {
	
}

@When("User opens URL{String}")
public void user_opens_URL(String arg1) throws Throwable {
	
}

@When("^User enters Email as \"([^\"]*)\" and Password as \"([^\"]*)\"$")
public void user_enters_Email_as_and_Password_as(String arg1, String arg2) throws Throwable {
	
}

@When("^click on login$")
public void click_on_login() throws Throwable {
	
}

@Then("^page title should be \"([^\"]*)\"$")
public void page_title_should_be(String arg1) throws Throwable {
	
}

@When("^User click on logout link$")
public void user_click_on_logout_link() throws Throwable {
	
}

@Then("^close browser$")
public void close_browser() throws Throwable {
	
}

}

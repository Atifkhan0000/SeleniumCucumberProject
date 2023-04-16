package testRunner;

import org.junit.runner.RunWith;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
features ="C://Users//Compaq//eclipse-workspace//SeleniumCucumberProject//Features//Login.feature",
glue ="Stepdefinitions",
dryRun =true,    //har step ke liye method h ya nhi ye check krna //  // dryRun =false (sb chlaane le liye) 
monochrome =true,  // output ko clear print krana console window mein // 
plugin = {"pretty",  //output ko clear print krana console window m aur report bnana html format m test-output folder m//
        "html:test-output"},
tags= "@office"     // isse @office tag ke ander ka scenario hi chalenge bus // to run two tags write "@office and @name"

)

public class testRun {

}



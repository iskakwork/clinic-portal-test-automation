# Codewise Clinic Portal – Test Automation Framework

## Overview

This project is a Test Automation Framework built using Java, Selenium WebDriver, Cucumber (BDD), and JUnit.

It automates UI testing for the Codewise Clinic Portal web application.

## Framework Design
* Page Object Model (POM)
* Behavior Driven Development (BDD)
This ensures tests are readable, maintainable, and scalable.

**Application Under Test:**
https://codewise-clinic-portal.lovable.app/login

------------------------------------------------------------------------------------------------------------

## Tech Stack

* Java
* Selenium WebDriver
* Cucumber (BDD)
* JUnit
* Maven
* WebDriverManager

------------------------------------------------------------------------------------------------------------

## Project Structure

```
src
 └── test
     ├── java
     │   ├── runners
     │   │   └── TestRunner.java
     │   ├── stepdefinitions
     │   │   └── LoginSteps.java
     │   ├── pages
     │   │   └── LoginPage.java
     │   └── utils
     │       └── Driver.java
     └── resources
         └── features
             └── login.feature
```

---

## Test Approach

The framework uses Behavior Driven Development (BDD) with Cucumber.

### Example Scenario

```
Feature: Login functionality

Scenario: User logs into the clinic portal
  Given user is on login page
  When user enters valid email and password
  And user clicks login button
  Then user should see dashboard
```

---

## Running Tests

Run tests using:

**Cucumber Test Runner:**
`TestRunner.java`

**Or via Maven:**

```
mvn test
```

---

## Test Reports

After execution, a report is generated at:

```
target/cucumber-report.html
```

The report includes:

* Test results
* Passed and failed scenarios
* Execution details

---

## Framework Features

* Page Object Model design
* Cucumber BDD implementation
* Selenium WebDriver UI automation
* Maven dependency management
* Scalable and maintainable structure

---

## Future Improvements

* Add Hooks (Before/After scenarios)
* Implement ConfigReader
* Add reusable wait utilities
* Capture screenshots on failure
* Integrate Extent Reports
* Enable parallel execution

---

## Author

Automation QA Engineer
Java | Selenium | Cucumber | Test Automation

# TestCodes\login_page.robot
*** Settings ***
# General documentation for this test suite
Documentation    Test cases for the login page of the SauceDemo website.

# Libraries used in this test suite
Library          SeleniumLibrary
Library          Collections
Library          String

# Setup actions before the test
Test Setup       Open Webpage URL    ${browser_name}    ${webpage_url}

# Teardown actions after the test
Test Teardown    Close The Browser

# Variables files for locators and test data
Variables        ../Resources/PageObject/Locators/test_locators.py
Variables        ../Resources/PageObject/TestData/test_data.py

# Resource files for additional keyword definitions
Resource         ../Resources/PageObject/KeywordDefinitionFiles/generic.robot
Resource         ../Resources/PageObject/KeywordDefinitionFiles/loginpage.robot

*** Test Cases ***
# Test case to validate the error message for an invalid login attempt
Validate the Invalid Login Error Message
    [Tags]    ERRORMESSAGES
    Enter User Credentials And Login    ${invalid_username}    ${invalid_password}
    Verify Notification Message    ${login_error_element}    ${invalid_login_error_message}

# Test case to validate the error message when the username field is left blank
Validate the Blank Username Login Error Message
    [Tags]    ERRORMESSAGES
    Enter User Credentials And Login    ${blank_field}    ${valid_password}
    Verify Notification Message    ${login_error_element}    ${blank_user_error_message}

# Test case to validate the error message when the password field is left blank
Validate the Blank Password Login Error Message
    [Tags]    ERRORMESSAGES
    Enter User Credentials And Login    ${valid_username}    ${blank_field}
    Verify Notification Message    ${login_error_element}    ${blank_password_error_message}


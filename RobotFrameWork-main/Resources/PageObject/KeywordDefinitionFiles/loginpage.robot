# Resources\PageObject\KeywordDefinitionFiles\loginpage.robot
*** Settings ***
# General documentation for this file
Documentation    This file contains detailed keyword definitions specifically designed for testing the various features of the login page on the SauceDemo website.

# Libraries used in this file
Library          SeleniumLibrary
Library          Collections
Library          String

# Variables files for locators and test data
Variables        ../Locators/test_locators.py
Variables        ../TestData/test_data.py

# Resource files for additional keyword definitions
Resource         ../KeywordDefinitionFiles/generic.robot

*** Keywords ***
# Keyword to log into the webpage
Login Into The Webpage
    # Enter user credentials and login
    Enter User Credentials And Login   ${valid_username}    ${valid_password}
    # Verify that the login was successful by checking the home page URL
    Verify HomePage Login

# Keyword to enter user credentials and login
Enter User Credentials And Login
    [arguments]    ${username}    ${password}
    # Verify that the logo text is present on the login page
    Page Should Contain    ${logo_text}
    # Enter the username into the email input field
    Input Text    ${email_input}    ${username}
    # Enter the password into the password input field
    Input Password    ${password_input}    ${password}
    # Click the login button to submit the form
    Click Button    ${login_button}

# Keyword to verify that the home page login was successful
Verify HomePage Login
    # Verify that the current URL matches the expected inventory page URL
    Location Should Be    ${inventory_page_url}

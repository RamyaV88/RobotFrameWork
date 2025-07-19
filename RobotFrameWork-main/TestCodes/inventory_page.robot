# TestCodes\inventory_page.robot
*** Settings ***
# General documentation for this test suite
Documentation    Test cases for the inventory page of the SauceDemo website.

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
Resource         ../Resources/PageObject/KeywordDefinitionFiles/inventorypage.robot

*** Test Cases ***
# Test case to validate the footer items
Validate Footer Items
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Check the footer widget links
    Check Footer Widget Links

# Test case to validate the footer message
Validate Footer Message
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Verify the notification message in the footer
    Verify Notification Message    ${footer_element}    ${footer_message}

# Test case to validate sort operations
Validate Sort Operations
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Select sort option A-Z and check product order
    Select Sort Option    0
    Check The Products Order A-Z
    # Select sort option Z-A and check product order
    Select Sort Option    1
    Check The Products Order Z-A
    # Select sort option Low to High and check product order
    Select Sort Option    2
    Check The Products Order Low To High
    # Select sort option High to Low and check product order
    Select Sort Option    3
    Check The Products Order High To Low

# Test case to validate successful logout
Validate Successful Logout
    [Tags]    SMOKE
    # Login to the webpage
    Login Into The Webpage
    # Logout of the webpage
    Logout of the Webpage

# Test case to validate the About option
Validate About Option
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Verify the About tab
    Verify About Tab

# Test case to validate Reset App State option
Validate Reset App State Option
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Reset the webpage
    Reset App Webpage
    # Verify the reset of the webpage
    Verify Reset Of Webpage

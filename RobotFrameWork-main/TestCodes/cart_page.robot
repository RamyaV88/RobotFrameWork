# TestCodes\cart_page.robot
*** Settings ***
# General documentation for this test suite
Documentation    Test cases for the cart page of the SauceDemo website.

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
Resource         ../Resources/PageObject/KeywordDefinitionFiles/cartpage.robot

*** Test Cases ***
# Test case to validate adding an item to the cart
Validate Add Item To Cart
    [Tags]    SMOKE    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Verify the items in the cart
    Verify Items In Cart    ${cart_list}

# Test case to validate removing an item from the cart
Validate Remove Item From Cart
    [Tags]    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Remove items from the cart
    Remove Items From Cart    ${remove_list}

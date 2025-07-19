# TestCodes\checkout_page.robot
*** Settings ***
# General documentation for this test suite
Documentation    Test cases for the checkout page of the SauceDemo website.

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
Resource         ../Resources/PageObject/KeywordDefinitionFiles/checkoutpage.robot

*** Test Cases ***
# Test case to validate the checkout process of products
Validate Checkout Of Products
    [Tags]    SMOKE    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Go to the checkout details page
    Go To Checkout Details
    # Add checkout details
    Add Checkout Details
    # Go to the checkout overview page
    Go To Checkout Overview
    # Complete the order
    Complete Order
    # Verify the checkout message
    Verify Checkout Message

# Test case to validate the item total during checkout
Validate Item Total Of Cart
    [Tags]    SMOKE    REGRESSION
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Go to the checkout details page
    Go To Checkout Details
    # Add checkout details
    Add Checkout Details
    # Go to the checkout overview page
    Go To Checkout Overview
    # Verify the item total
    Verify Item Total

# Test case to validate error messages in checkout details
Validate Checkout Details Error Messages
    [Tags]    ERRORMESSAGES
    # Login to the webpage
    Login Into The Webpage
    # Add items to the cart
    Add Items To Cart    ${cart_list}
    # Go to the cart page
    Go To Cart
    # Go to the checkout details page
    Go To Checkout Details
    # Verify error messages in checkout details
    Verify Checkout Error Messages

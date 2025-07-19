# Resources\PageObject\KeywordDefinitionFiles\generic.robot
*** Settings ***
# General documentation for this file
Documentation    This file contains detailed keyword definitions specifically designed for testing the various common features on the SauceDemo website.

# Libraries used in this file
Library          SeleniumLibrary
Library          Collections
Library          String

# Variables files for locators and test data
Variables        ../Locators/test_locators.py
Variables        ../TestData/test_data.py

*** Keywords ***
# Keyword to open a webpage URL
Open Webpage URL
    [arguments]    ${browser}    ${url}
    # Create a new WebDriver instance for the specified browser
    Create Webdriver    ${browser}    C:\webdriver_manager
    # Maximize the browser window
    Maximize Browser Window
    # Navigate to the specified URL
    Go To    ${url}

# Keyword to close the browser
Close The Browser
    # Close the browser window
    Close Browser

# Keyword to verify a notification message on the page
Verify Notification Message
    [arguments]    ${element}    ${notification_text}
    # Wait until the specified element is visible on the page
    Wait Until Element Is Visible    ${element}
    # Verify that the page contains the specified notification text
    Page Should Contain    ${notification_text}

# Keyword to navigate to a webpage
Navigate To WebPage
    [arguments]    ${location}    ${url}
    # Click the button or link at the specified location
    Click Button    ${location}
    # Verify that the current URL matches the expected URL
    Location Should Be    ${url}

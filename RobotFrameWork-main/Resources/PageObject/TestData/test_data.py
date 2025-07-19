"""
test_data.py contains all the data for the project.
"""

# Booting URL Data
browser_name = "Firefox"
webpage_url = "https://www.saucedemo.com/"

# User Credentials
valid_username = "standard_user"
valid_password = "secret_sauce"
placebo_username = "placebo_username"
placebo_password = "placebo_password"
invalid_username = "invalid_user"
invalid_password = "no_entry"
blank_field = ""
first_name = "Jane"
last_name = "Doe"
postal_code = "01074"

# WebPage Data
inventory_page_url = "https://www.saucedemo.com/inventory.html"
about_url = "https://saucelabs.com/"
cart_page_url = "https://www.saucedemo.com/cart.html"
checkout_page_url = ["https://www.saucedemo.com/checkout-step-one.html", "https://www.saucedemo.com/checkout-step-two.html"]
checkout_complete_page_url = "https://www.saucedemo.com/checkout-complete.html"
widget_urls = ["https://x.com/saucelabs", "https://www.facebook.com/saucelabs", "https://www.linkedin.com/company/sauce-labs/"]

# WebPage Errors And Messages
logo_text = "Swag Labs"
invalid_login_error_message = "Epic sadface: Username and password do not match any user in this service"
blank_user_error_message = "Epic sadface: Username is required"
blank_password_error_message = "Epic sadface: Password is required"
footer_message = "© 2025 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy"
checkout_message = ["Thank you for your order!", "Your order has been dispatched, and will arrive just as fast as the pony can get there!"]
checkout_first_mame_error_message = "Error: First Name is required"
checkout_last_mame_error_message = "Error: Last Name is required"
checkout_postal_code_error_message = "Error: Postal Code is required"

# WebPage Items Data
inventory_items = {"Sauce Labs Backpack" : "css:button#add-to-cart-sauce-labs-backpack",
                   "Sauce Labs Bike Light" : "css:button#remove-sauce-labs-bike-light",
                   "Sauce Labs Bolt T-Shirt" : "css:button#add-to-cart-sauce-labs-bolt-t-shirt",
                   "Sauce Labs Fleece Jacket" : "css:button#add-to-cart-sauce-labs-fleece-jacket",
                   "Sauce Labs Onesie" : "css:button#add-to-cart-sauce-labs-onesie",
                   "Test.allTheThings() T-Shirt (Red)" : "id:add-to-cart-test.allthethings()-t-shirt-(red)"}
inventory_prices = {29.99: ["Sauce Labs Backpack"],
                    9.99: ["Sauce Labs Bike Light"],
                    15.99: ["Sauce Labs Bolt T-Shirt", "Test.allTheThings() T-Shirt (Red)"],
                    49.99: ["Sauce Labs Fleece Jacket"],
                    7.99: ["Sauce Labs Onesie"]}
items_remove_button = {"Sauce Labs Backpack" : "css:button#remove-sauce-labs-backpack",
                   "Sauce Labs Bike Light" : "css:button#remove-sauce-labs-bike-light",
                   "Sauce Labs Bolt T-Shirt" : "css:button#remove-sauce-labs-bolt-t-shirt",
                   "Sauce Labs Fleece Jacket" : "css:button#remove-sauce-labs-fleece-jacket",
                   "Sauce Labs Onesie" : "css:button#remove-sauce-labs-onesie",
                   "Test.allTheThings() T-Shirt (Red)" : "id:remove-test.allthethings()-t-shirt-(red)"}
cart_list = ["Sauce Labs Backpack", "Sauce Labs Fleece Jacket", "Sauce Labs Onesie"]
remove_list = ["Sauce Labs Fleece Jacket"]







"""
test_locators.py contains all the locators for the project.
"""

#LoginPage Locators
email_input = "css:#user-name"
password_input = "css:#password"
login_button = "id:login-button"
login_error_element = "css:h3"

#InventoryPage Locators
menu_button = "css:#react-burger-menu-btn"
logout_button = "css:a#logout_sidebar_link"
cart_button = "css:a.shopping_cart_link"
about_button = "css:a#about_sidebar_link"
cart_badge = "css:span.shopping_cart_badge"
reset_button = "css:a#reset_sidebar_link"
products_sort_locator = "css:select.product_sort_container"
footer_widgets = "xpath://ul[@class='social']/li"
footer_element = "css:div.footer_copy"

#CartPage Locators
itemList_locator = "css:div.inventory_item_name"
itemPrice_locator = "css:div.inventory_item_price"
remove_button = "css:.btn.btn_secondary.btn_small.cart_button"
total_locator = "css:div.summary_total_label"

#CheckoutPage Locators
checkout_button = "css:button#checkout"
finish_button = "css:button#finish"
firstname_input = "css:input#first-name"
lastname_input = "css:input#last-name"
postalcode_input = "css:input#postal-code"
continue_button = "css:input#continue"
home_button = "css:button#back-to-products"
checkout_element = "css:h2.complete-header"

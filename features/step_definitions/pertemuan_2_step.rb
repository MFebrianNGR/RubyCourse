When('I enter username as {string} on the login page') do |username|
  find(:xpath, "//input[@id='user-name']").set(username)
end

When('I enter password as {string} on the login page') do |password|
  find(:xpath, "//input[@id='password']").set(password)
end

When('I click the login button on the login page') do
  find(:xpath, "//input[@id='login-button']").click
end

When('I click the add to cart button for the product {string} on the inventory page') do |product_name|
  find(:xpath, "//*[@id='add-to-cart-sauce-labs-backpack']").click
end

Then('I can see remove button for the product {string} on the inventory page') do |product_name|
  selector = "//*[@id='remove-sauce-labs-backpack']"
  find(:xpath, selector).should be_visible
  sleep 4
end

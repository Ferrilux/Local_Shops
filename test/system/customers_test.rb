require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Address 1", with: @customer.Address_1
    fill_in "Address 2", with: @customer.Address_2
    fill_in "City", with: @customer.City
    fill_in "Customer", with: @customer.Customer_id
    fill_in "First name", with: @customer.First_Name
    fill_in "Last name", with: @customer.Last_Name
    fill_in "Phone", with: @customer.Phone
    fill_in "Postal code", with: @customer.Postal_Code
    fill_in "User", with: @customer.User_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Address 1", with: @customer.Address_1
    fill_in "Address 2", with: @customer.Address_2
    fill_in "City", with: @customer.City
    fill_in "Customer", with: @customer.Customer_id
    fill_in "First name", with: @customer.First_Name
    fill_in "Last name", with: @customer.Last_Name
    fill_in "Phone", with: @customer.Phone
    fill_in "Postal code", with: @customer.Postal_Code
    fill_in "User", with: @customer.User_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end

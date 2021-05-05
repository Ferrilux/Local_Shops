require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { Address_1: @customer.Address_1, Address_2: @customer.Address_2, City: @customer.City, Customer_id: @customer.Customer_id, First_Name: @customer.First_Name, Last_Name: @customer.Last_Name, Phone: @customer.Phone, Postal_Code: @customer.Postal_Code, User_id: @customer.User_id } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { Address_1: @customer.Address_1, Address_2: @customer.Address_2, City: @customer.City, Customer_id: @customer.Customer_id, First_Name: @customer.First_Name, Last_Name: @customer.Last_Name, Phone: @customer.Phone, Postal_Code: @customer.Postal_Code, User_id: @customer.User_id } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end

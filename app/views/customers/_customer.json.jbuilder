json.extract! customer, :id, :Customer_id, :User_id, :First_Name, :Last_Name, :Phone, :Address_1, :Address_2, :City, :Postal_Code, :created_at, :updated_at
json.url customer_url(customer, format: :json)

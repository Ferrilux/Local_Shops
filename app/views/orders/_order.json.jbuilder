json.extract! order, :id, :Order_id, :Customer_id, :Payment_id, :Order_Date, :Status, :Comments, :created_at, :updated_at
json.url order_url(order, format: :json)

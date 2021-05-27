json.orders current_customer.orders do |order|
  json.Order_id order.Order_id
  json.Order_Date order.Order_Date
  json.Status order.Status
end
json.extract! product, :id, :Product_id, :Supplier_id, :Name, :Qty_in_Stock, :Buy_Price, :Description, :created_at, :updated_at
json.url product_url(product, format: :json)
